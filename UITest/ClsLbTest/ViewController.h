//
//  ViewController.h
//  ClsLbTest
//
//  Created by wangjl on 9/7/15.
//  Copyright (c) 2015 wangjl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic, strong)UITableView *tableViewMain;

@end

