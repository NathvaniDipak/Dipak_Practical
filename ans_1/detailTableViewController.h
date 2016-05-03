//
//  detailTableViewController.h
//  ans_1
//
//  Created by MAC on 10/27/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "nextTableViewCell.h"
#import "ViewController.h"
@interface detailTableViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arrtext;
    NSArray *arrimg;
}

@end
