//
//  ViewController.h
//  ans_3
//
//  Created by MAC on 10/27/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
- (IBAction)btn_alrt:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lbl_out;

@end
