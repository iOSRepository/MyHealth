//
//  ViewController.h
//  MyHealth
//
//  Created by Ashish Chhabra on 10/14/14.
//  Copyright (c) 2014 HealthApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, retain) IBOutlet UICollectionView *collectionView_AppMenu;

@end

