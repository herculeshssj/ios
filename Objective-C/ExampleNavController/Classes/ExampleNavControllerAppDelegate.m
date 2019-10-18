//
//  ExampleNavControllerAppDelegate.m
//  ExampleNavController
//
//  Created by user on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleNavControllerAppDelegate.h"

@implementation ExampleNavControllerAppDelegate


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
