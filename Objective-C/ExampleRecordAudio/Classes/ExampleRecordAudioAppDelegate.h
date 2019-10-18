//
//  ExampleRecordAudioAppDelegate.h
//  ExampleRecordAudio
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExampleRecordAudioViewController;

@interface ExampleRecordAudioAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ExampleRecordAudioViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ExampleRecordAudioViewController *viewController;

@end
