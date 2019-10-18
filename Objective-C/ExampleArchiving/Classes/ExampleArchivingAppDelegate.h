//
//  ExampleArchivingAppDelegate.h
//  ExampleArchiving
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleArchivingViewController;

@interface ExampleArchivingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleArchivingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleArchivingViewController *viewController;

@end
