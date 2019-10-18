//
//  TestProgressViewAppDelegate.h
//  TestProgressView
//
//  Created by user on 9/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestProgressViewViewController;

@interface TestProgressViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TestProgressViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TestProgressViewViewController *viewController;

@end
