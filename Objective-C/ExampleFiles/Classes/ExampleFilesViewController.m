//
//  ExampleFilesViewController.m
//  ExampleFiles
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleFilesViewController.h"

@implementation ExampleFilesViewController


- (IBAction)Clicked:(id)sender 
{
    
    /* Checking if a File Exists */
    
    /*
    NSFileManager *filemgr;
    
    filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: @"/tmp/myfile.txt" ] == YES)
        NSLog (@"File exists");
    else
        NSLog (@"File not found");
   
    [filemgr release];
     */
    
    
    /* Comparing the Contents of Two Files  */
    /*
    NSFileManager *filemgr;
    
    filemgr = [NSFileManager defaultManager];
    
    if ([filemgr contentsEqualAtPath: @"/tmp/myfile.txt" andPath: @"/tmp/sales.txt"] == YES)
        NSLog (@"File contents match");
    else
        NSLog (@"File contents do not match");
    
    [filemgr release];
     */
    
    
    /* Checking if a File is Readable/Writable/Executable/Deletable  */
    
    /*
    NSFileManager *filemgr;
    
    filemgr = [NSFileManager defaultManager];
    
    if ([filemgr isWritableFileAtPath: @"/tmp/myfile.txt"]  == YES)
        NSLog (@"File is writable");
    else
        NSLog (@"File is read only");
   
    [filemgr release];
    */
    
    
    /* Moving/Renaming a File  */
    
    /*
    NSFileManager *filemgr;
    
    filemgr = [NSFileManager defaultManager];
    
    if ([filemgr moveItemAtPath: @"/tmp/myfile.txt" toPath: @"/tmp/newfile.txt" error: NULL]  == YES)
        NSLog (@"Move successful");
    else
        NSLog (@"Move failed");
    
    [filemgr release];
    */
    
    
    /* Copying a File  */
    /*
    NSFileManager *filemgr;
    
    filemgr = [NSFileManager defaultManager];
    
    if ([filemgr copyItemAtPath: @"/tmp/newfile.txt" toPath: @"/tmp/newfile_copy.txt" error: NULL]  == YES)
        NSLog (@"Copy successful");
    else
        NSLog (@"Copy failed");
    
    [filemgr release];
*/
    
    /* Removing a File  */
    
    /*
    NSFileManager *filemgr;
    
    filemgr = [NSFileManager defaultManager];
    
    if ([filemgr removeItemAtPath: @"/tmp/newfile.txt" error: NULL]  == YES)
        NSLog (@"Remove successful");
    else
        NSLog (@"Remove failed");
    
    [filemgr release];
    */
    
    
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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
