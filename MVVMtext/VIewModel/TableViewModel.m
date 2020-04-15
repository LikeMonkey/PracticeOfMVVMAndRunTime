//
//  TableViewModel.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "TableViewModel.h"
#import "CustomModel.h"

@implementation TableViewModel
-(void)headerRefreshRequestWithCallBack:(callback)callBack{
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(2);
        dispatch_async(dispatch_get_main_queue(), ^{
           
            NSMutableArray *array = [NSMutableArray array];
            for (int i =0; i<10; i++) {
                NSString *string = [NSString stringWithFormat:@"%d 徐金丹大大大的",i];
                CustomModel *model = [[CustomModel alloc]init];
                model.title = string;
                [array addObject:model];
            }
            callBack(array);
        });
    });
}
-(void)footerRefreshResquestWithCallBack:(callback)callBack{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
           sleep(2);
           dispatch_async(dispatch_get_main_queue(), ^{
              
               NSMutableArray *array = [NSMutableArray array];
               for (int i =0; i<10; i++) {
                   NSString *string = [NSString stringWithFormat:@"%d 徐金丹大大大的",i];
                   CustomModel *model = [[CustomModel alloc]init];
                   model.title = string;
                   [array addObject:model];
               }
               callBack(array);
           });
       });
}
@end
