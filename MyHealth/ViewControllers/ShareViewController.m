//
//  ShareViewController.m
//  MyHealth
//
//  Created by Ashish Chhabra on 25/10/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import "ShareViewController.h"
#import "ShareCustomCell.h"
@interface ShareViewController ()
{
    ShareCustomCell *cell;
    NSMutableArray *arrayShareType;
    NSMutableArray *arrayImages;
}
@end

@implementation ShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    [self.tblView_share registerNib:[UINib nibWithNibName:@"ShareCustomCell" bundle:nil] forCellReuseIdentifier:@"Reuse"];
    
    arrayShareType = [[NSMutableArray alloc] init];
    [arrayShareType addObject:@"Dropbox"];
    [arrayShareType addObject:@"One Drive"];
    [arrayShareType addObject:@"iCloud"];
    [arrayShareType addObject:@"Google Drive"];
    
    arrayImages = [[NSMutableArray alloc] init];
    [arrayImages addObject:@"icon_connectdropbox.png"];
    [arrayImages addObject:@"icon_connectonedrive.png"];
    [arrayImages addObject:@"icon_connecticloud.png"];
    [arrayImages addObject:@"icon_connectonedrive.png"];
    
    _tblView_share.scrollEnabled = NO;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell = [tableView dequeueReusableCellWithIdentifier:@"Reuse"];
    
    if ((indexPath.row == 0)) {
        
        cell.imgView_bg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"icon_ratebg.png"]];
        
    } else {
        
        cell.imgView_bg.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"icon_doctorspecial_middle.png"]];
    }
    cell.lbl_source.text = [arrayShareType objectAtIndex:indexPath.row];
    [cell.imgView setImage:[UIImage imageNamed:[arrayImages objectAtIndex:indexPath.row]]];
    cell.imgView.contentMode = UIViewContentModeScaleAspectFit;
    return  cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
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
