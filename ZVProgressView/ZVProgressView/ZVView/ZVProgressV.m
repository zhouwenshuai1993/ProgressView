//
//  ProgressV.m
//  ZVProgressView
//
//  Created by 嗯，大葱 on 2018/11/13.
//  Copyright © 2018年 嗯，大葱. All rights reserved.
//

#import "ZVProgressV.h"

@interface ZVProgressV()

@property (nonatomic, copy)NSString *indexOne;
@property (nonatomic, copy)NSString *titleOne;
@property (nonatomic, strong)NSArray *titleAy;
@property (nonatomic, strong)NSArray *imageAy;
@property (nonatomic, strong)NSArray *selectImageAy;

@property (nonatomic, strong)UIColor *colorLineT;
@property (nonatomic)BOOL flageT;

@property (nonatomic, strong)NSMutableArray *imageArray;

@property (nonatomic, strong)NSMutableArray *lineArray;


@property (nonatomic, strong)NSMutableArray *lableArray;





@end

@implementation ZVProgressV

- (instancetype)initWithFrame:(CGRect)frameP  contentArray:(NSArray *)titleArray imageArray:(NSArray *)imageArray  seImageA:(NSArray *)selectImageA currentInde:(NSString *)indexC isColor:(BOOL)flagColor
{
    self = [super initWithFrame:frameP];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        _indexOne = indexC;
        _titleAy = titleArray;
        _imageAy = imageArray;
        _selectImageAy = selectImageA;
        _flageT = flagColor;
        _lableArray = [NSMutableArray array];
        _lineArray = [NSMutableArray array];
        _imageArray = [NSMutableArray array];

        CGFloat widthTemp = frameP.size.width/titleArray.count;
        CGFloat heightTemp = frameP.size.height-30;
        CGFloat x = 0;
        CGFloat y = 30;
        
        
        
        //文字
        for (int a = 0 ; a < _titleAy.count; a++) {
            UILabel *labe = [[UILabel alloc] initWithFrame:CGRectMake(x, y, widthTemp, heightTemp)];
            labe.textAlignment = NSTextAlignmentCenter;
            labe.text = _titleAy[a];
            labe.font = [UIFont systemFontOfSize:15 *frameP.size.width/375];
            [self addSubview:labe];
            [_lableArray addObject:labe];
            //横线
            if (a<_titleAy.count - 1) {
                UIView *linkV = [[UIView alloc] initWithFrame:CGRectMake(x+widthTemp/2+15, (heightTemp-2)/2-2/2, labe.frame.size.width-30, 2)];
                linkV.backgroundColor = [UIColor grayColor];
                [_lineArray addObject:linkV];
                [self addSubview:linkV];
                
            }
            
            UIImageView *imageV = [[UIImageView alloc] init];
            imageV.image = [UIImage imageNamed:_imageAy[a]];
            imageV.frame = CGRectMake(x+widthTemp/2-15, 0, 30, 30);
            [self addSubview:imageV];
            [_imageArray addObject:imageV];
            
            x  = x+widthTemp;
            
        }
        
        [self currentSelectProgress:indexC];
    }
    return self;
 
    
}




//设置当前状态进行的程度
- (void)currentSelectProgress:(NSString *)indexSelect{
    //横线拿出来单独处理
    if (_flageT == YES) {
        for (int a = 0; a < _lineArray.count; a++) {
            
            UIView *tempView =(UIView *) _lineArray[a];
            
            if ([indexSelect intValue]>=a) {
                tempView.backgroundColor = [UIColor orangeColor];
            }else {
                tempView.backgroundColor = [UIColor grayColor];
            }
            
        }
        
    }
    
    
    for (int i = 0; i < _titleAy.count; i++) {
        UILabel *tempLB =(UILabel *) _lableArray[i];
        
        
        UIImageView *imageV = (UIImageView *)_imageArray[i];
        if ([indexSelect intValue] >=i) {
            tempLB.textColor = [UIColor orangeColor];
            imageV.image = [UIImage imageNamed:_selectImageAy[i]];
        }else {
            tempLB.textColor = [UIColor grayColor];
            imageV.image = [UIImage imageNamed:_imageAy[i]];
        }
    }
}

@end
