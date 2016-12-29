//
//  PayAndReddem.h
//  block回调
//
//  Created by 一米阳光 on 16/12/22.
//  Copyright © 2016年 一米阳光. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UserInfoModel.h"

@interface PayAndReddem : NSObject

+ (void)setupPayInfo:(UserInfoModel *)userInfo subClass:(UIViewController *)subCotroller payResult:(void (^)(NSString *status, NSDictionary *payDict))payResultBlock;

@end
