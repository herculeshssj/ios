//
//  SwitchExampleViewController.m
//  SwitchExample
//
//  Created by user on 7/19/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SwitchExampleViewController.h"

@implementation SwitchExampleViewController

- (IBAction)OnSwitchChange:(id)sender 
{
    UISwitch *s = (UISwitch *) sender;
    
    if(s.on== YES)
    {
        labelEmail.hidden = NO;
        textEmail.hidden = NO;
    }
    else
    {
        labelEmail.hidden = YES;
        textEmail.hidden = YES;
      
    }
    
}

- (IBAction)OnClick:(id)sender 
{
    if(EmailSwitch.on== YES)
    {
        [EmailSwitch setOn:NO animated:YES]; 
    }
    else
    {
        [EmailSwitch setOn:YES animated:YES];
    }
    
    
}



- (void)dealloc {
    [EmailSwitch release];
    [labelEmail release];
    [textEmail release];
    [super dealloc];
}

@end
