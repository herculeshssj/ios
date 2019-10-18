//
//  ExampleUIPageControlViewController.h
//  ExampleUIPageControl
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExampleUIPageControlViewController : UIViewController <UIScrollViewDelegate> {

    IBOutlet UIScrollView *MyScrollView;
    
}

@property (nonatomic,retain) IBOutlet UIScrollView *MyScrollView;


@end
