//
//  viewMapViewController.m
//  Trekking
//
//  Created by Krithiga on 29/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "viewMapViewController.h"

@implementation viewMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
   viewmap = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, 768, 900)];
    
    viewmap.delegate = self;
    
    [self.view addSubview:viewmap];
    
    
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 900, 768, 80)];
    //[toolbar sizeToFit];
    // [toolBar barStyle  UIBarStyleDefault]; 
    
    UIBarButtonItem *systemItem1= [[UIBarButtonItem alloc]initWithTitle:@"Refresh" style:UIBarButtonItemStyleDone target:self action:@selector(refresh:)];
    // UIBarButtonItem *systemItem1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(reqTrek:)];
        
    //Use this to put space in between your toolbox buttons
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    //Add buttons to the array
    NSArray *items = [NSArray arrayWithObjects: systemItem1, flexItem,   nil];
    
    
    //add array of buttons to toolbar
    [toolbar setItems:items animated:NO];
    
    [self.view  addSubview:toolbar];

    
    
    
    
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(void)refresh
{

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
