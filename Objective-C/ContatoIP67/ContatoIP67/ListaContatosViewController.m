//
//  ListaContatos.m
//  ContatoIP67
//
//  Created by ios4193 on 05/04/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import "ListaContatosViewController.h"
#import "FormularioContatoViewController.h"
#import "Contato.h"

@implementation ListaContatosViewController

@synthesize contatos;

- (id) init {
    self = [super init];
    if (self) {
        UIImage *imageTabItem = [UIImage imageNamed:@"lista-contatos.png"];
        UITabBarItem *tabItem = [[UITabBarItem alloc] initWithTitle:@"Contatos" image:imageTabItem tag:0];
        self.tabBarItem = tabItem;
        
        self.navigationItem.title = @"Contatos";
        
        UIBarButtonItem *botaoExibirFormulario = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(exibeFormulario)];
        
        self.navigationItem.rightBarButtonItem = botaoExibirFormulario;
        self.navigationItem.leftBarButtonItem = self.editButtonItem;
    }
    self.linhaDestaque = -1;
    return self;
}

- (void) exibeFormulario {
    FormularioContatoViewController *form = [[FormularioContatoViewController alloc]init];
    
    //form.navigationItem.title = @"Cadastro";
    
    form.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    //form.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    //form.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //form.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    
    //[self presentModalViewController:form animated:YES]; // <-- método depreciado
    
    //[self presentViewController:form animated:YES completion:nil];
    [self.navigationController pushViewController:form animated:YES]; // <-- o modalTransitionStyle não funciona com o pushViewController
    
    form.contatos = self.contatos;
    form.delegate = self;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.contatos count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    }
    
    Contato *contato = self.contatos[indexPath.row];
    cell.textLabel.text = contato.nome;
    
    
    return cell;
}

- (void) viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

-(void) viewDidAppear:(BOOL)animated {
    if (self.linhaDestaque >= 0) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.linhaDestaque inSection:0];
        [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionTop];
    }
    
    /*
    if (self.linhaDestaque >= 0) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.linhaDestaque inSection:0];
        [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionBottom];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
        self.linhaDestaque = -1;
    }
     */
}

- (void) viewDidLoad {
    [super viewDidLoad];
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(exibeMaisAcoes:)];
    
    [self.tableView addGestureRecognizer:longPress];
}

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contatos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Contato *contato = self.contatos[indexPath.row];
    //NSLog(@"Nome: %@", contato.nome);
    FormularioContatoViewController *form = [[FormularioContatoViewController alloc]initWithContato:contato];
    form.contatos = self.contatos;
    form.delegate = self;
    
    [self.navigationController pushViewController:form animated:YES];
}

-(void)contatoAtualizado:(id)contato {
    self.linhaDestaque = [self.contatos indexOfObject:contato];
    // Alerta
    
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Contatos" message:@"Contato atualizado com sucesso!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alerta show];
    
    NSLog(@"Contato atualizado: %d", [self.contatos indexOfObject:contato]);
}

-(void)contatoAdicionado:(id)contato {
    self.linhaDestaque = [self.contatos indexOfObject:contato];
    // Alerta
    
    UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@"Contatos" message:@"Contato cadastrado com sucesso!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [alerta show];
    
    NSLog(@"Contato adicionado: %d", [self.contatos indexOfObject:contato]);
}

- (void)exibeMaisAcoes:(UIGestureRecognizer *)gesture {
    if (gesture.state == UIGestureRecognizerStateBegan) {
        CGPoint ponto = [gesture locationInView:self.tableView];
        NSIndexPath *index = [self.tableView indexPathForRowAtPoint:ponto];
        Contato *contato = self.contatos[index.row];
        
        contatoSelecionado = contato;
        
        UIActionSheet *opcoes = [[UIActionSheet alloc] initWithTitle:contato.nome delegate:self cancelButtonTitle:@"Cancelar" destructiveButtonTitle:nil otherButtonTitles:@"Ligar", @"Enviar e-mail",@"Ver site",@"Abrir mapa", nil];
        [opcoes showInView:self.view];
    }
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            [self ligar];
            break;
        case 1:
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

-(void) ligar{
    UIDevice *device = [UIDevice currentDevice];
    if ([device.model isEqualToString:@"iPhone"]) {
        NSString *numero = [NSString stringWithFormat:@"tel:%@", contatoSelecionado.telefone];
        [self abrirAplicativoComURL:numero];
    } else {
        [[[UIAlertView alloc] initWithTitle:@"Impossível fazer ligação" message:@"Seu dispositivo não é um iPhone" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
}

-(void) enviarEmail {
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *enviadorEmail = [[MFMailComposeViewController alloc] init];
        enviadorEmail.mailComposeDelegate = self;
        
        [enviadorEmail setToRecipients:@[contatoSelecionado.email]];
        [enviadorEmail setSubject:@"Caelum"];
        
        [self presentViewController:enviadorEmail animated:YES completion:nil];
    } else {
        [[[UIAlertView alloc] initWithTitle:@"Impossível enviar e-mail" message:@"Não é possível enviar e-mail" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
}

-(void) abrirSite {
    NSString *url = [NSString stringWithFormat:@"http://%@", contatoSelecionado.site];
    [self abrirAplicativoComURL:url];
}

-(void)mostrarMapa {
    NSString *url = [[NSString stringWithFormat:@"http://maps.google.com/maps?q=%@", contatoSelecionado.endereco]stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self abrirAplicativoComURL:url];
}

-(void)abrirAplicativoComURL:(NSString *)url {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
