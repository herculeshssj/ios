//
//  ExampleUIPageControlAppDelegate.h
//  ExampleUIPageControl
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleUIPageControlViewController;

@interface ExampleUIPageControlAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleUIPageControlViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleUIPageControlViewController *viewController;

@end
