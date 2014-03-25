//
//  EXViewController.h
//  NewsCatalog
//
//  Created by Yuriy Halas on 3/25/14.
//  Copyright (c) 2014 Catalog. All rights reserved.//


#import <UIKit/UIKit.h>


@interface EXViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *_data;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSMutableData *requestData;

@end
