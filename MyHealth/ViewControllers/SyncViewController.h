//
//  SyncViewController.h
//  MyHealth
//
//  Created by Ashish Chhabra on 14/11/14.
//  Copyright (c) 2014 Health. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropboxSDK/DropboxSDK.h>
@interface SyncViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITableView *tblView_sync;
@property (nonatomic, retain) IBOutlet UIButton *btn_back;
@property (nonatomic, strong) DBRestClient *restClient;
@end
