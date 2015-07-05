//
//  RGBAColorViewController.h
//  TICKCategory
//
//  Created by Milk on 2015.07.05.Sunday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RGBAColorViewController : UIViewController

- (IBAction)rgbaAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *rbgaValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *sampleColorLabel;

@end
