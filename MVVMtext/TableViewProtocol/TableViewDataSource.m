//
//  TableViewDataSource.m
//  MVVMtext
//
//  Created by ios 001 on 2019/12/25.
//  Copyright © 2019 ios 001. All rights reserved.
//

#import "TableViewDataSource.h"
#import "CustomTableViewCell.h"
#import "CustomModel.h"

@implementation TableViewDataSource

#pragma mark - tableView


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell=[CustomTableViewCell cellWithTableView:tableView withIdentifier:NSStringFromClass( [CustomTableViewCell class]) indexPath:indexPath];
    
    cell.titleLabel.text  = ((CustomModel *)[_array objectAtIndex:indexPath.row]).title;
    
    return cell;
}
@end
