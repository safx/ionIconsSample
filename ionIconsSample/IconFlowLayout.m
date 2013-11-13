//
//  IconFlowLayout.m
//  ionIconsSample
//
//  Created by Safx Developer on 2013/11/12.
//  Copyright (c) 2013年 Safx Developers. All rights reserved.
//

#import "IconFlowLayout.h"

@implementation IconFlowLayout

- (id)init
{
    self = [super init];
    if (self) {
        self.itemSize = CGSizeMake(30, 30);
        self.minimumInteritemSpacing = 10;
        self.minimumLineSpacing = 10;
        self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    }
    return self;
}
@end
