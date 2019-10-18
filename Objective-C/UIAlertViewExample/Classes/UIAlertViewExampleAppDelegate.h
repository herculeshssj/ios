//
//  UIAlertViewExampleAppDelegate.h
//  UIAlertViewExample
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIAlertViewExampleViewController;

@interface UIAlertViewExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIAlertViewExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UIAlertViewExampleViewController *viewController;

@end
