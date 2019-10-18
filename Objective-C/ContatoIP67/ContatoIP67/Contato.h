//
//  Contato.h
//  ContatoIP67
//
//  Created by ios4193 on 05/04/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contato : NSObject<NSCoding>

@property (strong) NSString *nome;
@property (strong) NSString *endereco;
@property (strong) NSString *email;
@property (strong) NSString *telefone;
@property (strong) NSString *site;
@property (strong) UIImage *foto;
@property (strong) NSNumber *latitude;
@property (strong) NSNumber *longitude;

@end
