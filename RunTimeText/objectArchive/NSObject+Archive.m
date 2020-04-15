//
//  NSObject+Archive.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "NSObject+Archive.h"

#import <objc/runtime.h>


@implementation NSObject (Archive)
- (NSArray *)ignoredProperty {
    return @[];
}
-(void)glc_iniwWithCoder:(NSCoder *)aDeCoder{
    //不光归档自身的属性，还要循环把所有父类的属性也都找出来
    Class selfClass = self.class;
    while (selfClass && selfClass !=[NSObject class]) {
        unsigned int outcount = 0;
        Ivar *ivars = class_copyIvarList(selfClass, &outcount);
        for (int i =0; i<outcount; i++) {
            Ivar ivar = ivars[i];
            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
            //如果有实现忽略属性的方法
            if ([self respondsToSelector:@selector(ignoredProperty)]) {
                //就跳过这个属性
                if ([[self ignoredProperty] containsObject:key]) continue;
            }
            id value = [aDeCoder decodeObjectForKey:key];
            [self setValue:value forKey:key];
        }
        free(ivars);
        selfClass = [selfClass superclass];
    }
}
-(void)glc_encodeWithcoder:(NSCoder *)aCoder{
    Class selfClass = self.class;
    while (selfClass &&selfClass !=[NSObject class]) {
        unsigned int outCount = 0;
        Ivar *ivars =  class_copyIvarList([self class], &outCount);
        for (int i =0; i<outCount; i++) {
            Ivar ivar = ivars[i];
            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
            if ([self respondsToSelector:@selector(ignoredProperty)]) {
                      if ([[self ignoredProperty] containsObject:key]) {
                          continue;
                      }
                  }
            id value = [self valueForKeyPath:key];
            [aCoder encodeObject:value forKey:key];
        }
        free(ivars);
        selfClass = [selfClass superclass];
      
    }
}
@end
