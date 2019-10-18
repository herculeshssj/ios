//
//  ExampleTouchesViewController.m
//  ExampleTouches
//
//  Created by user on 1/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleTouchesViewController.h"

@implementation ExampleTouchesViewController
@synthesize method, ts, taps;


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSUInteger touchCount = [touches count];
    NSUInteger tapCount = [[touches anyObject] tapCount];
    
    method.text = @"touchesBegan";
    ts.text = [NSString stringWithFormat:@"%d touches", touchCount];
    
    taps.text = [NSString stringWithFormat:@"%d taps", tapCount];
    
    
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    NSUInteger touchCount = [touches count];
    NSUInteger tapCount = [[touches anyObject] tapCount];
    
    method.text = @"touchesMoved";
    ts.text = [NSString stringWithFormat:@"%d touches", touchCount];
    
    taps.text = [NSString stringWithFormat:@"%d taps", tapCount];
    
    
    // Get only the first touch
    //UITouch *myFirstTouch = [[[event allTouches] anyObject] objectAtIndex:0];
    
    
    UITouch *myTouch = [[event allTouches] anyObject];
    
    CGPoint l = [myTouch locationInView:myTouch.view];
    
    NSLog(@"x: %f y: %f", l.x, l.y);
    
}


-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
 
    NSUInteger touchCount = [touches count];
    NSUInteger tapCount = [[touches anyObject] tapCount];
    
    method.text = @"touchesEnded";
    ts.text = [NSString stringWithFormat:@"%d touches", touchCount];
    
    taps.text = [NSString stringWithFormat:@"%d taps", tapCount];
    
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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
    [method release];
    [ts release];
    [taps release];
    [super dealloc];
}

@end
