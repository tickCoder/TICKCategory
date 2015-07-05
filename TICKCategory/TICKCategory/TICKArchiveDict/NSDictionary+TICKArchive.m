//
//  NSDictionary+TICKArchive.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "NSDictionary+TICKArchive.h"

@implementation NSDictionary (TICKArchive)
- (BOOL)tick_archiveToFile:(NSString *)aPath
{
    NSData *tData = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [tData writeToFile:aPath atomically:YES];
}

+ (instancetype)tick_dictWithArchiveFile:(NSString *)aPath
{
    NSData *tData = [NSData dataWithContentsOfFile:aPath];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tData];
}
@end
