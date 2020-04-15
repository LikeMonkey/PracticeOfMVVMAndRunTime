//
//  TableViewDelegate.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "TableViewDelegate.h"
#import "CustomModel.h"
#import "MessageTextViewController.h"
#import "MethodSwizzingViewController.h"
#import "CustomViewController.h"
#import "ResolveInstanceMethodViewController.h"
#import "ForWardMessagViewController.h"
#import "AssociatedObjectViewController.h"
#import "MakeModelViewController.h"
#import "ArchiveViewController.h"

@implementation TableViewDelegate
#pragma mark - <UITableViewDelegate>
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController*rootVc;
    for (UIView *next = [tableView superview]; next; next = next.superview) {
            UIResponder *nextResponser = [next nextResponder];
        if ([nextResponser isKindOfClass:[CustomViewController class]]) {
            rootVc = (UIViewController *)nextResponser;
        }
    }
     MessageTextViewController *vc = [[MessageTextViewController alloc]init];
    MethodSwizzingViewController *swizzvc = [[MethodSwizzingViewController alloc]init];
    ResolveInstanceMethodViewController *resolvcVc = [[ResolveInstanceMethodViewController alloc]init];
    ForWardMessagViewController *forwardvc = [[ForWardMessagViewController alloc]init];
    AssociatedObjectViewController *assObjVC = [[AssociatedObjectViewController alloc]init];
    MakeModelViewController *modelVc = [[MakeModelViewController alloc]init];
    ArchiveViewController *archiveVc = [[ArchiveViewController alloc]init];
    switch (indexPath.row) {
        case 0:
            [rootVc.navigationController pushViewController:vc animated:YES];
            break;
            case 1:
            [rootVc.navigationController pushViewController:swizzvc animated:YES];
            break;
            case 2:
                       [rootVc.navigationController pushViewController:resolvcVc animated:YES];
                       break;
            case 3:
                                  [rootVc.navigationController pushViewController:forwardvc animated:YES];
                                  break;
            case 4:
                                             [rootVc.navigationController pushViewController:assObjVC animated:YES];
                                             break;
            case 5:
                                                       [rootVc.navigationController pushViewController:modelVc animated:YES];
                                                       break;
            
            case 6:
                                                                  [rootVc.navigationController pushViewController:archiveVc animated:YES];
                                                                  break;
        default:
            break;
    }
        
    
}


@end
