//
//  NSObject+Models.h
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//




#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Models)
+(instancetype)modelWithdic:(NSDictionary *)dic;
+(instancetype)modelWithdic:(NSDictionary *)dic updateDic:(NSDictionary *)updateDic;
@end

NS_ASSUME_NONNULL_END
