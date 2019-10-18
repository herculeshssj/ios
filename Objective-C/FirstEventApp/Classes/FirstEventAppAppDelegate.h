//
//  FirstEventAppAppDelegate.h
//  FirstEventApp
//
//  Created by user on 7/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstEventAppViewController;

@interface FirstEventAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FirstEventAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FirstEventAppViewController *viewController;

@end
