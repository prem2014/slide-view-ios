//
//  AnimatedTransitioning.m
//  CustomTransitionExample
//
//  Created by Blanche Faur on 10/24/13.
//  Copyright (c) 2013 Blanche Faur. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AnimatedTransitioning.h"
//#import "MyProfileViewController.h"
#import "UserSettingsViewController.h"

//#import "MainViewController.h"
//#import "SecondViewController.h"

@implementation AnimatedTransitioning

//===================================================================
// - UIViewControllerAnimatedTransitioning
//===================================================================

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.25f;
}



- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    UIView *inView = [transitionContext containerView];
    // UserSettingsViewController *toVC = (UserSettingsViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    // MyProfileViewController *fromVC = (MyProfileViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    // < get the view controller from where the request came >
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    // < get the view controller from where request is going to >
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    
    // try adding navigation bar to get the navigation bar work properly
    [inView addSubview:toVC.view];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    [toVC.view setFrame:CGRectMake(0, screenRect.size.height, fromVC.view.frame.size.width, fromVC.view.frame.size.height)];
    
    [UIView animateWithDuration:0.25f
                     animations:^{
                         
                         [toVC.view setFrame:CGRectMake(0, 0, fromVC.view.frame.size.width, fromVC.view.frame.size.height)];
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}


@end
