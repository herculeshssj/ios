//
//  Calculo.h
//  OlaMundo
//
//  Created by ios4193 on 29/03/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculo : NSObject

@property int intNum1;
@property int intNum2;

@property float floatNum1;
@property float floatNum2;

- (int) soma : (int)numero1 : (int) numero2;
- (int) subtracao : (int) numero1 : (int) numero2;

- (float) multiplicacao : (float) numero1 : (float) numero2;
- (float) divisao : (float) numero1 : (float) numero2;

@end
