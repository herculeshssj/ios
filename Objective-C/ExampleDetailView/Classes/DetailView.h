//
//  DetailView.h
//  ExampleDetailView
//
//  Created by user on 12/6/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailView : UIViewController {
    
    IBOutlet UILabel *ibLabel;
    NSString *dataSent;
}

@property (nonatomic,retain) NSString *dataSent;

@end
