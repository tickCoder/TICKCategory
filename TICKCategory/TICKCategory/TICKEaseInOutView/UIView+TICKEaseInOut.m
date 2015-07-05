//
//  UIView+TICKEaseInOut.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "UIView+TICKEaseInOut.h"

@implementation UIView (TICKEaseInOut)
- (void)tick_addSubviewEaseInOut:(UIView *)aView completion:(void(^)(void))aCompletion
{
    aView.alpha = 0.0;
    self.userInteractionEnabled = NO;
    [self addSubview:aView];
    
    CAKeyframeAnimation * animation;
    animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.3;
    animation.delegate = self;
    animation.removedOnCompletion = YES;
    animation.fillMode = kCAFillModeForwards;
    
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.2, 0.2, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    
    animation.values = values;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:@"easeInEaseOut"];
    [aView.layer addAnimation:animation forKey:nil];
    
    [UIView animateWithDuration:0.5 animations:^{
        [aView setAlpha:1.0];
        [UIView commitAnimations];
    } completion:^(BOOL finished) {
        self.userInteractionEnabled = YES;
        if(aCompletion) aCompletion();
    }];
    
//    [UIView beginAnimations:nil context:NULL];
//    [UIView setAnimationDuration:0.5];
//    [aView setAlpha:1.0];
//    [UIView commitAnimations];
}

- (void)tick_removeFromSuperviewEaseInOut:(void (^)(void))aCompletion
{
    if(self.superview) self.superview.userInteractionEnabled = NO;
    
    CAKeyframeAnimation * animation;
    animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.5;
    animation.delegate = self;
    animation.removedOnCompletion = YES;
    animation.fillMode = kCAFillModeForwards;
    
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.2, 0.2, 1.0)]];
    
    animation.values = values;
    animation.timingFunction = [CAMediaTimingFunction functionWithName: @"easeInEaseOut"];
    [self.layer addAnimation:animation forKey:nil];
    
    [UIView animateWithDuration:0.5 animations:^{
        [self setAlpha:0.0];
        [UIView commitAnimations];
    } completion:^(BOOL finished) {
        self.superview.userInteractionEnabled = YES;
        [self removeFromSuperview];
        if(aCompletion) aCompletion();
    }];
    
}
@end
