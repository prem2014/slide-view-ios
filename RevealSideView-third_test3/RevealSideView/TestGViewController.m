//
//  TestGViewController.m
//  RevealSideView
//
//  Created by Beehyv_Mac2 on 14/04/15.
//  Copyright (c) 2015 Beehyv_Mac2. All rights reserved.
//

#import "TestGViewController.h"
#import "TransitionDelegate.h"
#import "UserSettingsViewController.h"


@interface TestGViewController ()
@property(nonatomic, strong) TransitionDelegate *transitionToSettingPage; //transitionController
@end

@implementation TestGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.transitionToSettingPage = [[TransitionDelegate alloc] init];
    // Do any additional setup after loading the view.
}


- (IBAction)displaySettingOptions:(id)sender {
    
    NSLog(@"**************TTTTTTTTTTTTTTTTTGGGGGGGGGGGGGGGGGGGGGGGG**************");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // SettingsNavigationController => UserSettingsViewController
    // UINavigationController *navControllerToSettings = [storyboard instantiateViewControllerWithIdentifier:@"SettingsNavigationController"];
    UIViewController *userSettingVC = [storyboard instantiateViewControllerWithIdentifier:@"UserSettingsViewController"];
    
    // set the <alpha> value to 0 to make completely transparent
    userSettingVC.view.backgroundColor = [UIColor clearColor];
    
    [userSettingVC setTransitioningDelegate:_transitionToSettingPage];
    userSettingVC.modalPresentationStyle= UIModalPresentationOverCurrentContext;  //UIModalPresentationCustom;
    [self presentViewController:userSettingVC animated:YES completion:nil];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
