//
//  UserSettingsViewController.m
//  RevealSideView
//
//  Created by Beehyv_Mac2 on 13/04/15.
//  Copyright (c) 2015 Beehyv_Mac2. All rights reserved.
//

#import "UserSettingsViewController.h"

@interface UserSettingsViewController ()

@end

@implementation UserSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // SettingsNavigationController => UserSettingsViewController
//    UINavigationController *navControllerToSettings = [storyboard instantiateViewControllerWithIdentifier:@"SettingsNavigationController"];
    
    NSLog(@"**************2222222222222222222222**************");
//    UIView *tv = [storyboard ins ]
    
    self.transparentView.backgroundColor = [UIColor clearColor];
    self.transparentView.alpha = 0.75; //[[UIColor whiteColor] colorWithAlphaComponent:];
//    [self setTransitioningDelegate:_transitionToSettingPage];
//    userSettingVC.modalPresentationStyle= UIModalPresentationCustom;
//    [self presentViewController:userSettingVC animated:YES completion:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)dismissUserSettingOptions:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
