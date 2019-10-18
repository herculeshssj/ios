//
//  ExampleDirectoryAppDelegate.h
//  ExampleDirectory
//
//  Created by user on 2/7/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleDirectoryViewController;

@interface ExampleDirectoryAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleDirectoryViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleDirectoryViewController *viewController;

@end
