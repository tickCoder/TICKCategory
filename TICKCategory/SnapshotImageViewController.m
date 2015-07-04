//
//  SnapshotImageViewController.m
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "SnapshotImageViewController.h"
#import "UIImage+TICKSnapshot.h"
#import "UIImage+TICKSave.h"

@implementation SnapshotImageViewController

- (IBAction)snapAction:(id)sender
{
    NSString *tSaveDir = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    tSaveDir = [tSaveDir stringByAppendingPathComponent:@"snapshot-save.png"];
    
    UIImage *tSnapshotImage = [UIImage tick_imageSnaphotOfView:self.testImageView];
    [tSnapshotImage tick_writeToPNGFile:tSaveDir];
}
@end
