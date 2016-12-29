//
//  PayAndReddem.m
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import "PayAndReddem.h"
#import "ThridViewController.h"
#import "PayModel.h"
#import "ResultModel.h"

@implementation PayAndReddem

+ (void)setupPayInfo:(UserInfoModel *)userInfo subClass:(UIViewController *)subCotroller payResult:(void (^)(NSString *status, NSDictionary *payDict))payResultBlock {
    [ResultModel sharedInstance].payResultBlock = payResultBlock;
    
    PayModel *payModel = [PayModel sharedPayInfo];
    payModel.money = userInfo.money;
    ThridViewController *payInputVC = [[ThridViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:payInputVC];
    [subCotroller presentViewController:nav animated:YES completion:nil];
}

@end
