//
//  ViewController.m
//  ZYBanner
//
//  Created by 张宇 on 2018/1/25.
//  Copyright © 2018年 张宇. All rights reserved.
//

#import "ViewController.h"
#import "AutoBannerView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *testImageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self sampleCode];
}

//示例代码 加载onlyImageBanner
-(void)sampleCode{
    AutoBannerView * banner =  [[AutoBannerView alloc]initWithFrame:CGRectMake(0,64,kScreenWidth, 200)];
//    banner.minimumLineSpacing=100;
//    banner.itemSize=CGSizeMake(kScreenWidth-20, 100);

    banner.olnyImageDataSorce =  @[@"banner1.jpg",@"banner2.jpg",@"banner3.jpg",@"banner4.jpeg"];
    [banner showInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
