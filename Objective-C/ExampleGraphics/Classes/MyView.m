//
//  MyView.m
//  ExampleGraphics
//
//  Created by user on 1/9/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "MyView.h"


@implementation MyView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect 
{
    
    /*
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(c, 0.5, 1.0, 0.5, 0.8);
    CGRect r = CGRectMake(0, 0, 200, 200);
    
    CGContextFillRect(c, r);
    */
    
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    
    CGFloat red[4] = {1.0f,0.0f,0.0f,1.0f};
    CGContextSetStrokeColor(c, red);
    
    CGContextBeginPath(c);
    CGContextMoveToPoint(c, 5.0f, 5.0f);
    CGContextAddLineToPoint(c, 50.0f, 50.0f);
    CGContextStrokePath(c);
    
       
    
    
    // Drawing code
}


- (void)dealloc {
    [super dealloc];
}


@end
