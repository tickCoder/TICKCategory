//
//  UIButton+TICKBlock.m
//  TICKBlockButton
//
//  Created by iVan on 2015.07.15.Wednesday.
//  Copyright (c) 2015 tickCoder. All rights reserved.
//

#import "UIButton+TICKBlock.h"
#import <objc/runtime.h>
static char TICKButtonActionBlockKey;

@implementation UIButton (TICKBlock)

- (void)tick_addActionBlock:(TICKButtonActionBlock)aBlock forEvent:(UIControlEvents)aEvent
{
    objc_setAssociatedObject(self, &TICKButtonActionBlockKey, aBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(tick_blockAction:) forControlEvents:aEvent];
}

- (void)tick_blockAction:(id)aSender
{
    TICKButtonActionBlock tBlock = (TICKButtonActionBlock)objc_getAssociatedObject(self, &TICKButtonActionBlockKey);
    if(tBlock) tBlock();
}

@end
