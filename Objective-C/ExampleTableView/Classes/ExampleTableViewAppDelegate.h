//
//  ExampleTableViewAppDelegate.h
//  ExampleTableView
//
//  Created by user on 8/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleTableViewViewController;

@interface ExampleTableViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleTableViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleTableViewViewController *viewController;

@end
