//
//  ExampleReadWriteDataAppDelegate.h
//  ExampleReadWriteData
//
//  Created by user on 2/22/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleReadWriteDataViewController;

@interface ExampleReadWriteDataAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleReadWriteDataViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleReadWriteDataViewController *viewController;

@end
