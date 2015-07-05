//
//  UIColor+TICKHex.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (TICKHex)
/*!
 *  @brief  UIColor from HEXString
 *
 *  @param aHexStr 47D4FF or #47D4FF or 0x47D4FF or 0X47D4FF
 *  @param aAlpha  alpha vlaue for UIColor, default is 1.0
 *
 *  @return UIColor, default is [UIColor whiteColor]
 */
+ (UIColor *)tick_colorWithHexStr:(NSString *)aHexStr alpha:(CGFloat)aAlpha;

/*!
 *  @brief  UIColor from HEX Value
 *
 *  @param aHex   Hex Value(long)
 *  @param aAlpha alpha value for UIColor, default is 1.0
 *
 *  @return UIColor
 */
+ (UIColor *)tick_colorWithHex:(long)aHex alpha:(CGFloat)aAlpha;
@end
