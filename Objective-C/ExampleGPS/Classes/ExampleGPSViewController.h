//
//  ExampleGPSViewController.h
//  ExampleGPS
//
//  Created by user on 9/21/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@interface ExampleGPSViewController : UIViewController
<CLLocationManagerDelegate>
{

    CLLocationManager *locationManager;
    CLLocation *startLocation;
    
    IBOutlet UILabel *latitude;
    IBOutlet UILabel *longitude;
    
    IBOutlet UILabel *horizontalAccuracy;
    IBOutlet UILabel *altitude;
    IBOutlet UILabel *verticalAccuracy;
    IBOutlet UILabel *distance;
}

@property (nonatomic,retain) CLLocationManager *localtionManager;

@property (nonatomic,retain) CLLocation *startLocation;

@property (nonatomic,retain) IBOutlet UILabel *latitude;

@property (nonatomic,retain) IBOutlet UILabel *longitude;

@property (nonatomic,retain) IBOutlet UILabel *horizontalAccuracy;

@property (nonatomic,retain) IBOutlet UILabel *verticalAccuracy;

@property (nonatomic,retain) IBOutlet UILabel *altitude;

@property (nonatomic,retain) IBOutlet UILabel *distance;




@end
