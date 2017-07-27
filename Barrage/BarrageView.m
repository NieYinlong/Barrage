//
//  BarrageView.m
//  Barrage
//
//  Created by 聂银龙 on 2017/7/27.
//  Copyright © 2017年 nieyinlong. All rights reserved.
//
#import "BarrageView.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation BarrageView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addsubViews];
    }
    return self;
}


- (void)addsubViews {
    
    
    _label1 = [[UILabel alloc] init];
    _label1.backgroundColor = [UIColor brownColor];
    _label1.textColor = [UIColor whiteColor];
    [self addSubview:_label1];
    _label1.text = @"一切都是浮云";
    [_label1 sizeToFit];
    CGFloat label1Width = _label1.frame.size.width;
    _label1.frame = CGRectMake(400, 0, label1Width, 30);
    
    [UIView animateWithDuration:20 animations:^{
        _label1.frame = CGRectMake(-label1Width, 0, label1Width, 30);
    }];
    
    
    
    
    _label2 = [[UILabel alloc] init];
    _label2.backgroundColor = [UIColor brownColor];
    _label2.textColor = [UIColor whiteColor];
    [self addSubview:_label2];
    _label2.text = @"谁能送我一张敬业福";
    [_label2 sizeToFit];
    CGFloat label2Width = _label2.frame.size.width;
    _label2.frame = CGRectMake(400, 60, label2Width, 30);
    
    [UIView animateWithDuration:25 animations:^{
        _label2.frame = CGRectMake(-label2Width, 60, label2Width, 30);
    }];
    
    
    _label3 = [[UILabel alloc] init];
    _label3.backgroundColor = [UIColor brownColor];
    _label3.textColor = [UIColor whiteColor];
    [self addSubview:_label3];
    _label3.text = @"老司机, 你去哪, 快来带带我";
    [_label3 sizeToFit];
    CGFloat label3Width = _label3.frame.size.width;
    _label3.frame = CGRectMake(400, 120, label3Width, 30);
    
    
    [UIView animateWithDuration:10 animations:^{
        _label3.frame = CGRectMake(-label3Width, 90, label3Width, 30);
    } completion:^(BOOL finished) {
        [_label3 removeFromSuperview];
    }];
}


// 发送一个弹幕
- (void)senDanMuWithContentString:(NSString *)contentString
{
    
    
    
    
    UIView *backView = [[UIView alloc] init];
    backView.backgroundColor = [UIColor blackColor];
    backView.alpha = 0.6;
    // [self addSubview:backView];
    
    
    
    
    _danMuLabel = [[UILabel alloc] init];
    [self addSubview:_danMuLabel];
    //_danMuLabel.backgroundColor = [UIColor blackColor];
    _danMuLabel.textColor = [UIColor whiteColor];
    _danMuLabel.backgroundColor = [UIColor brownColor];
    //_danMuLabel.alpha = 0.6;
    
    _danMuLabel.text = contentString;
    [_danMuLabel sizeToFit];
    
    
    CGFloat width = _danMuLabel.frame.size.width;
    
    CGFloat y = arc4random_uniform(170);
    CGFloat time = arc4random()%20;
    
    backView.frame = CGRectMake(kScreenWidth-width-20, y, width, 30);
    _danMuLabel.frame = CGRectMake(kScreenWidth-width-20, y, width, 30);
    
    
    
    
    
    
    
    [UIView animateWithDuration:time animations:^{
        backView.frame = CGRectMake(-width, y, width, 30);
        _danMuLabel.frame = CGRectMake(-width, y, width, 30);
        
    } completion:^(BOOL finished) {
        [backView removeFromSuperview];
        [_danMuLabel removeFromSuperview];
    }];
    
    
    
    
    
    
    
    
    
}

@end
