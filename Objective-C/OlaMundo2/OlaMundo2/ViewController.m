//
//  ViewController.m
//  OlaMundo2
//
//  Created by Hercules S S Jose on 04/04/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize meuLabel, meuCampoTexto;

- (IBAction)atualizaLabel:(id)sender {
    [self.meuLabel setText:[self.meuCampoTexto text]];
    NSLog(@"Digitado pelo usuário: %@", [self.meuCampoTexto text]);
}

- (IBAction)somaNumeros:(id)sender {
    int primeiro = [[self.paraSomar1 text] intValue];
    int segundo = [[self.paraSomar2 text] intValue];
    int resultado = primeiro + segundo;
    
    NSString *resultadoString = [NSString stringWithFormat:@"Resultado: %d", resultado];
    [self.meuLabel setText:resultadoString];
}

- (IBAction)atualizaValor1:(id)sender {
    NSString *valor = [NSString stringWithFormat:@"%f", [self.slider1 value]];
    [self.paraSomar1 setText:valor];
}

- (IBAction)atualizaValor2:(id)sender {
    NSString *valor = [NSString stringWithFormat:@"%f", [self.slider2 value]];
    [self.paraSomar2 setText:valor];
}

- (IBAction)calculaTabuada:(id)sender {
    int resultado = 0;
    for (int multiplicador = 1; multiplicador <= 10; multiplicador++) {
        resultado = [[self.tabuada text] intValue] * multiplicador;
        NSLog(@"%@ x %d = %d", [self.tabuada text], multiplicador, resultado);
        
        if (multiplicador == 10) {
            NSLog(@"Fim da tabuada.");
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
