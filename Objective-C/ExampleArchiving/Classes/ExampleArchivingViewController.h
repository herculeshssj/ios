//
//  ExampleArchivingViewController.h
//  ExampleArchiving
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExampleArchivingViewController : UIViewController {

    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtAddress;
    IBOutlet UITextField *txtPhone;
    
    NSString *dataFilePath;
    
}

@property (nonatomic,retain) NSString *dataFilePath;


@end
