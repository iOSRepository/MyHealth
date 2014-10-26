//
//  MedicalHistoryViewController.h
//  MyHealth
//
//  Created by Ashish Chhabra on 10/18/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MedicalHistoryViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) IBOutlet UITableView *tblView_medicalHistory;
@property (nonatomic, retain) IBOutlet UIButton *btn_search;
@property (nonatomic, retain) IBOutlet UITextField *txtField_search;
@property (nonatomic, retain) IBOutlet UIButton *btn_back;
@end
