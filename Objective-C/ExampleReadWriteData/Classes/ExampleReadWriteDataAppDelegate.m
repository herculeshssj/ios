//
//  ExampleReadWriteDataAppDelegate.m
//  ExampleReadWriteData
//
//  Created by user on 2/22/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleReadWriteDataAppDelegate.h"

#import "ExampleReadWriteDataViewController.h"

@implementation ExampleReadWriteDataAppDelegate


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
