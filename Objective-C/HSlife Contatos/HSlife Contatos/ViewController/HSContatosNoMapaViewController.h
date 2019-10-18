//
//  HSContatosNoMapaViewController.h
//  HSContatos
//
//  Created by Hercules S S Jose on 17/06/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MKMapView.h>

@interface HSContatosNoMapaViewController : UIViewController<MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapa;
@property (weak, nonatomic) NSMutableArray *contatos;

@end
