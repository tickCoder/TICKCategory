//
//  UIImage+TICKSave.m
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "UIImage+TICKSave.h"

@implementation UIImage (TICKSave)

- (BOOL)tick_writeToPNGFile:(NSString *)aFilePath
{
    NSData *tImageData = UIImagePNGRepresentation(self);
    return [tImageData writeToFile:aFilePath atomically:YES];
}

- (BOOL)tick_writeToJPEGFile:(NSString *)aFilePath compressionQuality:(CGFloat)aCompressionQuality
{
    NSData *tImageData = UIImageJPEGRepresentation(self, aCompressionQuality);
    return [tImageData writeToFile:aFilePath atomically:YES];
}
@end
