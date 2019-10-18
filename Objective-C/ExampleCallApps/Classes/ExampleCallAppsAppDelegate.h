//
//  ExampleCallAppsAppDelegate.h
//  ExampleCallApps
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleCallAppsViewController;

@interface ExampleCallAppsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleCallAppsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleCallAppsViewController *viewController;

@end
