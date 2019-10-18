//
//  ActionSheetExampleAppDelegate.m
//  ActionSheetExample
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ActionSheetExampleAppDelegate.h"

#import "ActionSheetExampleViewController.h"

@implementation ActionSheetExampleAppDelegate


@synthesize window;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
     
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [viewController release];
    [super dealloc];
}

@end
