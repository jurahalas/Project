//
//  NCData.m
//  NewsCatalog
//
//  Created by Yuriy Halas on 3/25/14.
//  Copyright (c) 2014 Catalog. All rights reserved.
//


#import "NCData.h"


@implementation NCData

+ (NSArray *)fetchData
{
	NSMutableArray *result = [NSMutableArray array];

	NCData *item;

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"1_installapp.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"2_iphone.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"3_payphone.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"4_ludei-3d.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"5_platf-250x250.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"6_twi.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"7_mobspas.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"08_borisov3-250x240.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"09_packingham.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"010_apple.jpg";
	[result addObject:item];

	item = [[NCData alloc] init];
	item.category = @"Резюме";
	item.imageName = @"011_note2.jpg";
	[result addObject:item];

	return result;
}

@end
