//
//  MyCitys.h
//  xib自定义cell
//
//  Created by qianfeng on 15-2-28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyCitys : NSObject

@property (nonatomic, strong)UIImageView *ImageView;
@property (nonatomic, strong)UILabel *name;
@property (nonatomic, strong)UILabel *detail;

+ (MyCitys *)cityWithDic:(NSDictionary *)dic;

@end
