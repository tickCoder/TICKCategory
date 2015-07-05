//
//  NSDictionary+TICKArchive.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TICKArchive)
/*!
 *  @brief  archive NSDictionary to file
 *
 *  @param aPath file path
 *
 *  @return archive result
 */
- (BOOL)tick_archiveToFile:(NSString *)aPath;

/*!
 *  @brief  unarchive NSDictionary from file
 *
 *  @param aPath file path
 *
 *  @return unarchived NSDictionary
 */
+ (instancetype)tick_dictWithArchiveFile:(NSString *)aPath;
@end
