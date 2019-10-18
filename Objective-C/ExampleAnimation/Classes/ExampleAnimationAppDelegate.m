//
//  ExampleAnimationAppDelegate.m
//  ExampleAnimation
//
//  Created by user on 1/17/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleAnimationAppDelegate.h"

#import "ExampleAnimationViewController.h"

@implementation ExampleAnimationAppDelegate


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
