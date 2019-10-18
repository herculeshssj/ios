//
//  HSListaContatosProtocol.h
//  HSContatos
//
//  Created by Hercules S S Jose on 17/05/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HSContato.h"

@protocol HSListaContatosProtocol <NSObject>

- (void)contatoAtualizado:(HSContato *)contato;
- (void)contatoAdicionado:(HSContato *)contato;

@end
