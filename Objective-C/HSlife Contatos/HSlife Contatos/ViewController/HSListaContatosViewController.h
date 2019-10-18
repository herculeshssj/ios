//
//  HSListaContatosViewController.h
//  HSContatos
//
//  Created by Hercules S S Jose on 05/05/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MessageUI/MFMailComposeViewController.h>
#import "HSListaContatosProtocol.h"

@interface HSListaContatosViewController : UITableViewController<HSListaContatosProtocol, UIActionSheetDelegate, MFMailComposeViewControllerDelegate>

@property (strong) NSMutableArray *contatos;

@property (strong) NSManagedObjectContext *contexto;

@property NSInteger listaDestaque;

- (void)exibeMaisAcoes:(UIGestureRecognizer *)gesture;

@end
