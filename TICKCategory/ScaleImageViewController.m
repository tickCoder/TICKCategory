//
//  ScaleImageViewController.m
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "ScaleImageViewController.h"
#import "UIImage+TICKSave.h"
#import "UIImage+TICKScale.h"

@implementation ScaleImageViewController

- (IBAction)radioScaleAction:(id)sender
{
    NSString *tSaveDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    tSaveDir = [tSaveDir stringByAppendingPathComponent:@"scale-radio-save.png"];
    
    CGSize tSize = CGSizeMake(100, 100);
    UIImage *tSrcImage = self.testImageView.image;
    UIImage *scaledImage = [tSrcImage tick_imageScaledToSize:tSize keepRadio:YES];
    [scaledImage tick_writeToPNGFile:tSaveDir];
}

- (IBAction)noRadioScaleAction:(id)sender
{
    NSString *tSaveDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    tSaveDir = [tSaveDir stringByAppendingPathComponent:@"scale-noradio-save.png"];
    
    CGSize tSize = CGSizeMake(100, 100);
    UIImage *tSrcImage = self.testImageView.image;
    UIImage *scaledImage = [tSrcImage tick_imageScaledToSize:tSize keepRadio:NO];
    [scaledImage tick_writeToPNGFile:tSaveDir];
}
@end
