//
//  ViewController.m
//  ZVProgressView
//
//  Created by 嗯，大葱 on 2018/11/13.
//  Copyright © 2018年 嗯，大葱. All rights reserved.
//

#import "ViewController.h"
#import "ZVProgressV.h"

#define KW  [UIScreen mainScreen].bounds.size.width
#define KH  [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property (nonatomic,strong)ZVProgressV *progressV;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    //初始化试图
    _progressV = [[ZVProgressV alloc] initWithFrame:CGRectMake(0, 150, KW, 60) contentArray:@[@"第一步",@"第二步",@"第三步"] imageArray:@[@"基本信息",@"人脸识别1",@"授权征信1"] seImageA:@[@"基本信息",@"人脸识别2",@"授权征信2"] currentInde:@"0" isColor:NO];
    [self.view addSubview:_progressV];
    
    
    //设置当前阶段
//    [_progressV currentSelectProgress:@"1"];
}


@end
