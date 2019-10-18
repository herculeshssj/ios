//
//  HSContato.h
//  HSContatos
//
//  Created by Hercules S S Jose on 04/05/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>

@interface HSContato : NSManagedObject<MKAnnotation>

@property (strong) NSString *nome;
@property (strong) NSString *telefone;
@property (strong) NSString *email;
@property (strong) NSString *endereco;
@property (strong) NSString *site;
@property (strong) UIImage *foto;
@property (strong) NSNumber *latitude;
@property (strong) NSNumber *longitude;

@end
