//
//  SimplePageControlExampleAppDelegate.h
//  SimplePageControlExample
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimplePageControlExampleViewController;

@interface SimplePageControlExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimplePageControlExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimplePageControlExampleViewController *viewController;

@end
