//
//  SliderExampleViewController.m
//  SliderExample
//
//  Created by user on 7/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SliderExampleViewController.h"




@implementation SliderExampleViewController

- (IBAction)On5Donate:(id)sender 
{

    SliderCharity.value = 5;
    USDDonate.text = @"5";
}

- (IBAction)On10Donate:(id)sender
{
    SliderCharity.value = 10;
    USDDonate.text = @"10";
}

- (IBAction)On50Donate:(id)sender
{

    SliderCharity.value = 50;
    USDDonate.text = @"50";
}


- (IBAction)OnChangeSlider:(id)sender
{
    UISlider *s = (UISlider *) sender;
    
    int value = (int) s.value;
    
    NSString *newString = [[NSString alloc] initWithFormat: @"%i", value ];
    
    USDDonate.text = newString;
    
    [newString release];
    
}


- (void)dealloc {
    [SliderCharity release];
    [USDDonate release];
    [super dealloc];
}

@end
