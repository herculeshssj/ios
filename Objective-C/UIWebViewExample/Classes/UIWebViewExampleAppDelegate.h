//
//  UIWebViewExampleAppDelegate.h
//  UIWebViewExample
//
//  Created by user on 9/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UIWebViewExampleViewController;

@interface UIWebViewExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UIWebViewExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UIWebViewExampleViewController *viewController;

@end
