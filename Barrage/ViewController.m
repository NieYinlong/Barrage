//
//  ViewController.m
//  Barrage
//
//  Created by 聂银龙 on 2017/7/27.
//  Copyright © 2017年 nieyinlong. All rights reserved.
//

#import "ViewController.h"
#import "BarrageView.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


@interface ViewController ()<UITextFieldDelegate>
@property(nonatomic, strong) BarrageView *barrageView;
@property(nonatomic, strong) UITextField *sendTF;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    _barrageView = [[BarrageView alloc] initWithFrame:CGRectMake(0, 200, kScreenWidth, 200)];
    [self.view addSubview:_barrageView];
    
    
    
    _sendTF = [[UITextField alloc] initWithFrame:CGRectMake(12, 30, kScreenWidth-24, 30)]
    ;
    _sendTF.delegate = self;
    _sendTF.borderStyle = UITextBorderStyleRoundedRect;
    _sendTF.returnKeyType = UIReturnKeySend;
    _sendTF.placeholder = @"请输入要发送的弹幕";
    [self.view addSubview:_sendTF];
    
    
    

    
  
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_barrageView senDanMuWithContentString:textField.text];
    
    _sendTF.text = nil;
    
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
