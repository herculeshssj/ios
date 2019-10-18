//
//  ExampleSplashIcon2AppDelegate.h
//  ExampleSplashIcon2
//
//  Created by user on 11/28/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleSplashIcon2ViewController;

@interface ExampleSplashIcon2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleSplashIcon2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleSplashIcon2ViewController *viewController;

@end
