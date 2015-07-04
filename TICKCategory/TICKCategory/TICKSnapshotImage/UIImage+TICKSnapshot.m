//
//  UIImage+TICKSnapshot.m
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "UIImage+TICKSnapshot.h"

@implementation UIImage (TICKSnapshot)
+ (UIImage *)tick_imageSnaphotOfView:(UIView *)aView
{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(CGRectGetWidth(aView.frame), CGRectGetHeight(aView.frame)), NO, 1.0);
    [aView drawViewHierarchyInRect:CGRectMake(0, 0, CGRectGetWidth(aView.frame), CGRectGetHeight(aView.frame)) afterScreenUpdates:NO];
    UIImage *tSnapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return tSnapshotImage;
}
@end
