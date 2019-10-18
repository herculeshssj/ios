//
//  ExamplePickerViewViewController.h
//  ExamplePickerView
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExamplePickerViewViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {

    IBOutlet UIPickerView *MyPickerView;
    NSArray *pickerArray;
    
}

@property (nonatomic,retain) NSArray *pickerAray;

@end
