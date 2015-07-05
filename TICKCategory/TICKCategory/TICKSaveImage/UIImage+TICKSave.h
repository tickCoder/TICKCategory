//
//  UIImage+TICKSave.h
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKSave)

/*!
 *  @brief  Save UIImage to PNG file.
 *
 *  @param aFilePath saved file path
 *
 *  @return Save result.
 */
- (BOOL)tick_writeToPNGFile:(NSString *)aFilePath;

/*!
 *  @brief  Save UIImage to JPG file.
 *
 *  @param aFilePath           saved file path
 *  @param aCompressionQuality image quility
 *
 *  @return Save Result.
 */
- (BOOL)tick_writeToJPEGFile:(NSString *)aFilePath compressionQuality:(CGFloat)aCompressionQuality;
@end
