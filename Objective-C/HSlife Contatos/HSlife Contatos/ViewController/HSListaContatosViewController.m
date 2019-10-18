//
//  HSListaContatosViewController.m
//  HSContatos
//
//  Created by Hercules S S Jose on 05/05/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import "HSListaContatosViewController.h"
#import "HSFormularioContatoViewController.h"
#import "HSContato.h"

@implementation HSListaContatosViewController

@synthesize contexto;

HSContato* contatoSelecionado;

-(id) init {
    self = [super init];
    if (self) {
        UIImage *imagemTabItem = [UIImage imageNamed:@"lista-contatos.png"];
        UITabBarItem *tabItem = [[UITabBarItem alloc] initWithTitle:@"Contatos" image:imagemTabItem tag:0];
        self.tabBarItem = tabItem;
        
        self.navigationItem.title = @"Contatos";
        
        UIBarButtonItem *botaoExibirFormulario = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        self.navigationItem.rightBarButtonItem = botaoExibirFormulario;
        self.navigationItem.leftBarButtonItem = self.editButtonItem;
        
        self.listaDestaque = -1;
    }
    return self;
}

- (void)abrirAplicativoComURL:(NSString *)url {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

- (void)abrirSite {
    NSString *url = contatoSelecionado.site;
    [self abrirAplicativoComURL:url];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    HSContato *contato = self.contatos[indexPath.row];
    cell.textLabel.text = contato.nome;
    
    return cell;
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            [self ligar];
            break;
        case 1 :
            [self enviarEmail];
            break;
        case 2:
            [self abrirSite];
            break;
        case 3:
            [self mostrarMapa];
            break;
        default:
            break;
    }
}

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contatos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    HSContato *contato = self.contatos[indexPath.row];
    
    HSFormularioContatoViewController *form = [[HSFormularioContatoViewController alloc]initWithContato:contato];
    //form.contatos = self.contatos;
    form.delegate = self;
    
    [self.navigationController pushViewController:form animated:YES];
}

- (void)enviarEmail {
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *enviadorEmail = [[MFMailComposeViewController alloc] init];
        enviadorEmail.mailComposeDelegate = self;
        
        [enviadorEmail setToRecipients:@[contatoSelecionado.email]];
        [enviadorEmail setSubject:@"HSlife Serviços de TI"];
         
        [self presentViewController:enviadorEmail animated:YES completion:nil];
    } else {
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"HSlife Contatos" message:@"Não é possível enviar e-mail" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (void)exibeMaisAcoes:(UIGestureRecognizer *)gesture {
    if (gesture.state == UIGestureRecognizerStateBegan) {
        CGPoint ponto = [gesture locationInView:self.tableView];
        NSIndexPath *index = [self.tableView indexPathForRowAtPoint:ponto];
        
        HSContato *contato = self.contatos[index.row];
        
        contatoSelecionado = contato;
        
        UIActionSheet *opcoes = [[UIActionSheet alloc] initWithTitle:contato.nome delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Ligar", @"Enviar E-Mail", @"Visualizar site", @"Abrir mapa", nil];
        
        [opcoes showInView:self.view];
    }
}

- (void)ligar {
    UIDevice *device = [UIDevice currentDevice];
    if ([device.model isEqualToString:@"iPhone"]) {
        NSString *numero = [NSString stringWithFormat:@"tel:%@", contatoSelecionado.telefone];
        [self abrirAplicativoComURL:numero];
    } else {
        [[[UIAlertView alloc] initWithTitle:@"HSlife Contatos" message:@"Seu dispositivo não é um iPhone" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    }
}

- (void)mostrarMapa {
    NSString *url = [[NSString stringWithFormat:@"http://maps.google.com/maps?q=%@", contatoSelecionado.endereco] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self abrirAplicativoComURL:url];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.contatos count];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (void) viewDidAppear:(BOOL)animated {
    if (self.listaDestaque >= 0) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.listaDestaque inSection:0];
        [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionNone animated:YES];
        self.listaDestaque = -1;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(exibeMaisAcoes:)];
    
    [self.tableView addGestureRecognizer:longPress];
}

- (void) viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
    
    //NSLog(@"Total cadastrado: %d", [self.contatos count]);
}

- (void)contatoAdicionado:(HSContato *)contato {
    [self.contatos addObject:contato];
    self.listaDestaque = [self.contatos indexOfObject:contato];
    [self.tableView reloadData];
}

- (void)contatoAtualizado:(HSContato *)contato {
    self.listaDestaque = [self.contatos indexOfObject:contato];
}

-(void) exibeFormulario {
    // Alerta
    //UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Contatos" message:@"Aqui vamos exibir o formulário!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    //[alerta show];
    
    //NSLog(@"Aqui vamos exibir o formulário");
    
    HSFormularioContatoViewController *form = [[HSFormularioContatoViewController alloc] init];
    
    //form.contatos = self.contatos;
    form.delegate = self;
    form.contexto = self.contexto;
    
    [self.navigationController pushViewController:form animated:YES];
}

@end
