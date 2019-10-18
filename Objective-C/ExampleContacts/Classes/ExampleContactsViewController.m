//
//  ExampleContactsViewController.m
//  ExampleContacts
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleContactsViewController.h"

@implementation ExampleContactsViewController



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
    [super viewDidLoad];

    ABAddressBookRef addressBook = ABAddressBookCreate();
    
    NSArray *arrTemp = (NSArray *) ABAddressBookCopyArrayOfAllPeople(addressBook);
    
    
    for(int i =0; i < [arrTemp count];i++)
    {
        ABRecordRef recordRef = [arrTemp objectAtIndex:i];
        
        
        NSString *name = (NSString *) ABRecordCopyValue(recordRef, kABPersonFirstNameProperty);
        
        
        NSLog(@"First name: %@",name);
        
        ABMultiValueRef phones = ABRecordCopyValue(recordRef, kABPersonPhoneProperty);
        
        
        for(CFIndex j = 0; j< ABMultiValueGetCount(phones);j++)
        {
            NSString *phoneNumber = (NSString *) ABMultiValueCopyValueAtIndex(phones, j);
            
            NSLog(@"Phone: %@",phoneNumber);
            
            
        }
        
        
    }
    

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
