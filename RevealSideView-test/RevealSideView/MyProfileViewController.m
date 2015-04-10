//
//  MyProfileViewController.m
//  RevealSideView
//
//  Created by Beehyv_Mac2 on 31/03/15.
//  Copyright (c) 2015 Beehyv_Mac2. All rights reserved.
//

#import "MyProfileViewController.h"
#import "SWRevealViewController.h"

@interface MyProfileViewController ()

@end

@implementation MyProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.settingBarButtonItem setTarget: self.revealViewController];
        
//        settingBarButtonItemOnTVC
        [self.settingBarButtonItem setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
