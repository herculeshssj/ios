//
//  ExampleGraphicsAppDelegate.h
//  ExampleGraphics
//
//  Created by user on 1/9/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleGraphicsViewController;

@interface ExampleGraphicsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleGraphicsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleGraphicsViewController *viewController;

@end
