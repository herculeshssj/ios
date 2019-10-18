//
//  MapViewExampleAppDelegate.h
//  MapViewExample
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapViewExampleViewController;

@interface MapViewExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MapViewExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MapViewExampleViewController *viewController;

@end
