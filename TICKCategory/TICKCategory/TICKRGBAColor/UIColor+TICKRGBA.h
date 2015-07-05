//
//  UIColor+TICKRGBA.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (TICKRGBA)

/*!
*  @brief  Get UIColor's RGBA Value
*
*  @return Array of UIColor's RGBA Value(NSNumber-double), *255 to int value
*/
- (NSArray *)tick_colorRGBAValue;
@end
