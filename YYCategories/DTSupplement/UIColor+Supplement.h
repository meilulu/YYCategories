//
//  UIColor+Supplement.h
//  Demo
//
//  Created by 树妖 on 2019/7/17.
//  Copyright © 2019 树妖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Supplement)
+ (UIColor *)dt_colorWithR:(NSInteger)r g:(NSInteger)g b:(NSInteger)b;
+ (UIColor *)dt_colorWithR:(NSInteger)r g:(NSInteger)g b:(NSInteger)b alpha:(CGFloat)alpha;

/**
 生成一个随机颜色
 */
+ (UIColor *)dt_randomColor;
@end

NS_ASSUME_NONNULL_END
