//
//  ExampleReadWriteViewController.m
//  ExampleReadWrite
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleReadWriteViewController.h"

@implementation ExampleReadWriteViewController

- (IBAction)Save:(id)sender 
{

    NSFileManager *filemgr;
    NSData *databuffer;
    NSString *datafile;
    NSString *docDir;
    NSArray *dirPath;
    
    filemgr = [NSFileManager defaultManager];
    
    dirPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docDir = [dirPath objectAtIndex:0];
    
    datafile = [docDir stringByAppendingPathComponent:@"datafile.dat"];
    
    databuffer = [txtData.text dataUsingEncoding:NSASCIIStringEncoding];
    
    [filemgr createFileAtPath:datafile contents:databuffer attributes:nil];
    
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
   NSFileManager *filemgr;

    NSString *datafile;
    NSString *docDir;
    NSArray *dirPath;
    
    filemgr = [NSFileManager defaultManager];
    
    dirPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docDir = [dirPath objectAtIndex:0];
    
    datafile = [docDir stringByAppendingPathComponent:@"datafile.dat"];
    
    
    if([filemgr fileExistsAtPath:datafile])
    {
        NSData *databuffer;
        
        databuffer = [filemgr contentsAtPath:datafile];
        
        NSString *datastring = [[NSString alloc] initWithData:databuffer encoding:NSASCIIStringEncoding];
        
        txtData.text = datastring;
        
        [datastring release];
        
        
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
    [txtData release];
    [super dealloc];
}

@end
