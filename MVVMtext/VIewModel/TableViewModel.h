//
//  TableViewModel.h
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^callback) (NSArray *array);
NS_ASSUME_NONNULL_BEGIN
@interface TableViewModel : NSObject
//tableview 头部刷新的网络请求
-(void)headerRefreshRequestWithCallBack:(callback)callBack;

//tableView 底部刷新的网络请求
-(void)footerRefreshResquestWithCallBack:(callback)callBack;
@end

NS_ASSUME_NONNULL_END
