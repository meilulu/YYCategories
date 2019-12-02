//
//  CALayer+Supplement.h
//  Objective-cDemo
//
//  Created by ShareAnimation on 2019/11/22.
//  Copyright © 2019 爱丽丝的梦境. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (Supplement)
- (void)dt_setShadow:(UIColor *)shadowColor opacity:(CGFloat)opacity offset:(CGSize)size radius:(CGFloat)radius ;
@end

NS_ASSUME_NONNULL_END
