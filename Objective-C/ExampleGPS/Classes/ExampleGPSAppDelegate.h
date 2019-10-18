//
//  ExampleGPSAppDelegate.h
//  ExampleGPS
//
//  Created by user on 9/21/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleGPSViewController;

@interface ExampleGPSAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleGPSViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleGPSViewController *viewController;

@end
