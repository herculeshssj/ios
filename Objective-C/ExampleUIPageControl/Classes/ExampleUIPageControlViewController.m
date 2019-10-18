//
//  ExampleUIPageControlViewController.m
//  ExampleUIPageControl
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleUIPageControlViewController.h"

@implementation ExampleUIPageControlViewController

@synthesize MyScrollView;


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
    
    NSArray *colors = [NSArray arrayWithObjects:
                       [UIColor redColor],
                       [UIColor greenColor],
                       [UIColor blueColor] , nil];
    
    for(int i = 0; i < colors.count; i++)
    {
        CGRect frame;
        frame.origin.x = self.MyScrollView.frame.size.width*i;
        frame.origin.y = 0;
        frame.size = self.MyScrollView.frame.size;
        
        
        UIView *subView = [[UIView alloc] initWithFrame:frame];
        subView.backgroundColor = [colors objectAtIndex:i];
        
        [self.MyScrollView addSubview:subView];
        
        [subView release];
        
    }
    
    self.MyScrollView.pagingEnabled = YES;
    self.MyScrollView.delegate = self;
    
    self.MyScrollView.contentSize = CGSizeMake(self.MyScrollView.frame.size.width*colors.count, self.MyScrollView.frame.size.height);
    
    
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
    [super dealloc];
}

@end
