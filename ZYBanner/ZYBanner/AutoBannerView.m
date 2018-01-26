//
//  AutoBannerView.m
//  ZYBanner
//
//  Created by 张宇 on 2018/1/26.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import "AutoBannerView.h"
#import "AutoBannerLayout.h"




typedef NS_ENUM(NSUInteger, LayoutType) {
    CardLayoutEnum,
    LineLayoutEnum,
};



@interface AutoBannerView()

@property(nonatomic,strong)UICollectionView * collectionView;
@property(nonatomic,assign)LayoutType layoutType;
@property(nonatomic,strong)LineLayout * lineLayout;
@property(nonatomic,strong)CardLayout * cardLayout;

@end



@implementation AutoBannerView


#pragma mark  初始化

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
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
    [self initData];
    [self creatBannerUI];
}


#pragma mark UI  部分

-(void)creatBannerUI{
    [self addSubview:_collectionView];
}




#pragma 逻辑数据部分
-(void)initData{
    
    
}


#pragma mark 懒加载

//lazy  loading  creat collectionView
-(void)setCollectionView:(UICollectionView *)collectionView{
    if (!_collectionView) {
        collectionView  = [[UICollectionView alloc]initWithFrame:self.bounds];
        collectionView.collectionViewLayout=self.layoutType==CardLayoutEnum?self.cardLayout:self.lineLayout;
        _collectionView = collectionView;
    }
}


-(void)setLineLayout:(LineLayout *)lineLayout{
    if (!_lineLayout) {
        _lineLayout  = [LineLayout new];
        _lineLayout  = lineLayout;
    }
}

-(void)setCardLayout:(CardLayout *)cardLayout{
    if (!_cardLayout) {
        _cardLayout  = [CardLayout new];
        _cardLayout  = cardLayout;
    }
    
}

@end
