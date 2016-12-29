//
//  SecondViewController.m
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import "SecondViewController.h"
#import "PayAndReddem.h"

@interface SecondViewController ()

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIButton *button;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:1 alpha:0.9];
    self.navigationItem.title = @"购买商品";
    [self setupSubviews];
    
}

- (void)setupSubviews {
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.bounds)-200)/2, 100, 200, 30)];
    self.textField.borderStyle = UITextBorderStyleNone;
    self.textField.backgroundColor = [UIColor whiteColor];
    self.textField.placeholder = @"请输入支付金额（分）";
    [self.textField becomeFirstResponder];
    [self.view addSubview:self.textField];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.backgroundColor = [UIColor greenColor];
    [self.button setTitle:@"进入支付sdk" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.button.frame = CGRectMake((CGRectGetWidth(self.view.bounds)-200)/2, 150, 200, 35);
    [self.button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)buttonClick:(UIButton *)btn {
    BOOL isEmpty = [self checkTextField];
    
    //进入支付sdk
    if (isEmpty) {
        [PayAndReddem setupPayInfo:[self test] subClass:self payResult:^(NSString *status, NSDictionary *payDict) {
            if ([status isEqualToString:@"success"]) {
                //支付成功，并返回支付成功后的相应字段
                NSLog(@"result_code=%@,result_msg=%@",payDict[@"result_code"],payDict[@"result_msg"]);
            } else if ([status isEqualToString:@"fail"]) {
                //支付失败
                NSLog(@"支付失败");
            }
        }];
    }
}

- (BOOL)checkTextField {
    if (self.textField.text.length > 0) {
        return YES;
    } else {
        NSLog(@"金额不能为空");
        return NO;
    }
}

//传入支付流程数据
- (UserInfoModel *)test {
    UserInfoModel *userInfoModel = [[UserInfoModel alloc] init];
    userInfoModel.money = self.textField.text;
    return userInfoModel;
}

@end
