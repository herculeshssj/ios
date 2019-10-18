//
//  ExampleRecordAudioViewController.h
//  ExampleRecordAudio
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>




@interface ExampleRecordAudioViewController : UIViewController <AVAudioPlayerDelegate,AVAudioRecorderDelegate> {

    IBOutlet UIButton *recordButton;
    IBOutlet UIButton *playButton;


    IBOutlet UIButton *stopButton;

    AVAudioRecorder *audioRecorder;
    
    AVAudioPlayer *audioPlayer;
    
    
}

@property (nonatomic,retain) IBOutlet UIButton *playButton;



@property (nonatomic,retain) IBOutlet UIButton *stopButton;



@property (nonatomic,retain) IBOutlet UIButton *recordButton;





@end
