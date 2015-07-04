//
//  CropImageViewController.h
//  TICKCategory
//
//  Created by Milk on 2015.07.04.Saturday.
//  Copyright (c) 2015 Milk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CropImageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *testImageView;
- (IBAction)cropAction:(id)sender;

@end
