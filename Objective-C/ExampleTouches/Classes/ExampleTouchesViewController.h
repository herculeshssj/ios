//
//  ExampleTouchesViewController.h
//  ExampleTouches
//
//  Created by user on 1/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExampleTouchesViewController : UIViewController {

    IBOutlet UILabel *method;
    IBOutlet UILabel *ts;
    IBOutlet UILabel *taps;
}

@property (nonatomic,retain) IBOutlet UILabel *method;

@property (nonatomic,retain) IBOutlet UILabel *ts;


@property (nonatomic,retain) IBOutlet UILabel *taps;


@end
