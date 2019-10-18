//
//  ActionSheetExampleAppDelegate.h
//  ActionSheetExample
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ActionSheetExampleViewController;

@interface ActionSheetExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ActionSheetExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ActionSheetExampleViewController *viewController;

@end
