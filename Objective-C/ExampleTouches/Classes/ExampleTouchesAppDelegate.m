//
//  ExampleTouchesAppDelegate.m
//  ExampleTouches
//
//  Created by user on 1/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleTouchesAppDelegate.h"

#import "ExampleTouchesViewController.h"

@implementation ExampleTouchesAppDelegate


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
