//
//  ResultModel.m
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import "ResultModel.h"

@implementation ResultModel

+ (instancetype)sharedInstance {
    static ResultModel *resultModel;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        resultModel = [[ResultModel alloc] init];
    });
    
    return resultModel;
}

@end
