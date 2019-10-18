
//
//  HSFormularioContatoViewController.h
//  HSContatos
//
//  Created by Hercules S S Jose on 27/04/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSContato.h"
#import "HSListaContatosProtocol.h"

@interface HSFormularioContatoViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIActionSheetDelegate, UITextFieldDelegate>

@property (nonatomic,weak) IBOutlet UITextField *nome;
@property (nonatomic,weak) IBOutlet UITextField *telefone;
@property (nonatomic,weak) IBOutlet UITextField *email;
@property (nonatomic,weak) IBOutlet UITextField *endereco;
@property (nonatomic,weak) IBOutlet UITextField *site;
@property (weak, nonatomic) IBOutlet UIButton *botaoFoto;
@property (weak, nonatomic) IBOutlet UITextField *latitude;
@property (weak, nonatomic) IBOutlet UITextField *longitude;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loading;
@property (weak, nonatomic) IBOutlet UIButton *botaoCoordenada;

// @property (strong) NSMutableArray *contatos;

@property (strong) HSContato *contato;

@property (strong) NSManagedObjectContext *contexto;

@property (weak) id<HSListaContatosProtocol> delegate;

@property (weak) UITextField *campoAtual;

- (IBAction)proximoElemento:(UITextField *)textField;
- (IBAction)selecionaFoto:(id)sender;
- (IBAction)buscarCoordenadas:(id)sender;

-(id)initWithContato:(HSContato *)umContato;

@end
