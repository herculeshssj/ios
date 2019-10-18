//
//  UITextViewExampleViewController.h
//  UITextViewExample
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextViewExampleViewController : UIViewController <UITextViewDelegate> {

    IBOutlet UITextView *MyTextView;
}
@property (nonatomic,retain) IBOutlet UITextView *MyTextView;

@end
