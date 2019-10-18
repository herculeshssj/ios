//
//  ExampleAnimationViewController.m
//  ExampleAnimation
//
//  Created by user on 1/17/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleAnimationViewController.h"

@implementation ExampleAnimationViewController
@synthesize top,botton;


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

- (void) viewDidAppear:(BOOL)animated
{
    CGRect basketTop = self.top.frame;
    basketTop.origin.y = -basketTop.size.height;
    
    CGRect basketBotton = self.botton.frame;
    basketBotton.origin.y = self.view.bounds.size.height;
    
    
    [UIView animateWithDuration:0.9 delay:1.0 options:UIViewAnimationCurveEaseOut 
                     animations:^
     {
         self.top.frame = basketTop;
         self.botton.frame = basketBotton;
   
     }
                     completion:^ (BOOL finished)
     {
         NSLog(@"Done!");
     }
     ];
    
    /*
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelay:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    self.top.frame = basketTop;
    self.botton.frame = basketBotton;
    
    [UIView commitAnimations];
    */
    
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
    [top release];
    [botton release];
    [super dealloc];
}

@end
