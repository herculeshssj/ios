//
//  FormularioContatoViewController.m
//  ContatoIP67
//
//  Created by ios4193 on 29/03/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import "FormularioContatoViewController.h"
#import "Contato.h"
#import <CoreLocation/CoreLocation.h>

@interface FormularioContatoViewController ()

@end

@implementation FormularioContatoViewController

- (id) init {
    self = [super init];
    
    if (self) {
        //self.contatos = [[NSMutableArray alloc]init];
        self.navigationItem.title = @"Cadastro";
        
        UIBarButtonItem *adiciona = [[UIBarButtonItem alloc]initWithTitle:@"Adiciona" style:UIBarButtonItemStylePlain target:self action:@selector(criaContato)];
        self.navigationItem.rightBarButtonItem = adiciona;
    }
    return self;
}

- (id) initWithContato:(Contato *)umContato {
    if (self = [super init]) {
        self.contato = umContato;
        
        UIBarButtonItem *confirmar = [[UIBarButtonItem alloc] initWithTitle:@"Confirmar" style:UIBarButtonItemStylePlain target:self action:@selector(atualizaContato)];
        
        self.navigationItem.rightBarButtonItem = confirmar;
    }
    return self;
}

- (void) criaContato {
    Contato *contato = [[Contato alloc] init];

    contato = [self pegaDadosDoFormulario];

    [self.contatos addObject:contato];
    
    if (self.delegate) {
        [self.delegate contatoAdicionado:contato];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tecladoApareceu:) name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tecladoSumiu:) name:UIKeyboardWillHideNotification object:nil];
    
    if (self.contato) {
        self.nome.text = self.contato.nome;
        self.telefone.text = self.contato.telefone;
        self.email.text = self.contato.email;
        self.endereco.text = self.contato.endereco;
        self.site.text = self.contato.site;
        
        if (self.contato.foto) {
            [self.botaoFoto setBackgroundImage:self.contato.foto forState:UIControlStateNormal];
        }
        
        self.latitude.text = [self.contato.latitude stringValue];
        self.longitude.text = [self.contato.longitude stringValue];
    }
}

-(void) viewDidUnload {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

-(void) tecladoSumiu: (NSNotification *) notification {
    NSLog(@"Um teclado qualquer sumiu na tela");
}

-(void) tecladoApareceu: (NSNotification *) notification {
    NSLog(@"Um teclado qualquer apareceu da tela");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Contato* )pegaDadosDoFormulario {
    
    if (!self.contato) {
        self.contato = [[Contato alloc]init];
    }
    
    if (self.botaoFoto.currentBackgroundImage) {
        self.contato.foto = self.botaoFoto.currentBackgroundImage;
    }
    
    self.contato.nome = self.nome.text;
    self.contato.endereco = self.endereco.text;
    self.contato.telefone = self.telefone.text;
    self.contato.email = self.email.text;
    self.contato.site = self.site.text;
    
    self.contato.latitude = [NSNumber numberWithFloat:[self.latitude.text floatValue]];
    self.contato.longitude = [NSNumber numberWithFloat:[self.longitude.text floatValue]];
    
    return self.contato;
}

- (IBAction)proximoElemento:(UITextField *)textField {
    if (textField == self.nome) {
        [self.telefone becomeFirstResponder];
    } else if (textField == self.telefone) {
        [self.email becomeFirstResponder];
    } else if (textField == self.email) {
        [self.endereco becomeFirstResponder];
    } else if (textField == self.endereco) {
        [self.site becomeFirstResponder];
    } else if (textField == self.site) {
        [self.site resignFirstResponder];
    }
}

-(void) atualizaContato {
    Contato *contatoAtualizado = [self pegaDadosDoFormulario];

    [self.navigationController popViewControllerAnimated:YES];
    
    if (self.delegate) {
        [self.delegate contatoAtualizado:contatoAtualizado];
    }
}

-(IBAction)selecionaFoto:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        // Câmera disponível
    } else {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        picker.allowsEditing = YES;
        picker.delegate = self;
        [self presentViewController:picker animated:YES completion:nil];
    }
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *imagemSelecionada = [info valueForKey:UIImagePickerControllerEditedImage];
    [self.botaoFoto setImage:imagemSelecionada forState:UIControlStateNormal];
    [self.botaoFoto setTintColor:[UIColor clearColor]];
    [self.botaoFoto setBackgroundImage: imagemSelecionada forState:UIControlStateNormal];
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)buscarCoordenadas:(id)sender {
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:self.endereco.text completionHandler:^(NSArray *resultados, NSError *error) {
        if (error == nil && [resultados count] > 0) {
            CLPlacemark *resultado = resultados[0];
            CLLocationCoordinate2D coordenada = resultado.location.coordinate;
            self.latitude.text = [NSString stringWithFormat:@"%f", coordenada.latitude];
            self.longitude.text = [NSString stringWithFormat:@"%f", coordenada.longitude];
        }
    }];
}

@end
