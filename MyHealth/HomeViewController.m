//
//  ViewController.m
//  MyHealth
//
//  Created by Ashish Chhabra on 10/14/14.
//  Copyright (c) 2014 HealthApp. All rights reserved.
//

#import "HomeViewController.h"
#import "DoctorHistoryViewController.h"
#import "MenuCustomCollectionViewCell.h"
#import "MedicalHistoryViewController.h"
#import "MedicalDocumentsViewController.h"
#import "SettingsViewController.h"
@interface HomeViewController ()
{
    MenuCustomCollectionViewCell *customCollectionViewCell;
    NSMutableArray *arrayMenuItems;
    NSMutableArray *arrayMenuItemInfo;
    NSMutableArray *arrayItemImages;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    arrayMenuItems = [[NSMutableArray alloc]init];
    [arrayMenuItems addObject:@"MEDICAL HISTORY"];
    [arrayMenuItems addObject:@"DOCTOR DIRECTORY"];
    [arrayMenuItems addObject:@"MEDICAL DOCUMENTS"];
    [arrayMenuItems addObject:@"MYHEALTH SETTING"];
    
    arrayMenuItemInfo = [[NSMutableArray alloc] init];
    [arrayMenuItemInfo addObject:@"MY MEDICAL INFORMATION"];
    [arrayMenuItemInfo addObject:@"FIND, RATE,    RECOMMEND DOCTORS"];
    [arrayMenuItemInfo addObject:@"DOCUMENTS, RESULTS, AND REPORTS"];
    [arrayMenuItemInfo addObject:@"VIEW & CHANGE            APP SETTINGS"];
    
    arrayItemImages = [[NSMutableArray alloc] init];
    [arrayItemImages addObject:@"icon_medicalhistory.png"];
    [arrayItemImages addObject:@"icon_doctordirectory.png"];
    [arrayItemImages addObject:@"icon_medicaldocs.png"];
    [arrayItemImages addObject:@"icon_settings.png"];
    
    [_collectionView_AppMenu registerNib:[UINib nibWithNibName:@"MenuCustomCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"MenuCustomCollectionViewCell"];
    
    self.navigationController.navigationBarHidden = YES;
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -  UICollectionView Methods
-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    customCollectionViewCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MenuCustomCollectionViewCell" forIndexPath:indexPath];
    
    customCollectionViewCell.lbl_menuItem.text = [arrayMenuItems objectAtIndex:indexPath.row];
    customCollectionViewCell.lbl_menuItemInfo.text = [arrayMenuItemInfo objectAtIndex:indexPath.row];
    customCollectionViewCell.imgView_item.contentMode = UIViewContentModeScaleAspectFit;
    
    
    UIImage *image = [UIImage imageNamed:[arrayItemImages objectAtIndex:indexPath.row]];
    [customCollectionViewCell.imgView_item setImage:image];
    
    return customCollectionViewCell;
}
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}
- (UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsMake(0, 0, 95, 0); // top, left, bottom, right
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 0.0;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    NSLog(@"Index Path-->>%ld",(long)indexPath.row);
    if ((indexPath.row == 0)) {
        
        UIViewController *viewCrtl = [storyboard instantiateViewControllerWithIdentifier:@"MedicalHistoryViewController"];
        [self.navigationController pushViewController:viewCrtl animated:YES];
        
    } else if (indexPath.row == 1){
        
        UIViewController *viewCrtl = [storyboard instantiateViewControllerWithIdentifier:@"DoctorHistoryViewController"];
        [self.navigationController pushViewController:viewCrtl animated:YES];
    } else if (indexPath.row == 2){
        
        UIViewController *viewCrtl = [storyboard instantiateViewControllerWithIdentifier:@"MedicalDocumentsViewController"];
        [self.navigationController pushViewController:viewCrtl animated:YES];
    } else if (indexPath.row == 3){
        
        UIViewController *viewCrtl = [storyboard instantiateViewControllerWithIdentifier:@"SettingsViewController"];
        [self.navigationController pushViewController:viewCrtl animated:YES];
    }
    
}
@end
