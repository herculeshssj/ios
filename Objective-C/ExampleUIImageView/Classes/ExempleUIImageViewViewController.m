//
//  ExempleUIImageViewViewController.m
//  ExempleUIImageView
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExempleUIImageViewViewController.h"

@implementation ExempleUIImageViewViewController


- (IBAction)loadImage:(id)sender 
{
    
    [activity startAnimating];
    
    [self performSelectorInBackground:@selector(downloadImage) withObject:nil];
}


-(void) downloadImage
{
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSData *data = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://www.google.com.br/images/srpr/logo3w.png"]];
    
    
    [img setImage:[UIImage imageWithData:data]];
    
    
    [activity stopAnimating];
    
    [pool release];
    
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
    [img release];
    [activity release];
    [super dealloc];
}

@end
