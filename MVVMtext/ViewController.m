//
//  ViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "ViewController.h"
#import "CustomViewController.h"
#import "MessageTextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomViewController *vc = [[CustomViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
