//
//  ExampleAnimationAppDelegate.h
//  ExampleAnimation
//
//  Created by user on 1/17/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleAnimationViewController;

@interface ExampleAnimationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleAnimationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleAnimationViewController *viewController;

@end
