//
//  UIImage+TICKCrop.h
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKCrop)
+ (UIImage *)tick_imageFromImage:(UIImage *)aImage inRect:(CGRect)aRect;
@end
