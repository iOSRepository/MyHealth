//
//  DoctorProfileViewController.h
//  MyHealth
//
//  Created by Ashish Chhabra on 20/10/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoctorProfileViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) IBOutlet UITableView *tblView_profile;
@end
