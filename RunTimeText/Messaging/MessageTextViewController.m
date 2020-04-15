//
//  MessageTextViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "MessageTextViewController.h"
#import "Cat.h"
#import <objc/message.h>
@interface MessageTextViewController ()

@end

@implementation MessageTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Class catClass = objc_getClass("Cat");
    Cat *moer = objc_msgSend(catClass, @selector(alloc));
    moer = objc_msgSend(moer, @selector(init));
    objc_msgSend(moer, @selector(eat));
    Cat*alex = objc_msgSend(objc_msgSend(objc_getClass("Cat"),sel_registerName("alloc")),sel_registerName("init"));
    objc_msgSend(alex, @selector(run));
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
