//
//  ExampleSplashIconAppDelegate.h
//  ExampleSplashIcon
//
//  Created by user on 11/28/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleSplashIconViewController;

@interface ExampleSplashIconAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleSplashIconViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleSplashIconViewController *viewController;

@end
