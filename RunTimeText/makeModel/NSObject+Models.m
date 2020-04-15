//
//  NSObject+Models.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "NSObject+Models.h"
#import <objc/message.h>



@implementation NSObject (Models)

+(instancetype)modelWithdic:(NSDictionary *)dic updateDic:(nonnull NSDictionary *)updateDic{
    id model = [[self alloc]init];
    //遍历模型属性
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList(self, &count);
    for (int i =0; i<count; i++) {
        Ivar ivar = ivars[i];
        //属性名称
        NSString *ivarname = [NSString stringWithUTF8String:ivar_getName(ivar)];
        ivarname = [ivarname substringFromIndex:1];
        id value = dic[ivarname];
        //模型中属性名对应字典中的key
        if (value == nil) {
            if (updateDic) {
                NSString *keyName = updateDic[ivarname];
                value = dic[keyName];
            }
        }
        [model setValue:value forKey:ivarname];
    }
    return model;
}
+(instancetype)modelWithdic:(NSDictionary *)dic{
    return  [self modelWithdic:dic updateDic:nil];
}
@end
