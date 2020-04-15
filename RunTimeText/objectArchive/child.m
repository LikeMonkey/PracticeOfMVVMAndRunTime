//
//  child.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "child.h"
#import "NSObject+Archive.h"


@implementation child

- (NSArray *)ignoredNames {
    return @[];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        [self glc_iniwWithCoder:aDecoder];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)acoder{
    [self glc_encodeWithcoder:acoder];
}
@end
