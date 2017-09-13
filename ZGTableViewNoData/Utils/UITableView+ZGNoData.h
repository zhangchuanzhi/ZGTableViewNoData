//
//  UITableView+ZGNoData.h
//  FinancialExam
//
//  Created by offcn_zcz32036 on 2017/9/13.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (ZGNoData)
-(void)tableReloadCtrl:(UITableView *)tableView rect:(CGRect)rect ifNeedFoot:(BOOL)ifNeed
;
@end
