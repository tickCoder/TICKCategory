//
//  UIImage+TICKCrop.m
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "UIImage+TICKCrop.h"

@implementation UIImage (TICKCrop)
+ (UIImage *)tick_imageFromImage:(UIImage *)aImage inRect:(CGRect)aRect
{
    CGImageRef tSrcImageRef = [aImage CGImage];
    CGImageRef tNewImageRef = CGImageCreateWithImageInRect(tSrcImageRef, aRect);
    UIImage *tNewImage = [UIImage imageWithCGImage:tNewImageRef];
    CGImageRelease(tNewImageRef);
    CGImageRelease(tSrcImageRef);
    return tNewImage;
}
@end
