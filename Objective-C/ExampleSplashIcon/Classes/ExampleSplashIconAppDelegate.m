//
//  ExampleSplashIconAppDelegate.m
//  ExampleSplashIcon
//
//  Created by user on 11/28/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleSplashIconAppDelegate.h"

#import "ExampleSplashIconViewController.h"

@implementation ExampleSplashIconAppDelegate


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
