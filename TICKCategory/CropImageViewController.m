//
//  CropImageViewController.m
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "CropImageViewController.h"
#import "UIImage+TICKCrop.h"
#import "UIImage+TICKSave.h"

@implementation CropImageViewController

- (IBAction)cropAction:(id)sender
{
    NSString *tSaveDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    tSaveDir = [tSaveDir stringByAppendingPathComponent:@"crop-png-save.png"];
    
    UIImage *tSrcImage = self.testImageView.image;
    UIImage *tCropImage = [UIImage tick_imageFromImage:tSrcImage inRect:CGRectMake(10, 10, 100, 100)];
    [tCropImage tick_writeToPNGFile:tSaveDir];
    
    NSString *tSaveDirJPG = [tSaveDir stringByDeletingLastPathComponent];
    tSaveDirJPG = [tSaveDirJPG stringByAppendingPathComponent:@"crop-jpg-0.1-save.jpg"];
    [tCropImage tick_writeToJPEGFile:tSaveDirJPG compressionQuality:0.1];
    
    NSString *tSaveDirJPG10 = [tSaveDir stringByDeletingLastPathComponent];
    tSaveDirJPG10 = [tSaveDirJPG10 stringByAppendingPathComponent:@"crop-jpg-1.0-save.jpg"];
    [tCropImage tick_writeToJPEGFile:tSaveDirJPG10 compressionQuality:1.0];
}
@end
