//
//  informationViewController.m
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "informationViewController.h"

@implementation informationViewController

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
    
    NSLog(@"information");
    m_informationView = [[UIView alloc]initWithFrame:CGRectMake(0,0,768,1024)];
    self.view = m_informationView;
    
    
    m_webview= [[UIWebView alloc] initWithFrame:CGRectMake(0, 0,768, 600)];
    m_webview.autoresizesSubviews = YES;
    m_webview.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    
    
    [m_informationView addSubview:m_webview];
    
    
    
    
    
    
    
    
    
    
    NSString *urlAddress = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    [m_webview loadRequest:requestObj];
    
    _mcontinuebutton = [UIButton buttonWithType:UIButtonTypeCustom];
    _mcontinuebutton.frame = CGRectMake(300,800,220,100);
    [_mcontinuebutton addTarget:self action:@selector(ButtonContinue) forControlEvents:UIControlEventTouchUpInside];
    [_mcontinuebutton setBackgroundColor:[UIColor blueColor]];
    [_mcontinuebutton setTitle:@"CONTINUE" forState:UIControlStateNormal];
    [m_informationView addSubview:_mcontinuebutton];
    
    
    

    
    
    [super viewDidLoad];
}
-(void)ButtonContinue{
    
    MainmenuViewController *_mMainmenu =[[MainmenuViewController alloc]init];
    [self.navigationController pushViewController:_mMainmenu animated:YES];
    
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
