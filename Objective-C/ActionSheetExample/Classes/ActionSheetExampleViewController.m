//
//  ActionSheetExampleViewController.m
//  ActionSheetExample
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ActionSheetExampleViewController.h"

@implementation ActionSheetExampleViewController

- (IBAction)clickAction:(id)sender 
{

    UIActionSheet *ac = [[UIActionSheet alloc] initWithTitle:@"AppName" 
                                               delegate:self 
                                           cancelButtonTitle:@"dismiss" 
                                           destructiveButtonTitle:@"Do it!" 
                                           otherButtonTitles:nil, nil];

    [ac showInView:self.view];
    [ac release];
    
    
}

-(void) actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    
    if(buttonIndex != [actionSheet cancelButtonIndex])
    {
                NSLog(@"Clicked in the destructive button!");
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
