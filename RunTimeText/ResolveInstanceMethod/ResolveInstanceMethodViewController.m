//
//  ResolveInstanceMethodViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "ResolveInstanceMethodViewController.h"
#import "Dog.h"

@interface ResolveInstanceMethodViewController ()

@end

@implementation ResolveInstanceMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dog *bill = [[Dog alloc]init];
    [bill performSelector:@selector(run:) withObject:@10];
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
