//
//  ExampleSplashIcon2AppDelegate.m
//  ExampleSplashIcon2
//
//  Created by user on 11/28/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleSplashIcon2AppDelegate.h"

#import "ExampleSplashIcon2ViewController.h"

@implementation ExampleSplashIcon2AppDelegate


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
