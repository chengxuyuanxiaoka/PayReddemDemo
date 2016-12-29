//
//  ResultModel.h
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResultModel : NSObject

@property (nonatomic, copy)   void(^payResultBlock)(NSString *status, NSDictionary *payDict);

+ (instancetype)sharedInstance;

@end
