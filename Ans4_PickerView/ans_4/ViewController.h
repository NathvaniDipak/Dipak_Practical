//
//  ViewController.h
//  ans_4
//
//  Created by MAC on 10/27/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
{
    NSArray *arrstate;
    NSArray *arrcity;
    NSMutableString *str1;
    NSMutableString *str2;
}
@property (weak, nonatomic) IBOutlet UIPickerView *pkrvw;

@end
