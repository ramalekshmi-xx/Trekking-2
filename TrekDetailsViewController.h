//
//  TrekDetailsViewController.h
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TrekDetailsViewController : UIViewController{
    UILabel *trekLabel;
    UILabel *descLabel;
    UILabel *museumLabel;
    
    
    UILabel *ratingLabel;
    UILabel *finishLabel;
    UILabel *easyLabel;
    UILabel *avgLabel;
    UIImageView *charimage;
     UIImageView *charimage1,*charimage2,*charimage3,*charimage4,*charimage5;
    
    
    
}
@property(nonatomic,strong) UILabel *trekLabel;
@property(nonatomic,strong)UILabel *descLabel;
@property(nonatomic,strong)UILabel *museumLabel;
@property(nonatomic,strong)UILabel *ratingLabel;
@property(nonatomic,strong)UILabel *finishLabel;
@property(nonatomic,strong)UILabel *easyLabel;
@property(nonatomic,strong)UILabel *avgLabel;
@property(nonatomic,strong) UIImageView *charimage;




@end
