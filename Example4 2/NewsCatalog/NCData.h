//
//  NCData.h
//  NewsCatalog
//
//  Created by Yuriy Halas on 3/25/14.
//  Copyright (c) 2014 Catalog. All rights reserved.//


#import <Foundation/Foundation.h>


@interface NCData : NSObject

//@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *category;
+ (NSArray *)fetchData;

@end
