//
//  ExampleUIScrollViewViewController.m
//  ExampleUIScrollView
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleUIScrollViewViewController.h"

@implementation ExampleUIScrollViewViewController
@synthesize MyScrollView,MyImageView;


- (UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return MyImageView;   
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
    
    UIImageView *tempImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed: @"DevMediaPromoter.jpg"]];
    
    self.MyImageView = tempImg;
    
    [tempImg release];
    
    CGSizeMake(MyImageView.frame.size.width, MyImageView.frame.size.height);
    
    MyScrollView.maximumZoomScale = 4.0;
    MyScrollView.minimumZoomScale = 0.25;
    
    MyScrollView.clipsToBounds = YES;
    MyScrollView.delegate = self;
    
    [MyScrollView addSubview:MyImageView];
    
        
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
    [MyScrollView release];
    [MyImageView release];
    [super dealloc];
}

@end
