//
//  UserSettingsViewController.h
//  RevealSideView
//
//  Created by Beehyv_Mac2 on 13/04/15.
//  Copyright (c) 2015 Beehyv_Mac2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserSettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *transparentView;
@property (weak, nonatomic) IBOutlet UIView *settingList;
@property (weak, nonatomic) IBOutlet UINavigationBar *settingNavBar;
@property (strong, nonatomic) IBOutlet UIImageView *testImg;

@end
