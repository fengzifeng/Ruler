//
//  ScaleScrollView.m
//  FZFScaleDemo
//
//  Created by FZF on 15/8/28.
//  Copyright (c) 2015年 FZF. All rights reserved.
//

#import "ScaleScrollView.h"
#import "ScaleView.h"
#import "UIView+AutoLayout.h"
#define samllWidth [UIScreen mainScreen].bounds.size.width/320

@implementation ScaleScrollView
{
    UILabel  *label;

}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        self.contentSize = CGSizeMake(1320*samllWidth, 100);
//        UIView *scaleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1320*samllWidth, 100)];
//        scaleView.backgroundColor = [UIColor yellowColor];
        ScaleView *scaleView = [[ScaleView alloc] initWithFrame:CGRectMake(0, 0, 1320*samllWidth, 100)];
        scaleView.bb = YES;
        [self addSubview:scaleView];
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.autoresizesSubviews = NO;
        self.bounces = NO;

    }
    return self;
}




@end
