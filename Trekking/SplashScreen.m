//
//  SplashScreen.m
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "SplashScreen.h"

@implementation SplashScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    m_simage = nil;
    m_splash = nil;


    return self;
}

- (void)dealloc
{
    if(m_splash)
    {
        [m_splash removeFromSuperview];
        m_splash = nil;
    }
    if(m_simage)
    {
        [m_simage removeFromSuperview];
        m_simage = nil;
    }
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
    
    
    m_splash = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 768, 1024)];
    self.view = m_splash;
    
    m_simage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0,768, 1024)];
    [m_simage setImage:[UIImage imageNamed:@"catcartoon.jpg"]];
    [m_splash addSubview:m_simage];
    

    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
