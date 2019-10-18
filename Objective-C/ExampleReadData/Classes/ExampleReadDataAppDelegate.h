//
//  ExampleReadDataAppDelegate.h
//  ExampleReadData
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleReadDataViewController;

@interface ExampleReadDataAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleReadDataViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleReadDataViewController *viewController;

@end
