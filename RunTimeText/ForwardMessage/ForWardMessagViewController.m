//
//  ForWardMessagViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "ForWardMessagViewController.h"
#import "Pig.h"

@interface ForWardMessagViewController ()

@end

@implementation ForWardMessagViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Pig *pid = [[Pig alloc]init];
    [pid eat];
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
