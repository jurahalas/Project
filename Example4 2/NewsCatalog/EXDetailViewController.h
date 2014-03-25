//
//  EXDetailViewController.h
//  NewsCatalog
//
//  Created by Yuriy Halas on 3/25/14.
//  Copyright (c) 2014 Catalog. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "NCData.h"


@interface EXDetailViewController : UIViewController

@property (nonatomic, strong) NCData *detail;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
