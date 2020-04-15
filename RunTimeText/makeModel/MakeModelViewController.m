//
//  MakeModelViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "MakeModelViewController.h"

#import "NSObject+Models.h"
#import "UserModel.h"


@interface MakeModelViewController ()

@end

@implementation MakeModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dic = @{@"name":@"glc",@"ages":@(15),@"id":@"100"};
    
    UserModel *user = [UserModel modelWithdic:dic updateDic:@{@"ID":@"id"}];
    NSLog(@"%@",user);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
