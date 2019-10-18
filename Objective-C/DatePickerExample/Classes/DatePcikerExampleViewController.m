//
//  DatePcikerExampleViewController.m
//  DatePcikerExample
//
//  Created by user on 7/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "DatePcikerExampleViewController.h"

@implementation DatePcikerExampleViewController


- (IBAction)OnClick:(id)sender
{

    NSDate *theDate = [dtPicker date];
    
    NSString *newValue = [[NSString alloc] initWithFormat:@"The date: %@", theDate];
    
    lDate.text = newValue;
    
    [newValue release];
    
       

}

- (void)dealloc {
    [dtPicker release];
    [lDate release];
    [super dealloc];
}

@end
