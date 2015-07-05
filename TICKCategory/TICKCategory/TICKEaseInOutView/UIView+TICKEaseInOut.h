//
//  UIView+TICKEaseInOut.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TICKEaseInOut)
/*!
 *  @brief  add subview with easeInOut animation
 *
 *  @param aView       adding UIView
 *  @param aCompletion completion block
 */
- (void)tick_addSubviewEaseInOut:(UIView *)aView completion:(void(^)(void))aCompletion;

/*!
 *  @brief  remove subview with easeInOut animation
 *
 *  @param aCompletion completion block
 */
- (void)tick_removeFromSuperviewEaseInOut:(void (^)(void))aCompletion;
@end
