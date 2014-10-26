//
//  MedicalDocumentsViewController.h
//  MyHealth
//
//  Created by Ashish Chhabra on 23/10/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGSwipeTableCell.h"

@interface MedicalDocumentsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,MGSwipeTableCellDelegate>

@property (nonatomic, retain) IBOutlet UITableView *tblView_medicalHistory;
@end
