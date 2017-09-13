//
//  ViewController.m
//  ZGTableViewNoData
//
//  Created by offcn_zcz32036 on 2017/9/13.
//  Copyright © 2017年 cn. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+ZGNoData.h"
@interface ViewController ()
@property(nonatomic,strong)UITableView*tableview;
@property(nonatomic,strong)NSMutableArray*mutDataArr;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _tableview=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_tableview];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableview tableReloadCtrl:self.tableview rect:self.tableview.bounds ifNeedFoot:self.mutDataArr.count?YES:NO];
    });
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
