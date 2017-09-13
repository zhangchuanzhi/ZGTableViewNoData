//
//  UITableView+ZGNoData.m
//  FinancialExam
//
//  Created by offcn_zcz32036 on 2017/9/13.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import "UITableView+ZGNoData.h"

@implementation UITableView (ZGNoData)
-(UIImageView *)getTableFootView:(CGRect)rect str:(NSString *)str {
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:rect];
    imageView.image = [UIImage imageNamed:str];
    imageView.contentMode = UIViewContentModeCenter;
    
    return imageView;
}
-(void)tableReloadCtrl:(UITableView *)tableView rect:(CGRect)rect ifNeedFoot:(BOOL)ifNeed
{
    [tableView reloadData];
    if (!ifNeed)
    {
        tableView.tableFooterView=[self getTableFootView:rect str:@"timg"];
    }
    else
    {
        tableView.tableFooterView=[UIView new];
    }
}
@end
