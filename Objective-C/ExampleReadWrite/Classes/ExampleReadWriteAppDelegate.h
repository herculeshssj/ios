//
//  ExampleReadWriteAppDelegate.h
//  ExampleReadWrite
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleReadWriteViewController;

@interface ExampleReadWriteAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleReadWriteViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleReadWriteViewController *viewController;

@end
