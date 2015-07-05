//
//  UIColor+TICKRGBA.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "UIColor+TICKRGBA.h"

@implementation UIColor (TICKRGBA)
- (NSArray *)tick_colorRGBAValue
{
    const CGFloat *tComponets = CGColorGetComponents(self.CGColor);
    return @[@(tComponets[0]), @(tComponets[1]), @(tComponets[2]), @(tComponets[3])];
    
//    // Another way
//    NSString *tRGBValue = [NSString stringWithFormat:@"%@", self];
//    NSArray *tRGBList = [tRGBValue componentsSeparatedByString:@" "];
//    
//    int tRed = [[tRGBList objectAtIndex:1] intValue] * 255;
//    NSString *tRedStr = [NSString stringWithFormat:@"%d", tRed];
}
@end
