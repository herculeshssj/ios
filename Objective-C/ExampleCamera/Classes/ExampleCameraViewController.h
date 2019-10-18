//
//  ExampleCameraViewController.h
//  ExampleCamera
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ExampleCameraViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>  {

    IBOutlet UIImageView *imageView;
    
    BOOL newMedia;
    
}

@property (nonatomic,retain) IBOutlet UIImageView *imageView;



@end
