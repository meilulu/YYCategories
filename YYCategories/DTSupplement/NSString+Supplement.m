//
//  NSString+Supplement.m
//  Demo
//
//  Created by ShareAnimation on 2019/10/29.
//  Copyright © 2019 树妖. All rights reserved.
//

#import "NSString+Supplement.h"


@implementation NSString (Supplement)

- (NSAttributedString *)dt_addColor:(UIColor *)color toString:(NSString *)targetString{
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:self];
    NSRange range = [self rangeOfString:targetString];
    [attrString addAttributes:@{NSForegroundColorAttributeName:color} range:range];
    return [attrString copy];
}

@end
