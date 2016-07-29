//
//  ScaleView.m
//  FZFScaleDemo
//
//  Created by FZF on 15/8/28.
//  Copyright (c) 2015年 FZF. All rights reserved.
//

#import "ScaleView.h"
#define samllWidth [UIScreen mainScreen].bounds.size.width/320
@implementation ScaleView
{
    UILabel *label;
    
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
//        self.backgroundColor = [UIColor blueColor];
//        self.frame = CGRectMake(0, 0, 1320*samllWidth, 100);
//        [self setNeedsDisplay];
    }
    return self;

}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
        self.frame = CGRectMake(0, 0, 1320*samllWidth, 100);
//        [self setNeedsDisplay];
    }
    return self;
}
- (void)setBb:(BOOL)bb
{
    [self setNeedsDisplay];

    
}

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(ctx);//更改当前上下文
    CGContextSetLineWidth(ctx, 2);//线条宽度
    CGContextSetStrokeColorWithColor(ctx, [[UIColor whiteColor] CGColor]);//线条颜色
    
    for (int i = 0; i<=1000/20; i++) {
        int height;
        if (!(i%5)) {
            height = 40;
            label = [[UILabel alloc] init];
            label.textColor = [UIColor whiteColor];
            label.textAlignment = NSTextAlignmentCenter;
            label.frame = CGRectMake(160*samllWidth+(samllWidth*20)*i-10*samllWidth, 70, 30, 30);
            label.text = [NSString stringWithFormat:@"%i",i];
            [self addSubview:label];
        }else{
            height = 20;
        }
        
        CGContextMoveToPoint(ctx, (samllWidth*20)*i+160*samllWidth, 0); //开始画线, x，y 为开始点的坐标
        CGContextAddLineToPoint(ctx,(samllWidth*20)*i+160*samllWidth, height);
        CGContextStrokePath(ctx);
    }
    
    

}


//
//
@end
