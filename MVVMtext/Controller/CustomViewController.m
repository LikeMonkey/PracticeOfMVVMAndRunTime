//
//  CustomViewController.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "CustomViewController.h"
#import "CustomTableViewCell.h"
#import "TableViewDataSource.h"
#import "TableViewDelegate.h"
#import "TableViewModel.h"
#import "YiRefreshFooter.h"
#import "YiRefreshHeader.h"


@interface CustomViewController ()

{
    TableViewDelegate *tableViewdelegate;
    TableViewDataSource *tableviewDataSource;
    TableViewModel *tableViewModel;
    YiRefreshFooter *refreshFooter;
    YiRefreshHeader *refreshHeader;
}
/** <#assign属性注释#> */
@property (nonatomic,strong) UITableView *tableView;
/** <#assign属性注释#> */
@property (nonatomic,strong) NSArray *totalSource;


@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    tableviewDataSource = [[TableViewDataSource alloc]init];
    tableViewdelegate = [[TableViewDelegate alloc]init];
    _tableView.delegate = tableViewdelegate;
    _tableView.dataSource = tableviewDataSource;
    tableViewModel = [[TableViewModel alloc]init];
    
    refreshHeader = [[YiRefreshHeader alloc]init];
    refreshHeader.scrollView = _tableView;
    [refreshHeader header];
     __weak typeof(self)ws = self;
    refreshHeader.beginRefreshingBlock = ^{
        __strong typeof(self) strongSelf = ws;
            [strongSelf headerRefreshAction];
    };
    //    是否在进入该界面的时候就开始进入刷新状态
        [refreshHeader beginRefreshing];

    //    YiRefreshFooter  底部刷新按钮的使用
        refreshFooter=[[YiRefreshFooter alloc] init];
        refreshFooter.scrollView=_tableView;
        [refreshFooter footer];
        
        refreshFooter.beginRefreshingBlock=^(){
            __strong typeof(self) strongSelf = ws;
            [strongSelf footerRefreshAction];
        };
        
}
-(void)headerRefreshAction{
    [tableViewModel headerRefreshRequestWithCallBack:^(NSArray *array) {
        self.totalSource = array;
        self->tableviewDataSource.array = self.totalSource;
        self->tableViewdelegate.array = array;
        [self->refreshHeader endRefreshing];
        [self->_tableView reloadData];
    }];
}
- (void)footerRefreshAction
{
    [tableViewModel footerRefreshResquestWithCallBack:^(NSArray *array) {
        self.totalSource = array;
               tableviewDataSource.array = array;
               tableViewdelegate.array = array;
               [refreshHeader endRefreshing];
               [_tableView reloadData];
    
    }];
  
}
#pragma mark ——— lazy

-(UITableView *)tableView {
    
    if(!_tableView) {
        
        _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        
        [_tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:NSStringFromClass([CustomTableViewCell class]) ];
    }
    
    return _tableView;
    
}

@end
