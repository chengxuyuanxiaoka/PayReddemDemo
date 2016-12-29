//
//  PayModel.m
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import "PayModel.h"

@implementation PayModel

+ (instancetype)sharedPayInfo {
    static PayModel *payModel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        payModel = [[PayModel alloc] init];
    });
    
    return payModel;
}

@end
