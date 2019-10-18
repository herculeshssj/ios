//
//  ExampleDirectoryAppDelegate.m
//  ExampleDirectory
//
//  Created by user on 2/7/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleDirectoryAppDelegate.h"

#import "ExampleDirectoryViewController.h"

@implementation ExampleDirectoryAppDelegate


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
