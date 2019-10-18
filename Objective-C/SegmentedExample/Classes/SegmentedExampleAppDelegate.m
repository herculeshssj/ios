//
//  SegmentedExampleAppDelegate.m
//  SegmentedExample
//
//  Created by user on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SegmentedExampleAppDelegate.h"

#import "SegmentedExampleViewController.h"

@implementation SegmentedExampleAppDelegate


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
