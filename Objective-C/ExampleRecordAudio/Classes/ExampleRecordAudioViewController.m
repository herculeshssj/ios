//
//  ExampleRecordAudioViewController.m
//  ExampleRecordAudio
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleRecordAudioViewController.h"

@implementation ExampleRecordAudioViewController
@synthesize  playButton,stopButton,recordButton;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];

    playButton.enabled = NO;
    stopButton.enabled = NO;
    
    NSArray *dirPaths;
    NSString *docDir;
    
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docDir = [dirPaths objectAtIndex:0];
    
    NSString *soundFilePath  = [docDir stringByAppendingPathComponent:@"sound.wav"];
    
    NSURL *soundFileURL = [ NSURL fileURLWithPath:soundFilePath];
    
    
    NSDictionary *recordSettings = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [NSNumber numberWithFloat:32000.0], AVSampleRateKey,
                                    [NSNumber numberWithInt:kAudioFormatLinearPCM], AVFormatIDKey,
                                    [NSNumber numberWithInt:1],
                                    AVNumberOfChannelsKey,
                                    [NSNumber numberWithInt:AVAudioQualityMedium],
                                    AVEncoderAudioQualityKey,nil];
                                    
                                    
    NSError *error =  nil;
    
    
    audioRecorder = [[AVAudioRecorder alloc] 
                     initWithURL:soundFileURL settings:recordSettings error:&error];
    
    if(error)
    {
        NSLog(@"Error: %@", [error localizedDescription]);
        
    }
    else
    {
        [audioRecorder prepareToRecord];
    }
        
}


- (IBAction)Record:(id)sender 
{
    if(!audioRecorder.recording)
    {
        playButton.enabled = NO;
        stopButton.enabled = YES;
        [audioRecorder record];
        
        
    }

}

- (IBAction)Play:(id)sender 
{
    if(!audioRecorder.recording)
    {
        stopButton.enabled = YES;
        recordButton.enabled = NO;
        
        if(audioPlayer)
            [audioPlayer release];
        
        
        NSError *error;
        
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioRecorder.url error:&error];
        
        audioPlayer.delegate = self;
        
        if(error)
            NSLog(@"Error: %@", [error localizedDescription]);
        else
            [audioPlayer play];
        
        
    }
}

- (IBAction)Stop:(id)sender 
{

    stopButton.enabled = NO;
    playButton.enabled = YES;
    recordButton.enabled = YES;
    
    
    if(audioRecorder.recording)
    {
        [audioRecorder stop];
        
    }
    else if(audioPlayer.playing)
    {
        [audioPlayer stop];
    }
    

}


-(void) audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    recordButton.enabled = YES;
    stopButton.enabled = NO;
    
}


-(void) audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error
{
    
}

-(void) audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag
{
    
    
}

-(void) audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError *)error
{
    
}





/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [recordButton release];
    [playButton release];
    [stopButton release];
    [super dealloc];
}

@end
