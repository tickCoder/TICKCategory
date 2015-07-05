//
//  NSArray+TICKArchive.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (TICKArchive)
/*!
 *  @brief  archive NSArray to file
 *
 *  @param aPath file path
 *
 *  @return archive result
 */
- (BOOL)tick_archiveToFile:(NSString *)aPath;

/*!
 *  @brief  unarchive NSArray from file
 *
 *  @param aPath file path
 *
 *  @return unarchived NSArray
 */
+ (instancetype)tick_arrayWithArchiveFile:(NSString *)aPath;
@end
