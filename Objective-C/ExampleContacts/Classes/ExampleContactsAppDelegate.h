//
//  ExampleContactsAppDelegate.h
//  ExampleContacts
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleContactsViewController;

@interface ExampleContactsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleContactsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleContactsViewController *viewController;

@end
