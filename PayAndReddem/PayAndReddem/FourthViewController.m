//
//  FourthViewController.m
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import "FourthViewController.h"
#import "ResultModel.h"

@interface FourthViewController ()

@property (nonatomic, strong) UILabel  *label;
@property (nonatomic, strong) UIButton *button;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithWhite:1 alpha:0.9];
    [self setupSubviews];
    
}

- (void)setupSubviews {
    self.label = [[UILabel alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.bounds)-200)/2, 100, 200, 80)];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.text = @"支付成功！\n返回购买商品页面";
    self.label.numberOfLines = 2;
    [self.view addSubview:self.label];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.backgroundColor = [UIColor greenColor];
    [self.button setTitle:@"返回" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.button.frame = CGRectMake((CGRectGetWidth(self.view.bounds)-100)/2, 200, 100, 35);
    [self.button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)buttonClick:(UIButton *)btn {
    [ResultModel sharedInstance].payResultBlock(@"success",@{@"result_code":@"0000",@"result_msg":@"支付成功"});
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
