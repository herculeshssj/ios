//
//  DatePcikerExampleAppDelegate.h
//  DatePcikerExample
//
//  Created by user on 7/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DatePcikerExampleViewController;

@interface DatePcikerExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DatePcikerExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet DatePcikerExampleViewController *viewController;

@end
