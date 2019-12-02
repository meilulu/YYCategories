//
//  NSString+Supplement.h
//  Demo
//
//  Created by ShareAnimation on 2019/10/29.
//  Copyright © 2019 树妖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Supplement)

- (NSAttributedString *)dt_addColor:(UIColor *)color toString:(NSString *)targetString;

@end

NS_ASSUME_NONNULL_END
