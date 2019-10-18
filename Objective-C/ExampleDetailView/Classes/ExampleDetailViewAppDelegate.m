//
//  ExampleDetailViewAppDelegate.m
//  ExampleDetailView
//
//  Created by user on 12/6/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExampleDetailViewAppDelegate.h"

@implementation ExampleDetailViewAppDelegate


@synthesize window;

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    [window addSubview:navigationController.view];
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [navigationController release];
    [super dealloc];
}

@end
