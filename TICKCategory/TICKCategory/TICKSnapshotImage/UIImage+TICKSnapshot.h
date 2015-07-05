//
//  UIImage+TICKSnapshot.h
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKSnapshot)
/*!
 *  @brief  Snapshot image of UIView
 *
 *  @param aView source UIView
 *
 *  @return UIImage
 */
+ (UIImage *)tick_imageSnaphotOfView:(UIView *)aView;
@end
