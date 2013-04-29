//
//  FindTrekViewController.m
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "FindTrekViewController.h"

@implementation FindTrekViewController
@synthesize m_list,m_tabBarController;

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
    
    
    UIButton *button =  [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"download.jpg"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(download) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 32, 32)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    
    UIButton *button1 =  [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setImage:[UIImage imageNamed:@"download.jpg"] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [button1 setFrame:CGRectMake(0, 0, 32, 32)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button1];
    
    m_pView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 768,1024)];
    m_pView. backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"background.jpg"]]];
    self.view = m_pView;
    
   
    
    
    m_sortlabel = [[UILabel alloc]init];
    m_sortlabel.frame = CGRectMake(10, 50, 150, 20);
    m_sortlabel.textAlignment = UITextAlignmentLeft;
    m_sortlabel.font = [UIFont systemFontOfSize:20];
    m_sortlabel.textColor =[UIColor blackColor];
    m_sortlabel.backgroundColor = [UIColor clearColor];
    m_sortlabel.text = @"SORT BY :";
    [m_pView addSubview:m_sortlabel];
    
    
   m_segmentedControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"Dist", @"Rating", @"difficulty",@"time", nil]];
    m_segmentedControl.frame = CGRectMake(150, 40, 400, 50);
    m_segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
    m_segmentedControl.selectedSegmentIndex = 1;
    m_segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    m_segmentedControl.tintColor = [UIColor grayColor];
   [m_segmentedControl addTarget:self action:@selector(segmentValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [m_pView addSubview:m_segmentedControl];


    
    
    m_tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 120,800, 750) style:UITableViewStyleGrouped];
    m_tableView.delegate = self;
    m_tableView.dataSource = self;
    [m_pView addSubview:m_tableView];
    
    
    
    m_list = [[NSMutableArray alloc] initWithObjects:@"Trek 1", @"Trek 2",@"Trek 3",@"Trek 4", nil] ;
    
       
     
    
    
   /* m_tabBarController = [[UITabBarController alloc] init];
    m_tabBarController.view.frame = CGRectMake(0,400,300,50);
    
    //     m_tabBarController.view.frame = CGRectMake(0,430,320,50);
    
    m_tabBarController.delegate = self;
    [self.view addSubview:m_tabBarController.view];
    
    m_viewmap = [[ViewonMapViewController alloc]init ];
    
    UINavigationController *viewNav = [[UINavigationController alloc]initWithRootViewController:m_viewmap];
    
    m_stats = [[StatsViewController alloc]init];
    
    UINavigationController *statsNav = [[UINavigationController alloc]initWithRootViewController:m_stats];
    m_picture = [[PictureViewController alloc]init];
    UINavigationController *picNav = [[UINavigationController alloc]initWithRootViewController:m_picture];
    m_reqTrek = [[ReqTrekViewController alloc]init];
    
    UINavigationController *reqNav = [[UINavigationController alloc]initWithRootViewController:m_reqTrek];
    
    
    m_viewmap.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"tab1" image:[UIImage imageNamed:@"catcartoon.jpg" ]tag:0];
    //m_stats.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:uit tag:1];
    m_stats.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"tab2" image:[UIImage imageNamed:@"download.jpg"] tag:1];
    m_picture.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"tab3" image:[UIImage imageNamed:@"download.jpg"] tag:2];
    m_reqTrek.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"tab4" image:[UIImage imageNamed:@"download.jpg"] tag:3];
    
    [ m_tabBarController  setViewControllers:[NSArray arrayWithObjects: viewNav,statsNav,picNav,reqNav ,nil]];
    
    */
    
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 900, 768, 80)];
    //[toolbar sizeToFit];
    // [toolBar barStyle  UIBarStyleDefault]; 
    
    UIBarButtonItem *systemItem1= [[UIBarButtonItem alloc]initWithTitle:@"Request" style:UIBarButtonItemStyleDone target:self action:@selector(reqTrek:)];
   // UIBarButtonItem *systemItem1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(reqTrek:)];
                                    
    UIBarButtonItem *systemItem2 = [[UIBarButtonItem alloc]initWithTitle:@"MAP" style:UIBarButtonItemStyleDone target:self action:@selector(viewMap:)];
    
     UIBarButtonItem *systemItem3 = [[UIBarButtonItem alloc]initWithTitle:@"Stats" style:UIBarButtonItemStyleDone target:self action:@selector(viewMap:)];
                                    
       UIBarButtonItem *systemItem4 = [[UIBarButtonItem alloc]
                                    initWithBarButtonSystemItem:UIBarButtonSystemItemCamera
                                    target:self action:@selector(pressButton3:)];
    
    //Use this to put space in between your toolbox buttons
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    //Add buttons to the array
    NSArray *items = [NSArray arrayWithObjects: systemItem1, flexItem, systemItem2, flexItem, systemItem3,flexItem,systemItem4, nil];
    
    
    //add array of buttons to toolbar
    [toolbar setItems:items animated:NO];
    
    [m_pView addSubview:toolbar];

    
    
    [super viewDidLoad];
}





- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)download{
    
}

//toolbar
-(void)reqTrek:(id)sender{
    
}
-(void)viewMap:(id)sender{
    
}
-(void)status:(id)sender{
    
}
-(void)pressButton3:(id)sender{
    
}


-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)segmentValueChanged:(UISegmentedControl *)segment {
    
    if(segment.selectedSegmentIndex == 0) {
        //action for the first button (All)
    }else if(segment.selectedSegmentIndex == 1){
        //action for the second button (Present)
    }else if(segment.selectedSegmentIndex == 2){
        //action for the third button (Missing)
    }
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
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
    
    
    
    switch (indexPath.row) {
        case 0:
            cell.trekLabel.text = @"Dragon ";
            cell.descLabel.text = @"maag";
             cell.ratingLabel.text = @"three";
            cell.finishLabel.text = @"Finished";
            cell.easyLabel.text = @"Easy";
             cell.avgLabel.text = @"Avg:";
           
            cell.charimage.image = [UIImage imageNamed:@"catcartoon.jpg"];
            break;
        case 1:
            cell.trekLabel.text = @"ball ";
            cell.descLabel.text = @"maag1";
             cell.ratingLabel.text = @"2/5";
            cell.finishLabel.text = @"yet to finish";
            cell.easyLabel.text = @"difficult";
             cell.avgLabel.text = @"Avg:";
            cell.charimage.image = [UIImage imageNamed:@"catcartoon.jpg"];
            break;
        case2:
            
            cell.trekLabel.text = @"Dragon ball ";
            cell.descLabel.text = @"Goku";
             cell.ratingLabel.text = @"4/5";
            cell.finishLabel.text = @"started";
            cell.easyLabel.text = @"Meduim";
             cell.avgLabel.text = @"Avg:";
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
    
    if (indexPath.row==1) {
        TrekDetailsViewController *trekd = [[TrekDetailsViewController alloc]init];
        [self.navigationController pushViewController:trekd animated:YES];
    }
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"Premuim Treks";
    }
    else     {
        return @"Official Treks";
    }
    
}


/*-(void)viewWillAppear:(BOOL)animated
{
    self.tabBarController.view.frame = CGRectMake(0,0,320,480);
}*/

    
    

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
