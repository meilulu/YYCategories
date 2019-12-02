//
//  CALayer+Supplement.m
//  Objective-cDemo
//
//  Created by ShareAnimation on 2019/11/22.
//  Copyright © 2019 爱丽丝的梦境. All rights reserved.
//

#import "CALayer+Supplement.h"

@implementation CALayer (Supplement)
- (void)dt_setShadow:(UIColor *)shadowColor opacity:(CGFloat)opacity offset:(CGSize)size radius:(CGFloat)radius {
    self.shadowColor = shadowColor.CGColor;
    self.shadowOpacity = opacity;
    self.shadowOffset = size;
    self.shadowRadius = radius;
}
@end
