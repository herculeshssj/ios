//
//  MapViewExampleViewController.h
//  MapViewExample
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewExampleViewController : UIViewController <MKMapViewDelegate> {

    IBOutlet MKMapView *MyMapView;
}

@property (nonatomic,retain) IBOutlet MKMapView *MyMapView;

-(void) DisplayMyMap;

@end
