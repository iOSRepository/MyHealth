//
//  AddDocumentsViewController.m
//  MyHealth
//
//  Created by Ashish Chhabra on 25/10/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import "AddDocumentsViewController.h"
#import "AddDocCustomCell.h"
@interface AddDocumentsViewController ()
{
    AddDocCustomCell *cell;
}
@end

@implementation AddDocumentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tblView_add registerNib:[UINib nibWithNibName:@"AddDocCustomCell" bundle:nil] forCellReuseIdentifier:@"Reuse"];
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
        
        cell.imgView_bg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"icon_connecttop.png"]];
        
    } else {
        
        cell.imgView_bg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"icon_connectmiddle.png"]];
    }
    
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
// Navigate Back
-(IBAction)navigateback:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
