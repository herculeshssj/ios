//
//  ViewController.m
//  OlaMundo
//
//  Created by ios4193 on 29/03/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize campo, label;
@synthesize campo1, campo2, resultado;

@synthesize slider1, slider2;

- (IBAction)atualizaValor1:(id)sender {
    NSString *valor = [NSString stringWithFormat:@"%f", [self.slider1 value]];
    [campo1 setText:valor];
}

- (IBAction)atualizaValor2:(id)sender {
    NSString *valor = [NSString stringWithFormat:@"%f", [self.slider2 value]];
    [campo2 setText:valor];
}

-(IBAction)pegaDados:(id)sender {
    //[label setText:[campo text]]; <- seta direto
    NSString * texto = [campo text]; // <- uso de variável
    [label setText:texto];
}

- (IBAction)atualizaLabel:(id)sender {
    NSLog(@"Digitado pelo usuário: %@", [self.campo text]);
}

- (IBAction)soma:(id)sender {
    int n1 = [[campo1 text] intValue];
    int n2 = [[campo2 text] intValue];
    int result = n1 + n2;
    [resultado setText:[NSString stringWithFormat:@"%d", result]];
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
