//
//  MainmenuViewController.m
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "MainmenuViewController.h"

@implementation MainmenuViewController

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
    
    m_pView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 768,1024)];
    m_pView. backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"background.jpg"]]];
    self.view = m_pView;
    //BUTTON MENU
    
    
    
    UILabel *labelMenu = [[UILabel alloc] initWithFrame:
                          CGRectMake(200,50,200,50)];
    labelMenu.backgroundColor = [UIColor clearColor];
    labelMenu.textColor = [UIColor blueColor];
    labelMenu.font = [UIFont boldSystemFontOfSize:25];
    labelMenu.textAlignment = UITextAlignmentCenter;
    labelMenu.text = @"MAIN MENU";
    [m_pView addSubview:labelMenu];
    
    
    UILabel *labelHead1 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 100, 768,2)];
    labelHead1.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead1.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead1.font = [UIFont boldSystemFontOfSize:24];
    labelHead1.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead1];
    
    //BUTTON SEARCH
    
    UIButton *m_btnsearch=[UIButton buttonWithType:UIButtonTypeCustom];
    m_btnsearch.frame = CGRectMake(200,150,300,50);
	
    [ m_btnsearch setTitle:@"SEARCH FOR NEAR BY TREKS" forState:UIControlStateNormal];
    
	[m_btnsearch addTarget:self action:@selector(ButtonSearch) forControlEvents:UIControlEventTouchUpInside];
    // [m_btnMenu1 setBackgroundImage:[UIImage imageNamed :@"09.png"] forState:UIControlStateNormal];
    
    m_btnsearch.titleLabel.font = [UIFont systemFontOfSize:20];
    [m_btnsearch setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
	[m_pView addSubview:m_btnsearch];
    
    
    UILabel *labelHead2 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 250, 768,2)];
    labelHead2.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead2.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead2.font = [UIFont boldSystemFontOfSize:24];
    labelHead2.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead2];
    
    //BUTTON DOWNLOAD
    
    UIButton *m_btndownload=[UIButton buttonWithType:UIButtonTypeCustom];
    m_btndownload.frame = CGRectMake(200,300,300,50);
	
    [ m_btndownload setTitle:@"VIEW DOWNLOADES TREKS" forState:UIControlStateNormal];
    
	[m_btndownload addTarget:self action:@selector(Buttondownload) forControlEvents:UIControlEventTouchUpInside];
    // [m_btnMenu1 setBackgroundImage:[UIImage imageNamed :@"09.png"] forState:UIControlStateNormal];
    
    m_btndownload.titleLabel.font = [UIFont systemFontOfSize:20];
    [m_btndownload setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
	[m_pView addSubview:m_btndownload];
    
    UILabel *labelHead3 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 400, 768,2)];
    labelHead3.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead3.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead3.font = [UIFont boldSystemFontOfSize:24];
    labelHead3.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead3];
    
    //BUTTON STATS
    
    UIButton *m_btnstats=[UIButton buttonWithType:UIButtonTypeCustom];
    m_btnstats.frame = CGRectMake(200,450,100,50);
	
    [ m_btnstats setTitle:@"STATS" forState:UIControlStateNormal];
    
	[m_btnstats addTarget:self action:@selector(Buttonstats) forControlEvents:UIControlEventTouchUpInside];
    // [m_btnMenu1 setBackgroundImage:[UIImage imageNamed :@"09.png"] forState:UIControlStateNormal];
    
    m_btnstats.titleLabel.font = [UIFont systemFontOfSize:20];
    [m_btnstats setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
	[m_pView addSubview:m_btnstats];
    
    UILabel *labelHead4 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 550, 768,2)];
    labelHead4.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead4.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead4.font = [UIFont boldSystemFontOfSize:24];
    labelHead4.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead4];
    
    
    //BUTTON PLAY
    UIButton *m_btnplay=[UIButton buttonWithType:UIButtonTypeCustom];
    m_btnplay.frame = CGRectMake(200,600,200,50);
	
    [ m_btnplay setTitle:@"HOW TO PLAY" forState:UIControlStateNormal];
    
	[m_btnplay addTarget:self action:@selector(Buttonplay) forControlEvents:UIControlEventTouchUpInside];
    // [m_btnMenu1 setBackgroundImage:[UIImage imageNamed :@"09.png"] forState:UIControlStateNormal];
    
    m_btnplay.titleLabel.font = [UIFont systemFontOfSize:20];
    [m_btnplay setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
	[m_pView addSubview:m_btnplay];
    
    UILabel *labelHead5 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 700, 768,2)];
    labelHead5.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead5.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead5.font = [UIFont boldSystemFontOfSize:24];
    labelHead5.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead5];
    
    
    //BUTTON SETTINGS
    UIButton *m_btnsetting=[UIButton buttonWithType:UIButtonTypeCustom];
    m_btnsetting.frame = CGRectMake(200,750,200,50);
	
    [ m_btnsetting setTitle:@"SETTINGS" forState:UIControlStateNormal];
    
	[m_btnsetting addTarget:self action:@selector(ButtonSettings) forControlEvents:UIControlEventTouchUpInside];
    // [m_btnMenu1 setBackgroundImage:[UIImage imageNamed :@"09.png"] forState:UIControlStateNormal];
    
    m_btnsetting.titleLabel.font = [UIFont systemFontOfSize:20];
    [m_btnsetting setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
	[m_pView addSubview:m_btnsetting];
    
    UILabel *labelHead6 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 850, 768,2)];
    labelHead6.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead6.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead6.font = [UIFont boldSystemFontOfSize:24];
    labelHead6.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead6];
    
    //BUTTON SUPPORT
    
    UIButton *m_btnsupport=[UIButton buttonWithType:UIButtonTypeCustom];
    m_btnsupport.frame = CGRectMake(200,900,200,50);
	
    [ m_btnsupport setTitle:@"SUPPORT" forState:UIControlStateNormal];
    
	[m_btnsupport addTarget:self action:@selector(Buttonsupport) forControlEvents:UIControlEventTouchUpInside];
    // [m_btnMenu1 setBackgroundImage:[UIImage imageNamed :@"09.png"] forState:UIControlStateNormal];
    
    m_btnsupport.titleLabel.font = [UIFont systemFontOfSize:20];
    [m_btnsupport setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
	[m_pView addSubview:m_btnsupport];
    
    UILabel *labelHead7 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 1000, 768,2)];
    labelHead7.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead7.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead7.font = [UIFont boldSystemFontOfSize:24];
    labelHead7.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead7];
    
    
       

    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return NO;
    
    
}

-(void)ButtonSearch
{
    FindTrekViewController *findtrek = [FindTrekViewController alloc];
    [self.navigationController pushViewController:findtrek animated:YES];
    NSLog(@"Button Pressed!");
}
-(void)Buttondownload
{
    FindTrekViewController *findtrek = [FindTrekViewController alloc];
    [self.navigationController pushViewController:findtrek animated:YES];
    NSLog(@"Button Pressed!");
}
-(void)Buttonstats
{
    FindTrekViewController *findtrek = [FindTrekViewController alloc];
    [self.navigationController pushViewController:findtrek animated:YES];
    NSLog(@"Button Pressed!");
}
-(void)Buttonplay
{
    clueListViewController *clueList = [clueListViewController alloc];
    [self.navigationController pushViewController:clueList animated:YES];
    NSLog(@"Button Pressed!");
}
-(void)ButtonSettings
{
    FindTrekViewController *findtrek = [FindTrekViewController alloc];
    [self.navigationController pushViewController:findtrek animated:YES];
    NSLog(@"Button Pressed!");
}




- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
