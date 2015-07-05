//
//  NSDictionary+TICKSortedKeys.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "NSDictionary+TICKSortedKeys.h"

@implementation NSDictionary (TICKSortedKeys)

- (NSArray *)tick_allKeysNumericSortedAscend:(BOOL)aAscend
{
    __autoreleasing NSArray *tSorted = [[self allKeys] sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        if(aAscend) return [obj1 compare:obj2 options:NSNumericSearch];
        else return [obj2 compare:obj1 options:NSNumericSearch];
    }];
    return tSorted;
}

@end
