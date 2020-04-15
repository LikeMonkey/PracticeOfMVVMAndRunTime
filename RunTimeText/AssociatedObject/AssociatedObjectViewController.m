//
//  AssociatedObjectViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "AssociatedObjectViewController.h"
#import "NSObject+Property.h"

@interface AssociatedObjectViewController ()

@end

@implementation AssociatedObjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSObject *objec = [NSObject new];
    objec.name = @"glc";
    NSLog(@"%@",objec.name);
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
