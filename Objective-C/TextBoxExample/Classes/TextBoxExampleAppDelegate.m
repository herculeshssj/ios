//
//  TextBoxExampleAppDelegate.m
//  TextBoxExample
//
//  Created by user on 7/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TextBoxExampleAppDelegate.h"

#import "TextBoxExampleViewController.h"

@implementation TextBoxExampleAppDelegate


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
