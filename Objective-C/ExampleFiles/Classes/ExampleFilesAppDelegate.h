//
//  ExampleFilesAppDelegate.h
//  ExampleFiles
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleFilesViewController;

@interface ExampleFilesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleFilesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleFilesViewController *viewController;

@end
