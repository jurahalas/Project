//
//  EXDetailViewController.m
//  NewsCatalog
//
//  Created by Yuriy Halas on 3/25/14.
//  Copyright (c) 2014 Catalog. All rights reserved.
//


#import "EXDetailViewController.h"


@interface EXDetailViewController ()

@end


@implementation EXDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)reloadData
{
    if (!_detail) {
        return;
    }
    self.navigationItem.title = _detail.category;
    
 
    self.imageView.image = [UIImage imageNamed:_detail.imageName];
    

    CGRect contentViewFrame = _contentView.frame;
   _contentView.frame = contentViewFrame;
    _scrollView.contentSize = _contentView.frame.size;
}

@end
