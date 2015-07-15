//
//  RGBAColorViewController.m
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import "RGBAColorViewController.h"
#import "UIColor+TICKRGBA.h"

@implementation RGBAColorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sampleColorLabel.textColor = [UIColor colorWithRed:0.4 green:0.7 blue:3.5 alpha:0.7];
}

- (IBAction)rgbaAction:(id)sender
{
    UIColor *tRedColor = [UIColor colorWithRed:0.4 green:0.7 blue:3.5 alpha:0.7];
    NSArray *tColors = [tRedColor tick_colorRGBAValue];
    NSMutableString *tColorsStr = [NSMutableString string];
    for (int i=0; i<4; i++) {
        [tColorsStr appendFormat:@"%.3f,", [[tColors objectAtIndex:i] doubleValue]];
    }
    self.rbgaValueLabel.adjustsFontSizeToFitWidth = YES;
    self.rbgaValueLabel.text = tColorsStr;
    self.rbgaValueLabel.textColor = [UIColor colorWithRed:[[tColors objectAtIndex:0] doubleValue] green:[[tColors objectAtIndex:1] doubleValue] blue:[[tColors objectAtIndex:2] doubleValue] alpha:[[tColors objectAtIndex:3] doubleValue]];
}
@end
