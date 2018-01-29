//
//  AutoBannerCell.h
//  ZYBanner
//
//  Created by 张宇 on 2018/1/26.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoBannerCell : UICollectionViewCell

@property(nonatomic,strong)UIImageView * BannerImage;


#pragma  mark  显示数据
-(void)showCellWithImage:(NSString *)imageName;
@end
