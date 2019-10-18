//
//  ExampleCallAppsViewController.m
//  ExampleCallApps
//
//  Created by user on 3/12/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ExampleCallAppsViewController.h"

@implementation ExampleCallAppsViewController

- (IBAction)CallTelephone:(id)sender 
{

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://5511123456789"]];
    

}
- (IBAction)SendSMS:(id)sender 
{

    MFMessageComposeViewController *c = [[[MFMessageComposeViewController alloc] init] autorelease];
    
    
    if([MFMessageComposeViewController canSendText])
    {
        c.body = @"Body of SMS";
        c.recipients = [NSArray arrayWithObjects:@"1122245678",@"22123451", nil];
        
        c.messageComposeDelegate = self;
        [self presentViewController:c animated:YES completion:nil];
    }

}


-(void) messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)SendEmail:(id)sender 
{

    MFMailComposeViewController *mail;
    
    mail = [[MFMailComposeViewController alloc] init];
    
    mail.mailComposeDelegate = self;
    
    [mail setModalPresentationStyle:UIModalPresentationFormSheet];
    [mail setToRecipients:[NSArray arrayWithObjects:@"a@a.com", @"b@b.com", nil]];
    [mail setSubject:@"My subject"];
    [mail setMessageBody:@"This is the message in the e-mail" isHTML:NO];
    [self presentViewController:mail animated:YES completion:nil];
    [mail release];
    
}

-(void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
