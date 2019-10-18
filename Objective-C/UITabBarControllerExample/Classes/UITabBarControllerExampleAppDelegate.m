//
//  UITabBarControllerExampleAppDelegate.m
//  UITabBarControllerExample
//
//  Created by user on 11/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "UITabBarControllerExampleAppDelegate.h"

@implementation UITabBarControllerExampleAppDelegate


@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [super dealloc];
}

@end
