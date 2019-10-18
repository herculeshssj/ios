//
//  ExamplePlayAudioAppDelegate.h
//  ExamplePlayAudio
//
//  Created by user on 3/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExamplePlayAudioViewController;

@interface ExamplePlayAudioAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExamplePlayAudioViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExamplePlayAudioViewController *viewController;

@end
