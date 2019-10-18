//
//  ExampleArchivingViewController.m
//  ExampleArchiving
//
//  Created by user on 2/20/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleArchivingViewController.h"

@implementation ExampleArchivingViewController
@synthesize dataFilePath;


- (IBAction)Save:(id)sender
{
    NSMutableArray *contactArray;
    
    contactArray = [[NSMutableArray alloc] init];
    
    [contactArray addObject:txtName.text];
    [contactArray addObject:txtAddress.text];
    [contactArray addObject:txtPhone.text];
    
    [NSKeyedArchiver archiveRootObject:contactArray toFile:dataFilePath];
    
    [contactArray release];
    
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
- (void)viewDidLoad {

    NSFileManager *filemgr;
    NSString *docDir;
    NSArray *dirPaths;
    
    
    filemgr = [NSFileManager defaultManager];
    
    
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docDir = [dirPaths objectAtIndex:0];
    
    dataFilePath = [[NSString alloc] initWithString:[docDir stringByAppendingPathComponent:@"data.archive"]];
    
    if([filemgr fileExistsAtPath:dataFilePath])
    {
        
        NSMutableArray *dataArray;
        
                
        dataArray = [NSKeyedUnarchiver unarchiveObjectWithFile:dataFilePath];
        
        txtName.text = [dataArray objectAtIndex:0];
        txtAddress.text = [dataArray objectAtIndex:1];
        txtPhone.text = [dataArray objectAtIndex:2];
        
        
    }
    
    [filemgr release];
    
    
    
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
    [dataFilePath release];
    [txtName release];
    [txtAddress release];
    [txtPhone release];
    [super dealloc];
}

@end
