//
//  UIToolbarExampleAppDelegate.h
//  UIToolbarExample
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIToolbarExampleViewController;

@interface UIToolbarExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIToolbarExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UIToolbarExampleViewController *viewController;

@end
