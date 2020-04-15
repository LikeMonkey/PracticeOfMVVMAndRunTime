//
//  UIImage+Swizzing.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "UIImage+Swizzing.h"

#import <objc/message.h>


@implementation UIImage (Swizzing)
+(void)load{
    Method imageNameMothod = class_getClassMethod(self, @selector(imageNamed:));
    Method glc_imageNameMethod = class_getClassMethod(self, @selector(glc_imageName:));
    //交换方法
    method_exchangeImplementations(imageNameMothod, glc_imageNameMethod);
}
+(UIImage *)glc_imageName:(NSString *)name{
    UIImage *image = [UIImage glc_imageName:name];
    if (image) {
        NSLog(@"加载成功");
    }else{
        NSLog(@"加载失败");
    }
    return image;
}
@end
