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
    
//    self.transparentView.backgroundColor = [UIColor clearColor];
    self.transparentView.alpha = 0.75f; //[[UIColor whiteColor] colorWithAlphaComponent:];
//    [self setTransitioningDelegate:_transitionToSettingPage];
//    userSettingVC.modalPresentationStyle= UIModalPresentationCustom;
//    [self presentViewController:userSettingVC animated:YES completion:nil];
    // Do any additional setup after loading the view.
    
//    self.settingNavBar.tintColor = [UIColor redColor];
//    NSLog(@"Navframe Height = %f",
//          self.settingNavBar.frame.size.height);
//    self.settingNavBar.topItem.title = @"MY ACCOUNT";
    
    
    NSLog(@"******************************************************************************");
    
    NSLog(@"tranparent-view siz(width, height)e =  %f, %f", _transparentView.frame.size.width, _transparentView.frame.size.height);
    
    NSLog(@"setting-List-view siz(width, height)e =  %f, %f", _settingList.frame.size.width, _settingList.frame.size.height);
    NSLog(@"self-view size =  %f, %f", self.view.frame.size.width, self.view.frame.size.width);
    
    NSLog(@"settingNavBar = %@", _settingNavBar);
    
    
    // UIImage *img = [[UIImage alloc] initWithContentsOfFile:<#(NSString *)#>@"launch-page"];
    // UIImage *img = [UIImage imageNamed:@"launch-page.png"];

    // self.testImg = [[UIImageView alloc] initWithImage:img];
    // [self.view addSubview:_testImg];
    
    
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

- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
