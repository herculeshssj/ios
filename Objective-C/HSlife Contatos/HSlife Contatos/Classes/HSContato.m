//
//  HSContato.m
//  HSContatos
//
//  Created by Hercules S S Jose on 04/05/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import "HSContato.h"

@implementation HSContato

@dynamic nome, telefone, email, endereco, site, latitude, longitude;

@synthesize foto;

- (CLLocationCoordinate2D)coordinate {
    return CLLocationCoordinate2DMake([self.latitude doubleValue], [self.longitude doubleValue]);
}

- (NSString *)subtitle {
    return self.email;
}

- (NSString *)title {
    return self.nome;
}

@end
