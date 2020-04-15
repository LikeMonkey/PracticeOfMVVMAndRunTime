//
//  Dog.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "Dog.h"
#import <objc/message.h>

@implementation Dog
void run(id self,SEL _cmd,NSNumber *metre){
    NSLog(@"跑了%@米",metre);
}
//当调用一个为实现的方法是会来到这里
+(BOOL)resolveClassMethod:(SEL)sel{
    return YES;
}
+(BOOL)resolveInstanceMethod:(SEL)sel{
    if (sel == NSSelectorFromString(@"run:")) {
          //动态添加run
          class_addMethod(self, @selector(run:), run, "v@:@");
          return YES;
      }
      return [super resolveClassMethod:sel];
}
@end
