//
//  TextBoxExampleAppDelegate.h
//  TextBoxExample
//
//  Created by user on 7/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TextBoxExampleViewController;

@interface TextBoxExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TextBoxExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TextBoxExampleViewController *viewController;

@end
