//
//  ViewController.h
//  OlaMundo
//
//  Created by ios4193 on 29/03/14.
//  Copyright (c) 2014 Caelum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,weak) IBOutlet UITextField *campo;
@property(nonatomic,weak) IBOutlet UILabel *label;


@property (weak, nonatomic) IBOutlet UITextField *campo1;
@property (weak, nonatomic) IBOutlet UITextField *campo2;
@property (weak, nonatomic) IBOutlet UILabel *resultado;
@property (weak, nonatomic) IBOutlet UISlider *slider1;

@property (weak, nonatomic) IBOutlet UISlider *slider2;


- (IBAction)atualizaValor1:(id)sender;

- (IBAction)atualizaValor2:(id)sender;

- (IBAction)pegaDados:(id)sender;

- (IBAction)atualizaLabel:(id)sender;

- (IBAction)soma:(id)sender;

@end
