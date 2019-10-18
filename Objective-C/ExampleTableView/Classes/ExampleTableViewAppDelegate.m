//
//  ExampleTableViewAppDelegate.m
//  ExampleTableView
//
//  Created by user on 8/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleTableViewAppDelegate.h"

#import "ExampleTableViewViewController.h"

@implementation ExampleTableViewAppDelegate


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
