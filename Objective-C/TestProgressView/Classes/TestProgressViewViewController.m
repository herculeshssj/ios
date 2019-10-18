//
//  TestProgressViewViewController.m
//  TestProgressView
//
//  Created by user on 9/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TestProgressViewViewController.h"

@implementation TestProgressViewViewController

- (IBAction)clickProgress:(id)sender 
{

    threadView.progress = 0.9;

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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    [self performSelectorOnMainThread:@selector(makeMyProgressBarMove) withObject:nil waitUntilDone:NO];    
    
}

- (void) makeMyProgressBarMove
{
    float actual = [threadView progress];  
    
    
    if(actual < 1)
    {
        threadView.progress = actual + 0.01;
        
        [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(makeMyProgressBarMove) userInfo:nil repeats:NO];
                
    }
        
        
        
        
    
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
    [threadView release];
    [super dealloc];
}

@end
