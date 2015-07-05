//
//  UIColor+TICKHex.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "UIColor+TICKHex.h"

@implementation UIColor (TICKHex)
+ (UIColor *)tick_colorWithHexStr:(NSString *)aHexStr alpha:(CGFloat)aAlpha
{
    NSString *tCString = [[aHexStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if([tCString hasPrefix:@"#"])
        tCString = [tCString substringFromIndex:1];
    
    if([tCString hasPrefix:@"0x"] || [tCString hasPrefix:@"0X"])
        tCString = [tCString substringFromIndex:2];
    
    if([tCString length] != 6)
        return [UIColor whiteColor]; // return default color
    
    // get RGB value
    NSString *tRString = [tCString substringWithRange:NSMakeRange(0, 2)];
    NSString *tGString = [tCString substringWithRange:NSMakeRange(2, 2)];
    NSString *tBString = [tCString substringWithRange:NSMakeRange(4, 2)];
    
    // Scan RGB String to Int
    unsigned int tRInt, tGInt, tBInt;
    [[NSScanner scannerWithString:tRString] scanHexInt:&tRInt];
    [[NSScanner scannerWithString:tGString] scanHexInt:&tGInt];
    [[NSScanner scannerWithString:tBString] scanHexInt:&tBInt];
    
    // Alpha Illegal
    if(aAlpha < 0.0 || aAlpha > 1.0) aAlpha = 1.0;
    
    return [UIColor colorWithRed:((float)tRInt / 255.0)
                           green:((float)tGInt / 255.0)
                            blue:((float)tBInt / 255.0)
                           alpha:aAlpha];
}

+ (UIColor *)tick_colorWithHex:(long)aHex alpha:(CGFloat)aAlpha
{
    CGFloat tRedValue = (CGFloat)((aHex & 0xFF0000 >> 16)/255.0);
    CGFloat tGreenValue = (CGFloat)((aHex & 0xFF00 >> 8)/255.0);
    CGFloat tBlueValue = (CGFloat)((aHex & 0xFF)/255.0);
    
    return [UIColor colorWithRed:tRedValue green:tGreenValue blue:tBlueValue alpha:aAlpha];
}

@end
