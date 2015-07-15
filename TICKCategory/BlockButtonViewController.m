//
//  BlockButtonViewController.m
//  TICKCategory
//
//  Created by Milk on 2015.07.15.Wednesday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "BlockButtonViewController.h"
#import "UIButton+TICKBlock.h"
#import "UIView+TICKEaseInOut.h"

@interface BlockButtonViewController ()
@property (nonatomic, strong) UIButton *testBtn;
@end

@implementation BlockButtonViewController
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.testBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _testBtn.frame = CGRectMake(100, 100, 100, 100);
    _testBtn.backgroundColor = [UIColor orangeColor];
    _testBtn.layer.borderColor = [UIColor blackColor].CGColor;
    _testBtn.showsTouchWhenHighlighted = YES;
    _testBtn.layer.borderWidth = 1.0;
    [_testBtn tick_addActionBlock:^{
        [self tick_removeBtn];
    } forEvent:UIControlEventTouchUpInside];
    
    [self.view tick_addSubviewEaseInOut:_testBtn completion:^{
        UIAlertController *tAlert = [UIAlertController alertControllerWithTitle:@"Added" message:@"Finish" preferredStyle:UIAlertControllerStyleAlert];
        [tAlert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]];
        [self presentViewController:tAlert animated:YES completion:nil];
    }];
}

- (void)tick_removeBtn
{
    [_testBtn tick_removeFromSuperviewEaseInOut:^{
        self.testBtn = nil;
        UIAlertController *tAlert = [UIAlertController alertControllerWithTitle:@"Removed" message:@"Finish" preferredStyle:UIAlertControllerStyleAlert];
        [tAlert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]];
        [self presentViewController:tAlert animated:YES completion:nil];
    }];
}


@end
