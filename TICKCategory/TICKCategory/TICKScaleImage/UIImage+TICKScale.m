//
//  UIImage+TICKScale.m
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "UIImage+TICKScale.h"

@implementation UIImage (TICKScale)

- (UIImage *)tick_imageScaledToSize:(CGSize)aSize keepRadio:(BOOL)aKeepRadio
{
    CGFloat tWidth = aSize.width;
    CGFloat tHeight = aSize.height;
    
    CGFloat tPositionX = 0;
    CGFloat tPositionY = 0;
    
    if(aKeepRadio)
    {
        tWidth = CGImageGetWidth(self.CGImage);
        tHeight = CGImageGetHeight(self.CGImage);
        
        CGFloat tRadioH = aSize.width / tWidth;
        CGFloat tRadioV = aSize.height / tHeight;
        
        // if one of tRadioH/V > 1, use max, else min
        CGFloat tRadio = 0;
        if(tRadioH > 1 && tRadioV > 1) tRadio = MAX(tRadioH, tRadioV);
        else tRadio = MIN(tRadioH, tRadioV);
        
        tWidth *= tRadio;
        tHeight *= tRadio;
        
        tPositionX = (aSize.width - tWidth) / 2.0;
        tPositionY = (aSize.height - tHeight) / 2.0;
    }
    
    UIGraphicsBeginImageContext(aSize);
    [self drawInRect:CGRectMake(tPositionX, tPositionY, tWidth, tHeight)];
    UIImage *tScaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return tScaledImage;
}

@end
