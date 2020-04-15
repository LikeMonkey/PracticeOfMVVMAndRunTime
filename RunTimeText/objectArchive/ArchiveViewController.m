//
//  ArchiveViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "ArchiveViewController.h"
#import "child.h"

@interface ArchiveViewController ()<UITextFieldDelegate>
/** <#assign属性注释#> */
@property (nonatomic,strong) child *chiid;
@end

@implementation ArchiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UITextField *textfild = [[UITextField alloc]initWithFrame:CGRectMake(50, 120, 100, 30)];
    [self.view addSubview:textfild];
    textfild.backgroundColor =[ UIColor redColor];
    textfild.delegate = self;
    self.chiid = [NSKeyedUnarchiver unarchiveObjectWithFile:[NSString stringWithFormat:@"%@/anCat", NSHomeDirectory()]];
    if (!self.chiid) {
        self.chiid = [[child alloc]init];
    }
    textfild.text = self.chiid.name;
    NSLog( @"_++++%@",self.chiid.name);
    
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    self.chiid.name = textField.text;
     NSLog( @"_++++%@",self.chiid.name);
    [NSKeyedArchiver archiveRootObject:self.chiid toFile:[NSString stringWithFormat:@"%@/anCat", NSHomeDirectory()]];
    return YES;
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
