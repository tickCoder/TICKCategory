//
//  UIImage+TICKScale.h
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKScale)
/*!
 *  @brief  Scaled UIImage to size
 *
 *  @param aSize      Target Image Size
 *  @param aKeepRadio Whether UIIMage keep radio
 *
 *  @return UIImage
 */
- (UIImage *)tick_imageScaledToSize:(CGSize)aSize keepRadio:(BOOL)aKeepRadio;
@end
