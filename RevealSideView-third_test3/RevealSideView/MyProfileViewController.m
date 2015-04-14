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

/*
 
 
 Defines the transition style that will be used for this view controller when it is presented modally. Set
 this property on the view controller to be presented, not the presenter.  Defaults to
 UIModalTransitionStyleCoverVertical.

typedef NS_ENUM(NSInteger, UIModalTransitionStyle) {
 UIModalTransitionStyleCoverVertical = 0,
 UIModalTransitionStyleFlipHorizontal,
 UIModalTransitionStyleCrossDissolve,
 UIModalTransitionStylePartialCurl NS_ENUM_AVAILABLE_IOS(3_2),
};
 
typedef NS_ENUM(NSInteger, UIModalPresentationStyle) {
 UIModalPresentationFullScreen = 0,
 UIModalPresentationPageSheet NS_ENUM_AVAILABLE_IOS(3_2),
 UIModalPresentationFormSheet NS_ENUM_AVAILABLE_IOS(3_2),
 UIModalPresentationCurrentContext NS_ENUM_AVAILABLE_IOS(3_2),
 UIModalPresentationCustom NS_ENUM_AVAILABLE_IOS(7_0),
 UIModalPresentationOverFullScreen NS_ENUM_AVAILABLE_IOS(8_0),
 UIModalPresentationOverCurrentContext NS_ENUM_AVAILABLE_IOS(8_0),
 UIModalPresentationPopover NS_ENUM_AVAILABLE_IOS(8_0),
 UIModalPresentationNone NS_ENUM_AVAILABLE_IOS(7_0) = -1,
 };

 
 
 */




- (IBAction)displaySettingOptions:(id)sender {
    
    NSLog(@"**************333333333333333333333333**************");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // SettingsNavigationController => UserSettingsViewController
    // UINavigationController *navControllerToSettings = [storyboard instantiateViewControllerWithIdentifier:@"SettingsNavigationController"];
    UIViewController *userSettingVC = [storyboard instantiateViewControllerWithIdentifier:@"UserSettingsViewController"];
    
    // set the <alpha> value to 0 to make completely transparent
    userSettingVC.view.backgroundColor = [UIColor clearColor];
    
    
    // sets the < Transition Delegate > // find the proper use
    [userSettingVC setTransitioningDelegate:_transitionToSettingPage];
    
    
    userSettingVC.modalPresentationStyle = UIModalPresentationCustom;  //UIModalPresentationCustom;
    // userSettingVC.modalTransitionStyle =  UIModalTransitionStyleFlipHorizontal;
    
    // display the destination view controller
    [self presentViewController:userSettingVC animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
/* - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"**************1111111111111111111**************");
    
//    UserSettingsViewController *dvc = [segue destinationViewController];
//    dvc.view.backgroundColor = [UIColor clearColor];
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
} */


@end
