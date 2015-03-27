//
//  MyCitys.m
//  xib自定义cell
//
//  Created by qianfeng on 15-2-28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "MyCitys.h"

@implementation MyCitys

+ (MyCitys *)cityWithDic:(NSDictionary *)dic {
    MyCitys *city =[[MyCitys alloc] initWithDic:dic];
    return city;
    
}

- (id)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        self.ImageView = dic[@"ImageView"];
        self.detail = dic[@"detail"];
        self.name = dic[@"name"];
    }
    return self;
}

@end
