//
//  IconViewCell.m
//  ionIconsSample
//
//  Created by Safx Developer on 2013/11/12.
//  Copyright (c) 2013年 Safx Developers. All rights reserved.
//

#import "IconViewCell.h"

@implementation IconViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self.contentView addSubview:imageView];
        self.imageView = imageView;
    }
    return self;
}

@end
