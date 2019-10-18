//
//  FirstEventAppViewController.m
//  FirstEventApp
//
//  Created by user on 7/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstEventAppViewController.h"

@implementation FirstEventAppViewController
@synthesize myText = _myText;

- (IBAction)buttonClick:(id)sender 
{
    _myText.text = @"DynamicText";
}


- (void)dealloc {
    [_myText release];
    [super dealloc];
}

@end
