//
//  SegmentedExampleAppDelegate.h
//  SegmentedExample
//
//  Created by user on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SegmentedExampleViewController;

@interface SegmentedExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SegmentedExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SegmentedExampleViewController *viewController;

@end
