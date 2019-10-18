//
//  ExampleReadDataViewController.m
//  ExampleReadData
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleReadDataViewController.h"
#import "sqlite3.h"

@implementation ExampleReadDataViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {

    sqlite3 *mydatabase;
    
    NSString *path = @"/tmp/database.db";
    
    
    const char *dbpath = [path UTF8String];
    
    if (sqlite3_open(dbpath, &mydatabase) == SQLITE_OK)
    {
        NSLog(@"Open successfully");
    }
    else
    {
        NSInteger i = sqlite3_errcode(mydatabase);
        
        NSLog(@"Error: %d",i);
    }
    
    sqlite3_stmt *sta;
    
    NSString *q = @"select col1, col2 from mytable";

    
    const char *query_string = [q UTF8String];
    
    if (sqlite3_prepare_v2(mydatabase, query_string, -1, &sta,NULL) == SQLITE_OK)
    {
        NSLog(@"SQL OK");
    }
    else
    {
        NSInteger j = sqlite3_errcode(mydatabase);
        
        NSLog(@"SQL Error: %d",j);
        
    }
    
    while(sqlite3_step(sta) == SQLITE_ROW)
    {
        NSInteger c1 = sqlite3_column_int(sta, 0);
        
        NSString *c2 = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(sta, 1)];
        
        
        NSLog(@"Column1: %d ",c1);
        NSLog(@"Column2: %@",c2);
        
    }
    
    sqlite3_finalize(sta);
    
    sqlite3_close(mydatabase);
    
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
