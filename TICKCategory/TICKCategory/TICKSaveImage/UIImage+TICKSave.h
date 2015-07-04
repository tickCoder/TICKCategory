//
//  UIImage+TICKSave.h
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TICKSave)
- (BOOL)tick_writeToPNGFile:(NSString *)aFilePath;
- (BOOL)tick_writeToJPEGFile:(NSString *)aFilePath compressionQuality:(CGFloat)aCompressionQuality;
@end
