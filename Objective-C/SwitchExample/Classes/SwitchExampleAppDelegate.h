//
//  SwitchExampleAppDelegate.h
//  SwitchExample
//
//  Created by user on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchExampleViewController;

@interface SwitchExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SwitchExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SwitchExampleViewController *viewController;

@end
