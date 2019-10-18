//
//  ExampleDirectoryViewController.m
//  ExampleDirectory
//
//  Created by user on 2/7/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleDirectoryViewController.h"

@implementation ExampleDirectoryViewController

- (IBAction)Clicked:(id)sender 
{

/*    
    // Get the current path
    NSFileManager *f;
    NSString *currentPath;
    
    f = [NSFileManager defaultManager];
    currentPath = [f currentDirectoryPath];
    
    NSLog(@"The path:%@",currentPath);
    
    [f release];
*/
    
    /*
    
     // Get the Documents directory for the App
     
     NSArray *dir;
     NSString *docsDir;
     
     dir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSDocumentDirectory, YES);
     
     docsDir = [dir objectAtIndex:0];
     
     
     NSLog(@"The Docs path:%@",docsDir);
     */
    
    /*
    // Create a new Directory
    
    NSFileManager *filemgr;
    NSArray *dirPaths;
    NSString *docsDir;
    NSString *newDir;
    
    filemgr = [NSFileManager defaultManager];
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = [dirPaths  objectAtIndex:0];
    newDir = [docsDir stringByAppendingPathComponent:@"data"];
    
    if( [filemgr createDirectoryAtPath:newDir attributes:nil] == YES)
    {
        NSLog(@"Directory %@ created with sucess!",newDir);
        
    }
    else
    {
        NSLog(@"Error creating directory!");
        
    }
    
    [filemgr release];
    */
    
    
    /*
     // Deleting a directory
     NSFileManager *filemgr;
     NSArray *dirPaths;
     NSString *docsDir;
     NSString *newDir;
     
     filemgr = [NSFileManager defaultManager];
     dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
     
     docsDir = [dirPaths  objectAtIndex:0];
     newDir = [docsDir stringByAppendingPathComponent:@"data"];
     
     if( [filemgr removeItemAtPath:newDir error:nil] == YES)
     {
         NSLog(@"Directory %@ deleted with sucess!",newDir);
     
     }
     else
     {
         NSLog(@"Error deleting directory!");
     
     }
     
     [filemgr release];
*/
    
    
    
     // Listing the contents of a directory
     
     NSFileManager *filemgr;
     NSArray *fileList;
     NSArray *dirPaths;
     NSString *docsDir;
     
     int count;
     int i;
     
     filemgr = [NSFileManager defaultManager];
     
     dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
     
     docsDir = [dirPaths  objectAtIndex:0];
     
     
     fileList = [filemgr contentsOfDirectoryAtPath:docsDir error:NULL];
     count = [fileList count];
     
     for(i = 0;i< count;i++)
     {
     
         NSLog(@"File: %@",[fileList objectAtIndex:i]);
     
     }
     
     [filemgr release];
     

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
