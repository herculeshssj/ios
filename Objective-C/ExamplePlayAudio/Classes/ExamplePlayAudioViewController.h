//
//  ExamplePlayAudioViewController.h
//  ExamplePlayAudio
//
//  Created by user on 3/11/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ExamplePlayAudioViewController : UIViewController <AVAudioPlayerDelegate>  {

    IBOutlet UISlider *volumeControl;
    
    AVAudioPlayer *audioPlayer;

}

@property (nonatomic,retain) IBOutlet UISlider *volumeControl;



@end
