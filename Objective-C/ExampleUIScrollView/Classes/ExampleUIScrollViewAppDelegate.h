//
//  ExampleUIScrollViewAppDelegate.h
//  ExampleUIScrollView
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleUIScrollViewViewController;

@interface ExampleUIScrollViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleUIScrollViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleUIScrollViewViewController *viewController;

@end
