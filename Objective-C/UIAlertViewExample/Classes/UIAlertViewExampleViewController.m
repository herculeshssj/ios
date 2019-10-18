//
//  UIAlertViewExampleViewController.m
//  UIAlertViewExample
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "UIAlertViewExampleViewController.h"

@implementation UIAlertViewExampleViewController

- (IBAction)bClick:(id)sender
{
    
    
    
    
    UIAlertView *msg = [[UIAlertView alloc] initWithTitle:@"AppName" 
                                                  message:@"Hello" 
                                             delegate:self 
                                             cancelButtonTitle:@"First" 
                                        otherButtonTitles:@"Second",@"Third", nil];
    
    [msg show];
    
    
        
}


-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
               
               
    if([title isEqualToString:@"First"])
    {
       NSLog(@"First button was clicked!");
    
    } else if([title isEqualToString:@"Second"])
    {
         NSLog(@"Second button was clicked!");
    } else if([title isEqualToString:@"Third"])
    {
          NSLog(@"Third button was clicked!");
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
    [super dealloc];
}

@end
