//
//  ExempleUIImageViewAppDelegate.h
//  ExempleUIImageView
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExempleUIImageViewViewController;

@interface ExempleUIImageViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExempleUIImageViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExempleUIImageViewViewController *viewController;

@end
