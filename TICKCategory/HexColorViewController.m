//
//  HexColorViewController.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "HexColorViewController.h"

#import "UIColor+TICKHex.h"

@implementation HexColorViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.colorView.backgroundColor = [UIColor tick_colorWithHexStr:@"EH294A" alpha:0.5];
}
@end
