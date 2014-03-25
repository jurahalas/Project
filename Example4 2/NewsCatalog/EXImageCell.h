//
//  EXImageCell.h
//  NewsCatalog
//
//  Created by Yuriy Halas on 3/25/14.
//  Copyright (c) 2014 Catalog. All rights reserved.

#import <UIKit/UIKit.h>


@interface EXImageCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellTextLabel;

@end
