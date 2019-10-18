//
//  MapViewExampleViewController.m
//  MapViewExample
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MapViewExampleViewController.h"

@implementation MapViewExampleViewController
@synthesize MyMapView;




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

    MyMapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    MyMapView.delegate = self;
    
    
    [self.view addSubview:MyMapView];
    [NSThread detachNewThreadSelector:@selector(DisplayMyMap) toTarget:self withObject:nil];
   
}

-(void) DisplayMyMap
{
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.2;
    span.longitudeDelta = 0.2;
    
    CLLocationCoordinate2D l;
    l.latitude = 38.89765;
    l.longitude = -77.035667;
    
    region.span = span;
    region.center = l;
    
    
    [MyMapView setRegion:region animated:TRUE];
    [MyMapView regionThatFits:region];
    
    
    
    
    
    
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
    [MyMapView release];
    [super dealloc];
}

@end
