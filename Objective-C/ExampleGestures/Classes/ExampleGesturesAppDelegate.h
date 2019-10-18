//
//  ExampleGesturesAppDelegate.h
//  ExampleGestures
//
//  Created by user on 1/15/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleGesturesViewController;

@interface ExampleGesturesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleGesturesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleGesturesViewController *viewController;

@end
