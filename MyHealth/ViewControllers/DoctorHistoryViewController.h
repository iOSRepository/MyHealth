//
//  DoctorHistoryViewController.h
//  MyHealth
//
//  Created by Ashish Chhabra on 10/18/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoctorHistoryViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) IBOutlet UITableView *tblView_doctorHistory;
@property (nonatomic, retain) IBOutlet UIButton *btn_search;
@property (nonatomic, retain) IBOutlet UITextField *txtField_search;
@property (nonatomic, retain) IBOutlet UIButton *btn_back;
@end
