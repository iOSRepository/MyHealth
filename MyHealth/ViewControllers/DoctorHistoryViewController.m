//
//  DoctorHistoryViewController.m
//  MyHealth
//
//  Created by Ashish Chhabra on 10/18/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import "DoctorHistoryViewController.h"
#import "DoctorHistoryTableViewCell.h"
@interface DoctorHistoryViewController ()
{
    DoctorHistoryTableViewCell *cell;
}
@end

@implementation DoctorHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tblView_doctorHistory registerNib:[UINib nibWithNibName:@"DoctorHistoryTableViewCell" bundle:nil] forCellReuseIdentifier:@"Reuse"];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -  UITableView Methods

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell = [tableView dequeueReusableCellWithIdentifier:@"Reuse"];
    if ((indexPath.row == 0)) {
        
        cell.imgView_bg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"icon_ratebg.png"]];
        
    } else {
        
        cell.imgView_bg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"icon_doctorspecial_middle.png"]];
    }
    cell.imgView_user.layer.cornerRadius = 23.0f;
    cell.imgView_user.layer.masksToBounds = YES;
    return  cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *viewCtrl = [storyboard instantiateViewControllerWithIdentifier:@"DoctorProfileViewController"];
    [self.navigationController pushViewController:viewCtrl animated:YES];
}
// Navigate Back
-(IBAction)navigateback:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
