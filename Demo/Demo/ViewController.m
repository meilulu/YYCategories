//
//  ViewController.m
//  Demo
//
//  Created by 树妖 on 2018/12/14.
//  Copyright © 2018年 树妖. All rights reserved.
//

#import "ViewController.h"
#import "YYCategories.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点击" style:UIBarButtonItemStyleDone target:self action:@selector(doRightAction)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点击" style:UIBarButtonItemStyleDone target:self action:@selector(doLeftAction)];
    
    UIView *tempView = [UIView new];
    
    tempView.frame = CGRectMake(0, 0, 200, 200);
    tempView.center = self.view.center;
    tempView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:tempView];
    [tempView.layer addFadeAnimationWithDuration:1.5 curve:UIViewAnimationCurveEaseIn];

}

- (void)doRightAction {
    [self.view dt_showLoadingView];
}

- (void)doLeftAction {
    [self.view dt_hideLoadingView];
}

@end
