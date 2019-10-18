//
//  ExamplePickerViewViewController.m
//  ExamplePickerView
//
//  Created by user on 9/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExamplePickerViewViewController.h"

@implementation ExamplePickerViewViewController
@synthesize pickerAray;

- (IBAction)BClicked:(id)sender {
    NSInteger row = [MyPickerView selectedRowInComponent:0];
    NSString *c = [pickerAray objectAtIndex:row];
    
    UIAlertView *msg = [[UIAlertView alloc] 
                        initWithTitle:@"PickerView value" 
                        message:c
                        delegate:nil cancelButtonTitle:@"OK"
                        otherButtonTitles:nil, nil];
    [msg show];
    
    [msg release];
}




- (IBAction)clicked:(id)sender 
{


    

}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [pickerAray count];
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [pickerAray objectAtIndex:row];
    
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

    NSArray *tempArray = [[NSArray alloc] initWithObjects:@"First",@"Second",@"Third",@"Forth", nil];
    
    self.pickerAray = tempArray;
    
    [tempArray release];
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
    
    [pickerAray release];
    
    
}


- (void)dealloc {
    [MyPickerView release];
    [super dealloc];
}

@end
