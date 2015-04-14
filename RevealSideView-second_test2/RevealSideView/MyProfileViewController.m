//
//  MyProfileViewController.m
//  RevealSideView
//
//  Created by Beehyv_Mac2 on 31/03/15.
//  Copyright (c) 2015 Beehyv_Mac2. All rights reserved.
//

#import "MyProfileViewController.h"
#import "TransitionDelegate.h"
#import "UserSettingsViewController.h"

@interface MyProfileViewController ()

@property(nonatomic, strong) TransitionDelegate *transitionToSettingPage; //transitionController

@end

@implementation MyProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.transitionToSettingPage = [[TransitionDelegate alloc] init];
    
}


- (IBAction)displaySettingOptions:(id)sender {
    NSLog(@"**************333333333333333333333333**************");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // SettingsNavigationController => UserSettingsViewController
    UINavigationController *navControllerToSettings = [storyboard instantiateViewControllerWithIdentifier:@"SettingsNavigationController"];
    UIViewController *userSettingVC = [storyboard instantiateViewControllerWithIdentifier:@"UserSettingsViewController"];
    
    // set the <alpha> value to 0 to make completely transparent
    userSettingVC.view.backgroundColor = [UIColor clearColor];
    
        [userSettingVC setTransitioningDelegate:_transitionToSettingPage];
        userSettingVC.modalPresentationStyle= UIModalPresentationCustom;
        [self presentViewController:userSettingVC animated:YES completion:nil];
    
//    navControllerToSettings.view.backgroundColor = [UIColor clearColor];
//    navControllerToSettings.navigationBar.backgroundColor = [UIColor clearColor];
    
    
//    [navControllerToSettings.navigationBar setBackgroundImage:nil
//                                                  forBarMetrics:UIBarMetricsDefault];
//    navControllerToSettings.navigationBar.shadowImage = nil;
//    navControllerToSettings.navigationBar.translucent = YES;
//    
//    
//    [navControllerToSettings setTransitioningDelegate:_transitionToSettingPage];
//    navControllerToSettings.modalPresentationStyle= 3;
//    [self presentViewController:navControllerToSettings animated:YES completion:nil];
    
    //
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"**************1111111111111111111**************");
    
//    UserSettingsViewController *dvc = [segue destinationViewController];
//    dvc.view.backgroundColor = [UIColor clearColor];
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
