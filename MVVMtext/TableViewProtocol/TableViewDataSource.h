//
//  TableViewDataSource.h
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewDataSource : NSObject<UITableViewDataSource>

/** <#assign属性注释#> */
@property (nonatomic,strong) NSArray *array;
@end

NS_ASSUME_NONNULL_END
