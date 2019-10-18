//
//  FormularioContatoViewController.h
//  ContatoIP67
//
//  Created by ios4193 on 29/03/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contato.h"
#import "ListaContatosProtocol.h"

@interface FormularioContatoViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nome;
@property (weak, nonatomic) IBOutlet UITextField *telefone;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *endereco;
@property (weak, nonatomic) IBOutlet UITextField *site;
@property (weak, nonatomic) IBOutlet UIButton *botaoFoto;
@property (weak, nonatomic) IBOutlet UITextField *latitude;
@property (weak, nonatomic) IBOutlet UITextField *longitude;

@property (weak) id<ListaContatosProtocol> delegate;

@property (strong) NSMutableArray *contatos;
@property (strong) Contato *contato;

- (Contato*) pegaDadosDoFormulario;

- (id) initWithContato: (Contato *) umContato;

- (IBAction)proximoElemento:(UITextField *) textField;

- (IBAction)selecionaFoto:(id)sender;

- (IBAction)buscarCoordenadas:(id)sender;

@end
