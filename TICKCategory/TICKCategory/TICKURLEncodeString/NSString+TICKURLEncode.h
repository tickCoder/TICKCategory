//
//  NSString+TICKURLEncode.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TICKURLEncode)
/*!
 *  @brief  URL encode string
 *
 *  @param aStr encoding string
 *
 *  @return URL encoded string
 */
+ (NSString *)tick_stringURLEncodeWithString:(NSString *)aStr;

/*!
 *  @brief  URL encode string
 *
 *  @return URL encoded String
 */
- (NSString *)tick_stringURLEncode;
@end
