//
//  ExampleTouchesAppDelegate.h
//  ExampleTouches
//
//  Created by user on 1/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleTouchesViewController;

@interface ExampleTouchesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleTouchesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleTouchesViewController *viewController;

@end
