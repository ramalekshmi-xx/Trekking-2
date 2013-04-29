//
//  TrekDetailCell.m
//  Trekking
//
//  Created by Krithiga on 26/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "TrekDetailCell.h"

@implementation TrekDetailCell
@synthesize trekLabel,descLabel,museumLabel, charimage,ratingLabel,finishLabel,easyLabel,avgLabel;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        trekLabel = [[UILabel alloc]init];
        trekLabel.frame = CGRectMake(50, 15, 100, 20);
        trekLabel.textAlignment = UITextAlignmentLeft;
        trekLabel.font = [UIFont systemFontOfSize:10];
    
        trekLabel.textColor =[UIColor redColor];
       
        descLabel = [[UILabel alloc]init];
        descLabel.frame = CGRectMake(50, 35,80, 20);
        descLabel.textAlignment = UITextAlignmentLeft;
        descLabel.font = [UIFont systemFontOfSize:10];
        descLabel.textColor =[UIColor blueColor];
        
        
        museumLabel = [[UILabel alloc]init];
        museumLabel.frame = CGRectMake(50, 35,80, 20);
        museumLabel.textAlignment = UITextAlignmentLeft;
        museumLabel.font = [UIFont systemFontOfSize:10];
        museumLabel.textColor =[UIColor blueColor];
        
        
        
        
        
        ratingLabel = [[UILabel alloc]init];
        ratingLabel.frame = CGRectMake(80, 35,80, 20);
        ratingLabel.textAlignment = UITextAlignmentCenter;
        ratingLabel.font = [UIFont systemFontOfSize:10];
        ratingLabel.textColor =[UIColor blueColor];
        
        
        
        
        finishLabel = [[UILabel alloc]init];
        finishLabel.frame = CGRectMake(180, 20, 100, 20);
        finishLabel.textAlignment = UITextAlignmentLeft;
        finishLabel.font = [UIFont systemFontOfSize:10];
        
        finishLabel.textColor =[UIColor redColor];
        
        easyLabel = [[UILabel alloc]init];
        easyLabel.frame = CGRectMake(180, 20,100, 15);
        easyLabel.textAlignment = UITextAlignmentLeft;
        easyLabel.font = [UIFont systemFontOfSize:10];
        easyLabel.textColor =[UIColor blueColor];
        
        avgLabel = [[UILabel alloc]init];
        avgLabel.frame = CGRectMake(180, 40,100, 15);
        avgLabel.textAlignment = UITextAlignmentLeft;
        avgLabel.font = [UIFont systemFontOfSize:10];
        avgLabel.textColor =[UIColor blueColor];

        
        
        
       
        charimage = [[UIImageView alloc]initWithFrame:CGRectMake(7, 12, 40, 40)];

        

         [self.contentView addSubview:trekLabel];
        [self.contentView addSubview:descLabel];
        [self.contentView addSubview:museumLabel];
        [self.contentView addSubview:ratingLabel];
        [self.contentView addSubview:easyLabel];
        [self.contentView addSubview:avgLabel];
        
        [self.contentView addSubview:charimage];

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
