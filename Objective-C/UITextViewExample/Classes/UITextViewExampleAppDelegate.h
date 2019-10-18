//
//  UITextViewExampleAppDelegate.h
//  UITextViewExample
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UITextViewExampleViewController;

@interface UITextViewExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITextViewExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITextViewExampleViewController *viewController;

@end
