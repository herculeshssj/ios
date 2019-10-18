//
//  SegmentedExampleViewController.m
//  SegmentedExample
//
//  Created by user on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SegmentedExampleViewController.h"

@implementation SegmentedExampleViewController

- (IBAction)OnSegmentedChange:(id)sender 
{
    UISegmentedControl *seg = (UISegmentedControl *) sender;
    
        
    if([seg selectedSegmentIndex] == 0)
    {
        l1.hidden = NO;
        l2.hidden = YES;
        l3.hidden = YES;
        l4.hidden = YES;
    }
    
    if([seg selectedSegmentIndex] == 1)
    {
        l1.hidden = YES;
        l2.hidden = NO;
        l3.hidden = YES;
        l4.hidden = YES;
    }
    
    if([seg selectedSegmentIndex] == 2)
    {
        l1.hidden = YES;
        l2.hidden = YES;
        l3.hidden = NO;
        l4.hidden = YES;
    }
    
    if([seg selectedSegmentIndex] == 3)
    {
        l1.hidden = YES;
        l2.hidden = YES;
        l3.hidden = YES;
        l4.hidden = NO;
    }
    
    
}



- (void)dealloc {
    [l1 release];
    [l2 release];
    [l3 release];
    [l4 release];
    [super dealloc];
}

@end
