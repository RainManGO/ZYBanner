//
//  AutoBannerLayout.m
//  ZYBanner
//
//  Created by 张宇 on 2018/1/26.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import "AutoBannerLayout.h"

@implementation AutoBannerLayout

-(instancetype)init{
    self = [super init];
    NSLog(@"AutoBannerLayout");
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
 
    return self;
}

@end

@implementation LineLayout

-(instancetype)init{
    self = [super init];

    return self;
}
@end

@implementation CardLayout

-(instancetype)init{
    self = [super init];
    NSLog(@"CardLayout");
    return self;
}
@end
