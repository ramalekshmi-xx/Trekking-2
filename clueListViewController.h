//
//  clueListViewController.h
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TrekDetailCell.h"

@interface clueListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UIView * m_pView;
    UITableView *m_tableView;
}
@property(retain,atomic) NSMutableArray *m_list;
@property(retain,atomic) NSMutableArray *m_array;


@end
