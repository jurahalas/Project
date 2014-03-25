//
//  EXViewController.m
//  NewsCatalog
//
//  Created by Yuriy Halas on 3/25/14.
//  Copyright (c) 2014 Catalog. All rights reserved.//


#import "EXViewController.h"
#import "EXImageCell.h"
#import "NCData.h"
#import "EXDetailViewController.h"




@interface EXViewController ()

@end


@implementation EXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Список студентів";
	
    _data = [NCData fetchData];
    
    _requestData = [[NSMutableData alloc] init];
    
   /* NSURL *url = [NSURL URLWithString:@"http://rmd-sw.dyndns.info:6001/dac/ud/s/classmates?dac_key=v5cz178U51Nz8e48L8Y7SOXtctFIIzFb&access_token=fcdf9e94e12061de85d168df9ad3dc0f7ab854665877e40bf1fdca1a511c413e"];
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
 */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *const ImageCellId = @"ImageCell";
    
    EXImageCell *cell = [tableView dequeueReusableCellWithIdentifier:ImageCellId];
    
    NCData *item = [_data objectAtIndex:indexPath.row];
    cell.cellImageView.image = [UIImage imageNamed:item.imageName];
    
    return cell;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (indexPath) {
        [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (indexPath) {
        NCData *item = [_data objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetail:item];
    }
}

@end
