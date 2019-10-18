//
//  ExampleCameraAppDelegate.h
//  ExampleCamera
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleCameraViewController;

@interface ExampleCameraAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleCameraViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleCameraViewController *viewController;

@end
