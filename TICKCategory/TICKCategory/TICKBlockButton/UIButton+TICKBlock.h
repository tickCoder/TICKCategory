//
//  UIButton+TICKBlock.h
//  TICKBlockButton
//
//  Created by iVan on 2015.07.15.Wednesday.
//  Copyright (c) 2015 tickCoder. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TICKButtonActionBlock)(void);

@interface UIButton (TICKBlock)

/*!
 *  @brief  add UIControlEvents action block for UIButton
 *
 *  @param aBlock action block
 *  @param aEvent UIControlEvents
 */
- (void)tick_addActionBlock:(TICKButtonActionBlock)aBlock
                   forEvent:(UIControlEvents)aEvent;
@end
