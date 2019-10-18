//
//  ExampleUIScrollViewViewController.h
//  ExampleUIScrollView
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExampleUIScrollViewViewController : UIViewController <UIScrollViewDelegate> {

    IBOutlet UIScrollView *MyScrollView;
    IBOutlet UIImageView *MyImageView;
}

@property (nonatomic,retain) UIScrollView *MyScrollView;

@property (nonatomic,retain) UIImageView *MyImageView;


@end
