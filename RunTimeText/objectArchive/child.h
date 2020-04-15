//
//  child.h
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface child : NSObject
/** <#assign属性注释#> */
@property (nonatomic,strong) NSString *name;

- (NSArray *)ignoredNames;
-(instancetype)initWithCoder:(NSCoder*)aDecoder;

-(void)encodeWithCoder:(NSCoder *)acoder;
@end

NS_ASSUME_NONNULL_END
