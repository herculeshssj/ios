//
//  ExampleGesturesViewController.m
//  ExampleGestures
//
//  Created by user on 1/15/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleGesturesViewController.h"

@implementation ExampleGesturesViewController
@synthesize statusLabel;


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

    UISwipeGestureRecognizer *swipeRecognizer = 
    [[UISwipeGestureRecognizer alloc]
     initWithTarget:self 
     action:@selector(swipeDetected:)];
    
    swipeRecognizer.direction  = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRecognizer];
    
    [swipeRecognizer release];
    
    UITapGestureRecognizer *doubleTap = 
    [[UITapGestureRecognizer alloc]
     initWithTarget:self 
     action:@selector(tapDetected:)];
    
    doubleTap.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:doubleTap];
    [doubleTap release];
    
    UIPinchGestureRecognizer *pinchRecognizer = 
    [[UIPinchGestureRecognizer alloc]
     initWithTarget:self 
     action:@selector(pinchDetected:)];
    
    [self.view addGestureRecognizer:pinchRecognizer];
    [pinchRecognizer release];
    
    UIRotationGestureRecognizer *rotationRecognizer =
    [[UIRotationGestureRecognizer alloc]
     initWithTarget:self 
     action:@selector(rotationDetected:)];
    
    [self.view addGestureRecognizer:rotationRecognizer];
    [rotationRecognizer release];
    
       
    UILongPressGestureRecognizer *longPressRecognizer = 
    [[UILongPressGestureRecognizer alloc]
     initWithTarget:self 
     action:@selector(longPressDetected:)];
    
    longPressRecognizer.minimumPressDuration = 3;
    longPressRecognizer.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:longPressRecognizer];
    [longPressRecognizer release];
    
    
    
    [super viewDidLoad];
}

-(IBAction)swipeDetected:(UIGestureRecognizer *) sender
{
    statusLabel.text = @"Right Swipe";
}



- (IBAction)longPressDetected:(UIGestureRecognizer *)sender {
    statusLabel.text = @"Long Press";
}


- (IBAction)tapDetected:(UIGestureRecognizer *)sender {
    statusLabel.text = @"Double Tap";
}

- (IBAction)pinchDetected:(UIGestureRecognizer *)sender {
    
    CGFloat scale = 
    [(UIPinchGestureRecognizer *)sender scale];
    CGFloat velocity = 
    [(UIPinchGestureRecognizer *)sender velocity];
    
    NSString *resultString = [[NSString alloc] initWithFormat:
                              @"Pinch - scale = %f, velocity = %f",
                              scale, velocity];
    statusLabel.text = resultString;
    [resultString release];
}

- (IBAction)rotationDetected:(UIGestureRecognizer *)sender {
    CGFloat radians = 
    [(UIRotationGestureRecognizer *)sender rotation];
    CGFloat velocity = 
    [(UIRotationGestureRecognizer *)sender velocity];
    
    NSString *resultString = [[NSString alloc] initWithFormat:
                              @"Rotation - Radians = %f, velocity = %f",
                              radians, velocity];
    statusLabel.text = resultString;
    [resultString release];
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
    [statusLabel release];
    [super dealloc];
}

@end
