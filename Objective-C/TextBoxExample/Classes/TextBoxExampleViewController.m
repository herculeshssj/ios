//
//  TextBoxExampleViewController.m
//  TextBoxExample
//
//  Created by user on 7/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TextBoxExampleViewController.h"

@implementation TextBoxExampleViewController

- (IBAction)OnDoneUsername:(id)sender 
{
    [sender resignFirstResponder];
}
- (IBAction)OnDonePassword:(id)sender 
{
    [sender resignFirstResponder];
}

- (IBAction)onClick:(id)sender 
{
    NSString *data = @"";
    
    data = [data stringByAppendingString: username.text];
    
    data = [data stringByAppendingString: @" - "];
    
    data = [data stringByAppendingString: password.text];
    
    showData.text = data;
    
    
}


- (void)dealloc {
    [username release];
    [password release];
    [showData release];
    [super dealloc];
}

@end
