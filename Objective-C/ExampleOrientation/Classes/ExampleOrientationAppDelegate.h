//
//  ExampleOrientationAppDelegate.h
//  ExampleOrientation
//
//  Created by user on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleOrientationViewController;

@interface ExampleOrientationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleOrientationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleOrientationViewController *viewController;

@end
