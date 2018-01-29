//
//  AutoBannerView.h
//  ZYBanner
//
//  Created by 张宇 on 2018/1/26.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoBannerLayout.h"

typedef NS_ENUM(NSUInteger, LayoutType) {
    LineLayoutEnum =    0,
    CardLayoutEnum =    1<<0,
};


typedef NS_ENUM(NSUInteger, collectionCellStyle) {
    OlnyImage,
    ImageAndTitle,
};

@interface AutoBannerView : UIView

/**数据源部分
 olnyImageDataSorce:@[@".png",@".png"]
 imageTitleDataSorce:@[@{@"title":@"ad1",@"image":@".png"},@{@"title":@"ad1",@"image":@".png"}]
 */

@property(nonatomic,copy)NSArray<NSString *> * olnyImageDataSorce;
@property(nonatomic,copy)NSArray<NSDictionary *> * imageTitleDataSorce;


/**布局样式部分*/

//AutoBannerLayout  通用布局属性
@property(nonatomic,assign)CGSize itemSize;
@property(nonatomic,assign)CGFloat minimumLineSpacing;

//布局样式
@property(nonatomic,assign)LayoutType layoutType;
//线性布局继承于AutoBannerLayout
@property(nonatomic,strong)LineLayout * lineLayout;
//3d卡片布局继承于AutoBannerLayout
@property(nonatomic,strong)CardLayout * cardLayout;



/**cell样式*/
@property(nonatomic,assign)collectionCellStyle cellStyle;



-(void)showInView:(UIView *)view;
@end
