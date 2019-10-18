//
//  ExamplePickerViewAppDelegate.h
//  ExamplePickerView
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExamplePickerViewViewController;

@interface ExamplePickerViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExamplePickerViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExamplePickerViewViewController *viewController;

@end
