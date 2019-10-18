//
//  ExempleUIImageViewViewController.h
//  ExempleUIImageView
//
//  Created by user on 8/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExempleUIImageViewViewController : UIViewController {

    IBOutlet UIImageView *img;
    
    IBOutlet UIActivityIndicatorView *activity;
}

-(void) downloadImage;

@end
