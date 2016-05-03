//
//  ViewController.m
//  ans_4
//
//  Created by MAC on 10/27/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pkrvw;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    arrstate=[[NSArray alloc]initWithObjects:@"Karnataka",@"Maharashtra",@"Gujarat",@"A.P", nil];
    arrcity=[[NSArray alloc]initWithObjects:@"Bangalore",@"Pune",@"Rajkot",@"Hyderabad", nil];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component)
    {
        case 0:
            return arrstate.count;
            break;
        case 1:
            return arrcity.count;
            break;
        default:
            break;
    }
    return component;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component==0)
    {
        return [arrstate objectAtIndex:row];
    }
    if (component==1)
    {
        return [arrcity objectAtIndex:row];
    }
    return nil;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    /*NSString *str=[NSString stringWithFormat:@"%@,%@",[arrstate objectAtIndex:row],[arrcity objectAtIndex:row]];*/
    
     NSString *st_one=[NSString stringWithFormat:@"%@",[arrstate objectAtIndex:[pickerView selectedRowInComponent:0]]];
    
     NSString *st_two=[NSString stringWithFormat:@"%@",[arrcity objectAtIndex:[pickerView selectedRowInComponent:1]]];
     
     NSString *str=[NSString stringWithFormat:@"%@ %@",st_one,st_two];
    
     
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert"message:str delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [alert show];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
