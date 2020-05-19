//
//  UIView+Supplement.m
//  Demo
//
//  Created by 树妖 on 2019/6/12.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "UIView+Supplement.h"
#import "Masonry.h"
@interface _DTLoadingView : UIView

@property (strong, nonatomic) UIActivityIndicatorView *indicatorView;
@property (strong, nonatomic) UILabel *indicatorLabel;
@property (strong, nonatomic) UIView *containerView;
@end

@implementation _DTLoadingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:249/255.0 green:249/255.0 blue:249/255.0 alpha:1];
        
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    [self addSubview:self.containerView];
    [self.containerView addSubview:self.indicatorView];
    [self.containerView addSubview:self.indicatorLabel];
    
    [self.containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.centerY.equalTo(self).offset(-80);
    }];
    
    [self.indicatorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.equalTo(self.containerView);
    }];
    
    [self.indicatorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.indicatorView.mas_right).offset(5);
        make.top.bottom.right.equalTo(self.containerView);
    }];
    
}

- (UIActivityIndicatorView *)indicatorView {
    if (!_indicatorView) {
        _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        [_indicatorView startAnimating];
    }
    return _indicatorView;
}

- (UILabel *)indicatorLabel {
    if (!_indicatorLabel) {
        _indicatorLabel = [UILabel new];
        _indicatorLabel.text = @"正在加载，请稍候...";
        _indicatorLabel.font = [UIFont systemFontOfSize:20];
        _indicatorLabel.textColor = [UIColor systemGrayColor];
    }
    return _indicatorLabel;
}

- (UIView *)containerView {
    if (!_containerView) {
        _containerView = [UIView new];
    }
    
    return _containerView;
}

@end

@implementation UIView (Supplement)

- (void)dt_showLoadingView  {
    if ([self viewWithTag:10086]) {
        NSLog(@"loadingView已经存在，不要重复添加");
        return;
    }
    
    _DTLoadingView *loadingView = [[_DTLoadingView alloc] initWithFrame:self.bounds];
    loadingView.tag = 10086;
    [self addSubview:loadingView];
    
    loadingView.alpha = 0;
    [UIView animateWithDuration:0.3 animations:^{
        loadingView.alpha = 1;
    }];
}

- (void)dt_hideLoadingView {
    _DTLoadingView *loadingView = [self viewWithTag:10086];
    if (loadingView) {
        [UIView animateWithDuration:0.3 animations:^{
            loadingView.alpha = 0;
        } completion:^(BOOL finished) {
            [loadingView removeFromSuperview];
        }];
    }
}

@end
