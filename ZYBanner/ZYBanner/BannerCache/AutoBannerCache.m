//
//  AutoBannerCache.m
//  ZYBanner
//
//  Created by 张宇 on 2018/1/29.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import "AutoBannerCache.h"

@implementation AutoBannerCache

-(instancetype)sharedCacheManager{
    static AutoBannerCache * cahceManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cahceManager = [AutoBannerCache new];
    });
    
    return cahceManager;
}




@end
