//
//  ExampleReadWriteDataViewController.h
//  ExampleReadWriteData
//
//  Created by user on 2/22/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite3.h"

@interface ExampleReadWriteDataViewController : UIViewController {

    IBOutlet UITextField *txtAuthor;
    IBOutlet UITextField *txtTitle;
    IBOutlet UITextField *txtPrice;
    IBOutlet UILabel *lStatus;
    NSString *databasePath;
    
    sqlite3 *books;
}

@property (retain,nonatomic) IBOutlet UITextField *txtAuthor;
@property (retain,nonatomic) IBOutlet UITextField *txtTitle;
@property (retain,nonatomic) IBOutlet UITextField *txtPriceAuthor;
@property (retain,nonatomic) IBOutlet UILabel *lStatus;


@end
