//
//  MyCell.h
//  xib自定义cell
//
//  Created by qianfeng on 15-2-28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyCitys;

@interface MyCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *myImgageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property (nonatomic, strong) MyCitys *myCity;

@end
