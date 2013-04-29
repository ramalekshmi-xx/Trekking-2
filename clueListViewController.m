//
//  clueListViewController.m
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "clueListViewController.h"

@implementation clueListViewController
@synthesize m_list,m_array;

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
    
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.title = @"Find a Trek";
    
    
    
    m_pView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 768,1024)];
    m_pView. backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"background.jpg"]]];
    self.view = m_pView;
    

    
    
    UILabel *labelMenu = [[UILabel alloc] initWithFrame:
                          CGRectMake(60,30,250,50)];
    labelMenu.backgroundColor = [UIColor clearColor];
    labelMenu.textColor = [UIColor blueColor];
    labelMenu.font = [UIFont boldSystemFontOfSize:25];
    labelMenu.textAlignment = UITextAlignmentCenter;
    labelMenu.text = @"TREK NAME";
    [m_pView addSubview:labelMenu];
    
    
    UILabel *labelHead1 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 80, 768,2)];
    labelHead1.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead1.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead1.font = [UIFont boldSystemFontOfSize:24];
    labelHead1.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead1];
    
    
    UILabel *labelClue = [[UILabel alloc] initWithFrame:
                          CGRectMake(80,100,200,50)];
    labelClue.backgroundColor = [UIColor clearColor];
    labelClue.textColor = [UIColor blueColor];
    labelClue.font = [UIFont boldSystemFontOfSize:25];
    labelClue.textAlignment = UITextAlignmentCenter;
    labelClue.text = @"CLUE LIST";
    [m_pView addSubview:labelClue];
    
    UILabel *labelHead2 = [[UILabel alloc] initWithFrame:
                           CGRectMake(0, 150, 768,2)];
    labelHead2.backgroundColor = [UIColor colorWithRed:153/255.0 green:102/255.0 blue:0.0 alpha:1.0];
    labelHead2.textColor = [UIColor colorWithRed:0 green:0.0 blue:0.5 alpha:1.0];
    labelHead2.font = [UIFont boldSystemFontOfSize:24];
    labelHead2.textAlignment = UITextAlignmentCenter;
    [m_pView addSubview:labelHead2];


    

   
    
    
    m_tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 180, 768, 800) style:UITableViewStylePlain];
    m_tableView.delegate = self;
    m_tableView.dataSource = self;
    [m_pView addSubview:m_tableView];
    
    
    
    m_list = [[NSMutableArray alloc] initWithObjects:@"Trek 1", @"Trek 2",@"Trek 3",@"Trek 4", nil] ; 
    m_array = [[NSMutableArray alloc]initWithObjects:@"thumbnail.jpg",@"thumbnail.jpg",@"thumbnail.jpg", nil];
    

    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [m_list count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //cell.textLabel.text = [m_list objectAtIndex: indexPath.row];
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    static NSString *cellIdentifier;
    TrekDetailCell *cell = (TrekDetailCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	if(cell == nil)
	{
		cell = [[TrekDetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    }
    
   // cell.textLabel.text = [m_list objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage  imageNamed:[m_array objectAtIndex:indexPath.row]];
    
    switch (indexPath.row) {
        case 0:
            cell.trekLabel.text = @"Dragon ";
            cell.descLabel.text = @"maag";
            
            cell.charimage.image = [UIImage imageNamed:@"catcartoon.jpg"];
            break;
        case 1:
            cell.trekLabel.text = @"ball ";
            cell.descLabel.text = @"maag1";
            
            cell.charimage.image = [UIImage imageNamed:@"catcartoon.jpg"];
            break;
        case2:
            
            cell.trekLabel.text = @"Dragon ball ";
            cell.descLabel.text = @"Goku";
            
            cell.charimage.image = [UIImage imageNamed:@"catcartoon.jpg"];
            break;
            
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // NSLog(@"%d",indexPath.row);
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
