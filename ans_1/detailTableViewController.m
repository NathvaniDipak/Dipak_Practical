//
//  detailTableViewController.m
//  ans_1
//
//  Created by MAC on 10/27/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "detailTableViewController.h"

@interface detailTableViewController ()

@end

@implementation detailTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    arrtext=[[NSArray alloc]initWithObjects:@"Apple",@"Banana",@"Lime",@"Mango",@"Orange",@"Kiwi",@"Graps",@"Watermelon", nil];
    arrimg=[[NSArray alloc]initWithObjects:@"apple.jpeg",@"banana.jpeg",@"lime.jpeg",@"mango.jpeg",@"orange.jpeg",@"Kiwi.jpg",@"Graps.jpg",@"Watermelon.jpg",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrtext.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    nextTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ncell" forIndexPath:indexPath];
    cell.img_vw.image=[UIImage imageNamed:[arrimg objectAtIndex:indexPath.row]];
    cell.lbl_out.text=[arrtext objectAtIndex:indexPath.row];
   [cell.btn_details addTarget:self action:@selector(btnaction:) forControlEvents:UIControlEventTouchUpInside];
    cell.btn_details.tag=indexPath.row;
    // Configure the cell...
    
     return cell;
}
-(void)btnaction:(UIButton *)sender
{
   NSLog(@"%@",[arrimg objectAtIndex:sender.tag]);
    ViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    vc.str1=[arrimg objectAtIndex:sender.tag];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
