//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by user on 5/15/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldAppDelegate.h"

#import "HelloWorldViewController.h"

@implementation HelloWorldAppDelegate


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
