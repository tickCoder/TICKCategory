//
//  NSDictionary+TICKSortedKeys.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TICKSortedKeys)
/*!
 *  @brief  get allkeys with numeric sorted
 *
 *  @param aAscend whether keys ascend
 *
 *  @return sorted keys list
 */
- (NSArray *)tick_allKeysNumericSortedAscend:(BOOL)aAscend;
@end
