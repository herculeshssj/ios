//
//  HSAppDelegate.h
//  HSlife Contatos
//
//  Created by Hercules S S Jose on 27/04/14.
//  Copyright (c) 2014 HSlife Serviços de TI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong) NSMutableArray *contatos;

@property (strong) NSString *arquivoContatos;

@property (readonly, strong) NSManagedObjectContext *contexto;

@end
