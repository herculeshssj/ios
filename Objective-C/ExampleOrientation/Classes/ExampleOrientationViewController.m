//
//  ExampleOrientationViewController.m
//  ExampleOrientation
//
//  Created by user on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleOrientationViewController.h"

@implementation ExampleOrientationViewController
@synthesize first;
@synthesize second;



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

-(void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if(toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft)
    {
        first.frame = CGRectMake(20, 10, 210, 260);
        second.frame = CGRectMake(250, 20, 210, 260);
        
        
    }
    else
    {
        first.frame = CGRectMake(20, 20, 280, 205);
        second.frame = CGRectMake(20, 233, 280, 207);
        
        
    }
    
    
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    // return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
    return YES;
    
}


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
  
    
    [super dealloc];
}

@end
