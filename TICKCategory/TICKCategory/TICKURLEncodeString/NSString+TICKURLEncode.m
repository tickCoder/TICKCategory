//
//  NSString+TICKURLEncode.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "NSString+TICKURLEncode.h"

@implementation NSString (TICKURLEncode)
+ (NSString *)tick_stringURLEncodeWithString:(NSString *)aStr
{
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)aStr, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]",kCFStringEncodingUTF8));
}

- (NSString *)tick_stringURLEncode
{
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]",kCFStringEncodingUTF8));
}

@end
