//
//  AutoBannerCell.m
//  ZYBanner
//
//  Created by 张宇 on 2018/1/26.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import "AutoBannerCell.h"
#import <UIImageView+WebCache.h>

@implementation AutoBannerCell

-(instancetype)initWithFrame:(CGRect)frame{
    self =[super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup{
 
}

-(void)layoutSubviews{
    [self.contentView addSubview:self.BannerImage];
}

-(UIImageView *)BannerImage{
    if (!_BannerImage) {
        _BannerImage = [[UIImageView alloc]initWithFrame:self.bounds];
    }
    return _BannerImage;
}

-(void)showCellWithImage:(NSString *)imageName{
    self.BannerImage.image = [UIImage imageNamed:imageName];
}


@end
