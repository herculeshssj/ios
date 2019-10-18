//
//  ListaContatos.h
//  ContatoIP67
//
//  Created by ios4193 on 05/04/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListaContatosProtocol.h"
#import <MessageUI/MFMailComposeViewController.h>

@interface ListaContatosViewController : UITableViewController<ListaContatosProtocol, UIActionSheetDelegate, MFMailComposeViewControllerDelegate> {
    Contato* contatoSelecionado;
}

@property (strong) NSMutableArray *contatos;

@property NSInteger linhaDestaque;

- (void)exibeMaisAcoes:(UIGestureRecognizer *)gesture;

@end
