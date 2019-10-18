//
//  SliderExampleAppDelegate.h
//  SliderExample
//
//  Created by user on 7/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SliderExampleViewController;

@interface SliderExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SliderExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SliderExampleViewController *viewController;

@end
