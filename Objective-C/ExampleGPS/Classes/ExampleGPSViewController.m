//
//  ExampleGPSViewController.m
//  ExampleGPS
//
//  Created by user on 9/21/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleGPSViewController.h"

@implementation ExampleGPSViewController
@synthesize longitude,latitude,horizontalAccuracy,verticalAccuracy,altitude,distance;
@synthesize  localtionManager,startLocation;

- (IBAction)resetDistance:(id)sender 
{
    startLocation = nil;

}

-(void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    
    NSString *currentLatitude = [[NSString alloc] initWithFormat:@"%g",newLocation.coordinate.latitude];
    
    latitude.text = currentLatitude;
    
    NSString *currentLongitude = [[NSString alloc] initWithFormat:@"%g",newLocation.coordinate.longitude];

    longitude.text = currentLongitude;
    
    NSString *currentHorizontalAccuracy = [[NSString alloc] initWithFormat:@"%g",newLocation.horizontalAccuracy];

    horizontalAccuracy.text = currentHorizontalAccuracy;

    NSString *currentAltitude = [[NSString alloc] initWithFormat:@"%g",newLocation.altitude];
    
    altitude.text = currentAltitude;
    
    NSString *currentVerticalAccuracy = [[NSString alloc] initWithFormat:@"%g",newLocation.verticalAccuracy];
    
     verticalAccuracy.text = currentVerticalAccuracy;
    
    if(startLocation == nil)
        self.startLocation = newLocation;
    
    CLLocationDistance distanceBetween = [newLocation distanceFromLocation:startLocation];
    
    NSString *tripString = [[NSString alloc] initWithFormat:@"%f",distanceBetween];
    
    distance.text = tripString;
    
    [currentAltitude release];
    [currentLatitude release];
    [currentLongitude release];
    [currentHorizontalAccuracy release];
    [currentVerticalAccuracy release];
    [tripString release];
    
    
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

    self.localtionManager = [[CLLocationManager alloc] init];
    
    localtionManager.desiredAccuracy = kCLLocationAccuracyBest;
    localtionManager.delegate = self;
    
    [localtionManager startUpdatingLocation];
    startLocation = nil;
    
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
    
    self.latitude = nil;
    self.longitude = nil;
    self.horizontalAccuracy = nil;
    self.verticalAccuracy = nil;
    self.altitude = nil;
    self.startLocation = nil;
    self.distance = nil;
    self.localtionManager = nil;
    
    
}


- (void)dealloc {
    [latitude release];
    [longitude release];
    [horizontalAccuracy release];
    [altitude release];
    [verticalAccuracy release];
    [distance release];
    [super dealloc];
}

@end
