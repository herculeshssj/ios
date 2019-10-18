//
//  ExampleReadWriteDataViewController.m
//  ExampleReadWriteData
//
//  Created by user on 2/22/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleReadWriteDataViewController.h"
#import "sqlite3.h"
@implementation ExampleReadWriteDataViewController
@synthesize txtAuthor,txtTitle,txtPriceAuthor,lStatus;


- (IBAction)Save:(id)sender 
{

    sqlite3_stmt *sta_cursor;
    
    const char *dbpath = [databasePath UTF8String];
    
    if(sqlite3_open(dbpath, &books) == SQLITE_OK)
    {
        
        NSString *insertSQL = [NSString stringWithFormat:@"insert into books(author,title,price) values(\"%@\",\"%@\",%@)", txtAuthor.text, txtTitle.text,txtPrice.text];
       
        const char *insert_sta = [insertSQL UTF8String];
        
        sqlite3_prepare_v2(books, insert_sta,-1, &sta_cursor, NULL);
        
        if(sqlite3_step(sta_cursor) == SQLITE_DONE)
        {
            lStatus.text = @"Book added!";
            txtAuthor.text = @"";
            txtTitle.text = @"";
            txtPrice.text = @"";
            
        }
        else
        {
            lStatus.text = @"Failed to add book";
        }
        
        sqlite3_finalize(sta_cursor);
        sqlite3_close(books);
        
        
    }

    
    
    
    

}

- (IBAction)Find:(id)sender 
{

    sqlite3_stmt *sta_cursor;
    
    const char *dbpath = [databasePath UTF8String];
    
    if(sqlite3_open(dbpath, &books) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:@"select title, price from books where author = \"%@\"",txtAuthor.text];
        
        
        const char *query_stmt = [querySQL UTF8String];
        
        if(sqlite3_prepare_v2(books,query_stmt, -1, &sta_cursor, NULL) == SQLITE_OK)
        {
            if(sqlite3_step(sta_cursor) == SQLITE_ROW)
            {
                NSString *title = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(sta_cursor, 0)];
                
                
                NSString *price = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(sta_cursor, 1)];
                
                
                txtTitle.text = title;
                txtPrice.text = price;
                
                lStatus.text = @"Match found!";
                
                [title release];
                [price release];
                
                
                
            }
            else
            {    
                txtTitle.text = @"";
                txtPrice.text = @"";
                
                lStatus.text = @"Match not found!";
                
            }   
                
            sqlite3_finalize(sta_cursor);
            
        }
        
        sqlite3_close(books);
        
        
    }
        

}

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
- (void)viewDidLoad 
{

    NSString *booksDir;
    
    booksDir = @"/tmp/";
    
    
    databasePath = [[NSString alloc] initWithString:[booksDir stringByAppendingPathComponent:@"books.db"]];
    
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: databasePath] == NO)
    {
        
        const char *dbpath = [databasePath UTF8String];
        
        if(sqlite3_open(dbpath,&books) == SQLITE_OK)
        {
            char *errMsg;
            
            const char *sql_stmt = "CREATE TABLE books (id integer primary key autoincrement, author text, title text, price interger)";
            
            if(sqlite3_exec(books, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                    lStatus.text = @"Failed to create table";
            }
            
            sqlite3_close(books);
            
            
        }
        else
        {
            lStatus.text = @"Failed to open/create database"; 
        }
    }
    
    
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
    [txtAuthor release];
    [txtTitle release];
    [txtPrice release];
    [lStatus release];
    [super dealloc];
}

@end
