//
//  HSFormularioContatoViewController.m
//  HSContatos
//
//  Created by Hercules S S Jose on 27/04/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import "HSFormularioContatoViewController.h"
#import "HSContato.h"
#import <CoreLocation/CoreLocation.h>

@interface HSFormularioContatoViewController ()

@end

@implementation HSFormularioContatoViewController

@synthesize contexto;

- (id) init {
    self = [super init];
    if (self) {
        self.navigationItem.title = @"Cadastro";
        
        UIBarButtonItem *adiciona = [[UIBarButtonItem alloc] initWithTitle:@"Adiciona" style:UIBarButtonItemStylePlain target:self action:@selector(criaContato)];
        self.navigationItem.rightBarButtonItem = adiciona;
    }
    return self;
}

- (id) initWithContato:(HSContato *)umContato {
    self = [super init];
    if (self) {
        self.contato = umContato;
        
        UIBarButtonItem *confirmar = [[UIBarButtonItem alloc] initWithTitle:@"Confirmar" style:UIBarButtonItemStylePlain target:self action:@selector(atualizaContato)];
        self.navigationItem.rightBarButtonItem = confirmar;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) atualizaContato {
    HSContato *contatoAtualizado = [self pegaDadosDoFormulario];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    if (self.delegate) {
        [self.delegate contatoAtualizado:contatoAtualizado];
    }
}

- (void) criaContato {
    HSContato *contato = [self pegaDadosDoFormulario];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    if (self.delegate) {
        [self.delegate contatoAdicionado:contato];
    }
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    
    switch (buttonIndex) {
        case 0:
            picker.sourceType = UIImagePickerControllerSourceTypeCamera;
            break;
        case 1:
            picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        default:
            break;
    }
    
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *imagemSelecionada = [info valueForKey:UIImagePickerControllerEditedImage];
    [self.botaoFoto setImage:imagemSelecionada forState:UIControlStateNormal];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (HSContato *)pegaDadosDoFormulario {
    if (!self.contato) {
        //self.contato = [[HSContato alloc]init];
        self.contato = [NSEntityDescription insertNewObjectForEntityForName:@"Contato" inManagedObjectContext:self.contexto];
    }
    
    self.contato.nome = self.nome.text;
    self.contato.telefone = self.telefone.text;
    self.contato.email = self.email.text;
    self.contato.endereco = self.endereco.text;
    self.contato.site = self.site.text;
    self.contato.latitude = [NSNumber numberWithFloat:[self.latitude.text floatValue]];
    self.contato.longitude = [NSNumber numberWithFloat:[self.longitude.text floatValue]];
    
    
    if (self.botaoFoto.imageView.image) {
        self.contato.foto = self.botaoFoto.imageView.image;
    }
    
    return self.contato;
}

- (IBAction)proximoElemento:(UITextField *)textField {
    if (textField == self.nome) {
        [self.telefone becomeFirstResponder];
    } else if (textField == self.telefone) {
        [self.email becomeFirstResponder];
    } else if (textField == self.email) {
        [self.latitude becomeFirstResponder];
    } else if (textField == self.latitude) {
        [self.longitude becomeFirstResponder];
    } else if (textField == self.longitude) {
        [self.endereco becomeFirstResponder];
    } else if (textField == self.endereco) {
        [self.site becomeFirstResponder];
    } else if (textField == self.site) {
        [self.site resignFirstResponder];
    }
}

- (IBAction)selecionaFoto:(id)sender {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"Escolha a foto do contato" delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Tirar foto", @"Escolher da biblioteca", nil];
        [sheet showInView:self.view];
    } else {
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        picker.allowsEditing = YES;
        picker.delegate = self;
        [self presentViewController:picker animated:YES completion:nil];
    }
}

- (IBAction)buscarCoordenadas:(id)sender {
    [self.loading startAnimating];
    //[self.botaoCoordenada setHidden:YES];
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:self.endereco.text completionHandler:^(NSArray *resultados, NSError *error) {
        if (error == nil && [resultados count] > 0) {
            CLPlacemark *resultado = resultados[0];
            CLLocationCoordinate2D coordenada = resultado.location.coordinate;
            self.latitude.text = [NSString stringWithFormat:@"%f", coordenada.latitude];
            self.longitude.text = [NSString stringWithFormat:@"%f", coordenada.longitude];
        }
    }];
    
    [self.loading stopAnimating];
    //[self.botaoCoordenada setHidden:NO];
}

- (void) tecladoApareceu:(NSNotification *)notification {
    NSDictionary *info = [notification userInfo];
    
    // Acessando o tamanho do teclado e a sua altura
    CGRect areaDoTeclado = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    CGSize tamanhoTeclado = areaDoTeclado.size;
    
    // fazendo o cast da propriedade ::view:: para uma ::UIScrollView::
    // podemos fazer isso pois alteramos a class da ::view:: pelo
    // :: Interface Builder::
    UIScrollView *scroll = (UIScrollView *)self.view;
    
    // Calculando a margem extra que daremos para o scroll
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, tamanhoTeclado.height, 0.0);
    scroll.contentInset = contentInsets;
    scroll.scrollIndicatorInsets = contentInsets;
    
    if (self.campoAtual) {
        // calculando o tamanho adicional dos elementos
        // no caso o teclado e a navigationBar
        CGFloat tamanhoDosElementos = tamanhoTeclado.height + self.navigationController.navigationBar.frame.size.height;
        
        // removendo o espaço extra dos elementos
        CGRect tamanhoDaTela = self.view.frame;
        tamanhoDaTela.size.height -= tamanhoDosElementos;
        
        // validando se o teclado foi escondido ou não
        BOOL campoAtualSumiu = !CGRectContainsPoint(tamanhoDaTela, self.campoAtual.frame.origin);
        
        if (campoAtualSumiu) {
            // caso o teclado tenha sido escondido, vamos adicionar
            // o tamanho do teclado adicional ao ::scroll view::
            CGFloat tamanhoAdicional = tamanhoTeclado.height - self.navigationController.navigationBar.frame.size.height;
            
            CGPoint pontoVisivel = CGPointMake(0.0, self.campoAtual.frame.origin.y - tamanhoAdicional);
            [scroll setContentOffset:pontoVisivel animated:YES];
        }
    }
}

- (void) tecladoSumiu:(NSNotification *)notification {
    UIScrollView *scroll = (UIScrollView *)self.view;
    UIEdgeInsets contentInsets = UIEdgeInsetsZero;
    scroll.contentInset = contentInsets;
    scroll.scrollIndicatorInsets = contentInsets;
    [scroll setContentOffset:CGPointZero animated:YES];
}

- (void) textFieldDidBeginEditing:(UITextField *)textField {
    self.campoAtual = textField;
}

- (void) textFieldDidEndEditing:(UITextField *)textField {
    self.campoAtual = nil;
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
        self.latitude.text = [self.contato.latitude stringValue];
        self.longitude.text = [self.contato.longitude stringValue];
        
        if (self.contato.foto) {
            [self.botaoFoto setImage:self.contato.foto forState:UIControlStateNormal];
        }
    }
}

- (void) viewDidUnload {
    [super viewDidUnload];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

@end
