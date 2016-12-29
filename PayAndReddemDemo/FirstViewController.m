//
//  FirstViewController.m
//  block回调
//
//  Created by 一米阳光 on 16/11/29.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithWhite:1 alpha:0.9];
    self.navigationItem.title = @"主界面";
    [self setupSubviews];
}

- (void)setupSubviews {
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.backgroundColor = [UIColor greenColor];
    [self.button setTitle:@"主界面" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.button.frame = CGRectMake((CGRectGetWidth(self.view.bounds)-100)/2,100, 100, 35);
    [self.button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)buttonClick:(UIButton *)btn {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

@end
