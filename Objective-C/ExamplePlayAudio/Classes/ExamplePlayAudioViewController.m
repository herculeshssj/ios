//
//  ExamplePlayAudioViewController.m
//  ExamplePlayAudio
//
//  Created by user on 3/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExamplePlayAudioViewController.h"

@implementation ExamplePlayAudioViewController
@synthesize volumeControl;

- (IBAction)Play:(id)sender 
{
    [audioPlayer play];
}

- (IBAction)Stop:(id)sender 
{
    [audioPlayer stop];
}

- (IBAction)adjustVolume:(id)sender {

    if(audioPlayer != nil)
    {
        audioPlayer.volume = volumeControl.value;
    }

}


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

    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"music" ofType:@"mp3"]];
    
    
    NSError *error;
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    if(error)
    {
        NSLog(@"Error in audio player: %@", [error localizedDescription]);
    }
    else
    {
        audioPlayer.delegate = self;
        [audioPlayer prepareToPlay];
    }
                   

}

-(void) audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    
}


-(void) audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error
{
        
}


-(void) audioPlayerBeginInterruption:(AVAudioPlayer *)player
{
    
}

-(void) audioPlayerEndInterruption:(AVAudioPlayer *)player
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
    [volumeControl release];
    [super dealloc];
}

@end
