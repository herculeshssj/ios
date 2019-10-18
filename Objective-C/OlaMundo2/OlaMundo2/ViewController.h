//
//  ViewController.h
//  OlaMundo2
//
//  Created by Hercules S S Jose on 04/04/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *meuLabel;
@property (nonatomic, weak) IBOutlet UITextField *meuCampoTexto;

@property (nonatomic, weak) IBOutlet UITextField *paraSomar1;
@property (nonatomic, weak) IBOutlet UITextField *paraSomar2;

@property (nonatomic, weak) IBOutlet UISlider *slider1;
@property (nonatomic, weak) IBOutlet UISlider *slider2;

@property (nonatomic, weak) IBOutlet UITextField *tabuada;

- (IBAction)atualizaLabel:(id)sender;
- (IBAction)somaNumeros:(id)sender;

- (IBAction)atualizaValor1:(id)sender;
- (IBAction)atualizaValor2:(id)sender;

- (IBAction)calculaTabuada:(id)sender;

@end
