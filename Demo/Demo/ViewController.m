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
    
    UIImageView *imageView = [UIImageView new];
    imageView.image = [UIImage imageNamed:@"IMG_1162"];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    imageView.frame = self.view.frame;

}

- (void)doRightAction {
    [self.view showLoadingView];
}

- (void)doLeftAction {
    [self.view hideLoadingView];
}

@end
