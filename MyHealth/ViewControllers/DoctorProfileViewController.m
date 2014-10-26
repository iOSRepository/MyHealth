//
//  DoctorProfileViewController.m
//  MyHealth
//
//  Created by Ashish Chhabra on 20/10/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import "DoctorProfileViewController.h"
#import "DoctorProfileCustomCell.h"
#import "DoctorProfileHeaderView.h"
#import "DoctorCommentsCustomCell.h"
#import "DoctorNotesCustomCell.h"
@interface DoctorProfileViewController ()
{
    DoctorProfileCustomCell *cell;
    DoctorCommentsCustomCell *commentCell;
    DoctorNotesCustomCell *noteCell;
}
@end

@implementation DoctorProfileViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [_tblView_profile registerNib:[UINib nibWithNibName:@"DoctorEducationHistroyCell" bundle:nil] forCellReuseIdentifier:@"Reuse"];
    [_tblView_profile registerNib:[UINib nibWithNibName:@"DoctorCommentsCustomCell" bundle:nil] forCellReuseIdentifier:@"ReuseCommentCell"];
    [_tblView_profile registerNib:[UINib nibWithNibName:@"DoctorNotesCustomCell" bundle:nil] forCellReuseIdentifier:@"ReuseCustomNotes"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -  UITableView Methods
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0) {
        
      cell = [tableView dequeueReusableCellWithIdentifier:@"Reuse"];
      return cell;
        
    } else if (indexPath.section == 1){
        
        commentCell = [tableView dequeueReusableCellWithIdentifier:@"ReuseCommentCell"];
        commentCell.imgView_user.layer.cornerRadius = 15.0f;
        commentCell.imgView_user.layer.masksToBounds = YES;
        return commentCell;
        
    } else {
        
        noteCell = [tableView dequeueReusableCellWithIdentifier:@"ReuseCustomNotes"];
        return noteCell;
    }
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        
        return 4;
        
    } else if (section == 1){
        
        return 3;
        
    } else {
        
        return 2;
    }
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        
        NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"DoctorProfileHeaderView" owner:self options:nil];
        DoctorProfileHeaderView *docView = [nibObjects objectAtIndex:0];
        
        docView.imgView_doctor.layer.cornerRadius = 45;
        docView.imgView_doctor.layer.masksToBounds = YES;
        
        return docView;
        
    }else if(section == 2){
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
        view.backgroundColor = [UIColor colorWithRed:200.0f/255.0f green:232.0f/255.0f blue:244.0f/255.0f alpha:1.0f];
        UILabel *lbl_heading = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.view.frame.size.width, 30)];
        lbl_heading.text = @"My Notes";
        lbl_heading.textColor = [UIColor colorWithRed:28.0f/255.0f green:149.0f/255.0f blue:266.0f/255.0f alpha:1];
        lbl_heading.textAlignment = NSTextAlignmentCenter;
        [view addSubview:lbl_heading];
        return view;
    }
    return [UIView new];
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if (section == 2) {
        
        NSArray *nibObjects = [[NSBundle mainBundle] loadNibNamed:@"DoctorProfileFooterView" owner:self options:nil];
        UIView *docView = [nibObjects objectAtIndex:0];
        return docView;
    }
    return [UIView new];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        
        return 275;
        
    } else if (section == 2){
        
        return 30;
    }
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        
        return 100;
        
    } else if (indexPath.section == 1){
        
        return 95;
        
    } else {
        
        return 90;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 2) {
        
        return 195;
    }
    return 1;
}
// Navigate Back
-(IBAction)navigateback:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
