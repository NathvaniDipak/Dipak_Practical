//
//  ViewController.m
//  ans_3
//
//  Created by MAC on 10/27/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lbl_out;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_alrt:(id)sender
{
    UIAlertView *alr = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", @"Back", nil];
    [alr show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
        if (buttonIndex==0)
        {
            lbl_out.text=[alertView buttonTitleAtIndex:0];
        }
        else if (buttonIndex==1)
        {
            lbl_out.text=[alertView buttonTitleAtIndex:1];
        }
        else if (buttonIndex==2)
        {
            lbl_out.text=[alertView buttonTitleAtIndex:2];
        }
}
@end
