//
//  ProgressV.h
//  ZVProgressView
//
//  Created by 嗯，大葱 on 2018/11/13.
//  Copyright © 2018年 嗯，大葱. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/*
 
 用法，首先引入头文件，然后设置全局变量
 #import "ZVProgressV.h"
 
 #define KW  [UIScreen mainScreen].bounds.size.width
 #define KH  [UIScreen mainScreen].bounds.size.height
 
 @property (nonatomic,strong)ZVProgressV *progressV;
 
 ----------------------       ----------------------      ---------------------------
 _progressV = [[ZVProgressV alloc] initWithFrame:CGRectMake(0, 150, KW, 60) contentArray:@[@"第一步",@"第二步",@"第三步"] imageArray:@[@"基本信息",@"人脸识别1",@"授权征信1"] seImageA:@[@"基本信息",@"人脸识别2",@"授权征信2"] currentInde:@"0" isColor:NO];
 [self.view addSubview:_progressV];
 
 
 
 [_progressV currentSelectProgress:@"1"];
 */

@interface ZVProgressV : UIView

/*
 framP:整个控件的大小 titleArray:每个阶段的标题数组  indexC：默认走阶段值
 imageArray:默认图片的数组 selectImageA:选中图片的数组  isColor：线是否需要颜色(yes == 需要)  colorLink线的颜色
 
 */
- (instancetype)initWithFrame:(CGRect)frameP  contentArray:(NSArray *)titleArray imageArray:(NSArray *)imageArray  seImageA:(NSArray *)selectImageA currentInde:(NSString *)indexC isColor:(BOOL)flagColor;


/*
 currentIndex:当前阶段 
 */
-(void)currentSelectProgress:(NSString *)currentIndex;




@end

NS_ASSUME_NONNULL_END
