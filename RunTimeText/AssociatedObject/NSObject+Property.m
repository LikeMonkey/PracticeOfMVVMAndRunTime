//
//  NSObject+Property.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "NSObject+Property.h"

#import <objc/message.h>


@implementation NSObject (Property)

-(void)setName:(NSString *)name{
    //把属性和对象关联起来
    objc_setAssociatedObject(self, "name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSString *)name{
    return objc_getAssociatedObject(self, "name");
}
@end
