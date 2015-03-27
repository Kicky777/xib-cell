//
//  MyCell.m
//  xib自定义cell
//
//  Created by qianfeng on 15-2-28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MyCell.h"
#import "MyCitys.h"

@interface MyCell()

@end

@implementation MyCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setMyCity:(MyCitys *)myCity{
    _myCity = myCity;
    self.myImgageView.image =[UIImage imageNamed:myCity.ImageView];
    self.nameLabel.text = (NSString *)myCity.name;
    self.detailLabel.text = (NSString *)myCity.detail;

}



@end
