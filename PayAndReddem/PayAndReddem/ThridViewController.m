//
//  ThridViewController.m
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import "ThridViewController.h"
#import "FourthViewController.h"
#import "PayModel.h"

@interface ThridViewController ()

@property (nonatomic, strong) UILabel  *label;
@property (nonatomic, strong) UIButton *button;

@end

@implementation ThridViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithWhite:1 alpha:0.9];
    [self setupSubviews];
    
}

- (void)setupSubviews {
    NSString *money = [PayModel sharedPayInfo].money;
    self.label = [[UILabel alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.bounds)-200)/2, 100, 200, 35)];
    self.label.text = [NSString stringWithFormat:@"支付金额：%@(分)",money];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.backgroundColor = [UIColor greenColor];
    [self.button setTitle:@"确认支付" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.button.frame = CGRectMake((CGRectGetWidth(self.view.bounds)-100)/2, 150, 100, 35);
    [self.button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)buttonClick:(UIButton *)btn {
    FourthViewController *fourthVC = [[FourthViewController alloc] init];
    [self.navigationController pushViewController:fourthVC animated:YES];
}

@end
