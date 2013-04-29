//
//  TrekDetailsViewController.m
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "TrekDetailsViewController.h"

@implementation TrekDetailsViewController
@synthesize trekLabel,descLabel,museumLabel, charimage,ratingLabel,finishLabel,easyLabel,avgLabel;


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
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"background.jpg"]]];
    
    charimage = [[UIImageView alloc]initWithFrame:CGRectMake(7, 15, 50, 60)];
    charimage.image = [UIImage imageNamed:@"catcartoon.jpg"];
    
    trekLabel = [[UILabel alloc]init];
    trekLabel.frame = CGRectMake(70, 20, 100, 20);
    trekLabel.textAlignment = UITextAlignmentLeft;
    trekLabel.font = [UIFont systemFontOfSize:10];
    trekLabel.backgroundColor = [UIColor clearColor];
    trekLabel.textColor =[UIColor blueColor];
    trekLabel.text = @"Trek Name";
    
    descLabel = [[UILabel alloc]init];
    descLabel.frame = CGRectMake(70, 50,100, 20);
    descLabel.textAlignment = UITextAlignmentLeft;
    descLabel.font = [UIFont systemFontOfSize:10];
    descLabel.backgroundColor = [UIColor clearColor];
    descLabel.textColor =[UIColor blueColor];
    descLabel.text = @"Description";
    
    
    museumLabel = [[UILabel alloc]init];
    museumLabel.frame = CGRectMake(70, 100,100, 20);
    museumLabel.textAlignment = UITextAlignmentLeft;
    museumLabel.font = [UIFont systemFontOfSize:10];
    museumLabel.backgroundColor = [UIColor clearColor];
    museumLabel.textColor =[UIColor blueColor];
    museumLabel.text = @"Museum Name";
    
    
    
    
    
    
    ratingLabel = [[UILabel alloc]init];
    ratingLabel.frame = CGRectMake(150, 20,100, 20);
    ratingLabel.textAlignment = UITextAlignmentCenter;
    ratingLabel.font = [UIFont systemFontOfSize:10];
    ratingLabel.backgroundColor = [UIColor clearColor];
    ratingLabel.textColor =[UIColor blueColor];
    ratingLabel.text = @"rating";
    
    charimage1 = [[UIImageView alloc]initWithFrame:CGRectMake(180, 40, 10,10)];
    charimage1.image = [UIImage imageNamed:@"star_icon.png"];
    charimage2 = [[UIImageView alloc]initWithFrame:CGRectMake(200, 40, 10,10)];
    charimage2.image = [UIImage imageNamed:@"star_icon.png"];

    charimage3 = [[UIImageView alloc]initWithFrame:CGRectMake(220, 40, 10,10)];
    charimage3.image = [UIImage imageNamed:@"star_icon.png"];

    charimage4 = [[UIImageView alloc]initWithFrame:CGRectMake(240, 40, 10,10)];
    charimage4.image = [UIImage imageNamed:@"star_icon.png"];

    charimage5 = [[UIImageView alloc]initWithFrame:CGRectMake(260, 40, 10,10)];
    charimage5.image = [UIImage imageNamed:@"star_icon.png"];

    
    
    
    
    finishLabel = [[UILabel alloc]init];
    finishLabel.frame = CGRectMake(20, 150, 100, 20);
    finishLabel.textAlignment = UITextAlignmentLeft;
    finishLabel.font = [UIFont systemFontOfSize:10];
    
    finishLabel.backgroundColor = [UIColor clearColor];
    finishLabel.textColor =[UIColor blueColor];
    finishLabel.text = @"Trek Name";
    

    
    easyLabel = [[UILabel alloc]init];
    easyLabel.frame = CGRectMake(20, 200,100, 15);
    easyLabel.textAlignment = UITextAlignmentLeft;
    easyLabel.font = [UIFont systemFontOfSize:10];
    easyLabel.backgroundColor = [UIColor clearColor];
    easyLabel.textColor =[UIColor blueColor];
    easyLabel.text = @"Trek Name";
    

    
    avgLabel = [[UILabel alloc]init];
    avgLabel.frame = CGRectMake(20, 250,100, 15);
    avgLabel.textAlignment = UITextAlignmentLeft;
    avgLabel.font = [UIFont systemFontOfSize:10];
    avgLabel.backgroundColor = [UIColor clearColor];
    avgLabel.textColor =[UIColor blueColor];
    avgLabel.text = @"Trek Name";
    
    
    
    
    
    
      
    
    [self.view addSubview:trekLabel];
    [self.view addSubview:descLabel];
    [self.view addSubview:museumLabel];
    [self.view addSubview:ratingLabel];
    [self.view addSubview:easyLabel];
    [self.view addSubview:avgLabel];
    
    [self.view addSubview:charimage];
     [self.view addSubview:charimage1];
    [self.view addSubview:charimage2];
    [self.view addSubview:charimage3];
    [self.view addSubview:charimage4];
    [self.view addSubview:charimage5];
    

    
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
