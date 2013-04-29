//
//  FindTrekViewController.h
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TrekDetailCell.h"
#import "ViewonMapViewController.h"
#import "ReqTrekViewController.h"
#import "StatsViewController.h"
#import "PictureViewController.h"
#import "TrekDetailsViewController.h"


@interface FindTrekViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UITabBarControllerDelegate>
{
    
    UIView * m_pView;
    UITableView *m_tableView;
    UILabel *m_sortlabel;
    UISegmentedControl *m_segmentedControl;
     UITabBarController *m_tabBarController;
   
    ViewonMapViewController *m_viewmap;
    ReqTrekViewController *m_reqTrek;
    StatsViewController *m_stats;
    PictureViewController *m_picture;
}

@property(retain,atomic) NSMutableArray *m_list;
@property(retain,atomic)UITabBarController *m_tabBarController;

 


@end
