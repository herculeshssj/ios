//
//  ExampleNavControllerAppDelegate_iPhone.h
//  ExampleNavController
//
//  Created by user on 11/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExampleNavControllerAppDelegate.h"

@interface ExampleNavControllerAppDelegate_iPhone : ExampleNavControllerAppDelegate {
    UINavigationController *_navigationController;
}
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;


@end
