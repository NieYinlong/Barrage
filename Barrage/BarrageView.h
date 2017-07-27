//
//  BarrageView.h
//  Barrage
//
//  Created by 聂银龙 on 2017/7/27.
//  Copyright © 2017年 nieyinlong. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface BarrageView : UIView

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;


@property (nonatomic, strong) UILabel *danMuLabel;

- (void)senDanMuWithContentString:(NSString *)contentString;

@end
