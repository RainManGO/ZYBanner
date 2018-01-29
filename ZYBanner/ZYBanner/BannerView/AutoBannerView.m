//
//  AutoBannerView.m
//  ZYBanner
//
//  Created by 张宇 on 2018/1/26.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import "AutoBannerView.h"
#import "AutoBannerCell.h"


@interface AutoBannerView()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,strong)UICollectionView * collectionView;
@property(nonatomic,copy)NSArray * dataSorce;
@end


@implementation AutoBannerView

static NSString * cellId = @"bannerItem";

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
}

-(void)showInView:(UIView *)view{
    [self creatBannerUI];
    [view addSubview:self];
}


#pragma mark UI  部分

-(void)creatBannerUI{
    [self addSubview:self.collectionView];
    
}



#pragma mark  collection的代理方法

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataSorce.count;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    AutoBannerCell  *  cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    [cell showCellWithImage:self.dataSorce[indexPath.row]];
    return cell;
}


#pragma 逻辑数据部分
-(void)initData{
    NSLog(@"%f,%f",self.minimumLineSpacing,self.itemSize.height);
    if (_itemSize.height==0) {
        _itemSize = CGSizeMake(kScreenWidth, CGRectGetHeight(self.frame));
    }
}


#pragma mark - setter

-(void)setOlnyImageDataSorce:(NSArray<NSString *> *)olnyImageDataSorce{
    [self setData:olnyImageDataSorce AndCellType:OlnyImage];
}

-(void)setImageTitleDataSorce:(NSArray<NSDictionary *> *)imageTitleDataSorce{
    [self setData:imageTitleDataSorce AndCellType:ImageAndTitle];
}

-(void)setData:(NSArray *)data AndCellType:(collectionCellStyle)style{
    _cellStyle=style;
    self.dataSorce =nil;
    self.dataSorce = data;
    [_collectionView reloadData];
}


#pragma mark - getter

-(UICollectionView *)collectionView{
    if (!_collectionView) {
        _collectionView  = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:self.layoutType==LineLayoutEnum?self.lineLayout:self.cardLayout];
        _collectionView.dataSource = self;
        _collectionView.delegate   = self;
        _collectionView.showsHorizontalScrollIndicator = NO;
        [_collectionView registerClass:[AutoBannerCell class] forCellWithReuseIdentifier:cellId];
    }
    
    return _collectionView;
}


-(LayoutType)layoutType{
    return _layoutType==0?LineLayoutEnum:CardLayoutEnum;
}


-(LineLayout *)lineLayout{
    if (!_lineLayout) {
        _lineLayout  = [LineLayout new];
        _lineLayout.itemSize  =  self.itemSize;
        _lineLayout.minimumLineSpacing = self.minimumLineSpacing;
    }
    return _lineLayout;
}


-(CardLayout *)cardLayout{
    if (!_cardLayout) {
        _cardLayout  = [CardLayout new];
    }
    
    return _cardLayout;
}


-(NSArray *)dataSorce{
    if (!_dataSorce) {
        _dataSorce = [NSArray array];
    }
    
    return _dataSorce;
}

@end
