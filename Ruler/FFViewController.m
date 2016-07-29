//
//  FFViewController.m
//  FZFScaleDemo
//
//  Created by FZF on 15/8/28.
//  Copyright (c) 2015年 FZF. All rights reserved.
//

#import "FFViewController.h"
#import "ScaleScrollView.h"
#define samllWidth [UIScreen mainScreen].bounds.size.width/320.0

@interface FFViewController ()
{
    ScaleScrollView *scaleView;
    
//    UIScrollView *scaleView;

    

}
@end

@implementation FFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    
//    [self.navigationController ]
//    UIBarButtonItem *backItem =  [UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil];
//    UIOffset offSet ;
//    offSet.horizontal = -100 ;
//    [backItem setBackButtonTitlePositionAdjustment:offSet forBarMetrics:UIBarMetricsDefault];
    
    
    scaleView = [[ScaleScrollView alloc] initWithFrame:CGRectMake(0, 300, [UIScreen mainScreen].bounds.size.width, 100)];
//    scaleView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 300, [UIScreen mainScreen].bounds.size.width, 100)];
    scaleView.backgroundColor = [UIColor whiteColor];
    
    scaleView.delegate = self;
    [self.view addSubview:scaleView];
    scaleView.contentSize = CGSizeMake(1320*samllWidth, 100);
//    UIView *scaleaView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1320*samllWidth, 100)];
//    scaleaView.backgroundColor = [UIColor yellowColor];
//    [scaleView addSubview:scaleaView];


    
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2.0, 300, 0.5, 50)];
    lineView.backgroundColor = [UIColor redColor];
    [self.view addSubview:lineView];
    self.view.autoresizesSubviews = NO;
    self.automaticallyAdjustsScrollViewInsets = NO;
    scaleView.bounces = NO;
    scaleView.contentInset = UIEdgeInsetsZero;
    
}

-(void)viewWillAppear:(BOOL)animated
{
    scaleView.contentOffset = CGPointMake(0, 0);


}
-(void)viewDidAppear:(BOOL)animated
{

//    scaleView.contentOffset = CGPointMake(0, 0);
    
    
}



- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    if(!decelerate)
    {
        [self scrollViewEndScrollingAnimation:scrollView];
    }

}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;
{
    
    [self scrollViewEndScrollingAnimation:scrollView];
}
- (void)scrollViewEndScrollingAnimation:(UIScrollView *)scrollView;
{
    CGPoint endPoint = scrollView.contentOffset;
    float a = endPoint.x/(20.0*samllWidth);
    int a1 = endPoint.x/(20*samllWidth);
    NSLog(@"%f",samllWidth);
    
    float cha = a-a1;
    if (cha>0.5) {
        [scaleView setContentOffset:CGPointMake(endPoint.x+(1-cha)*20.0*samllWidth,0) animated:YES];
    }else{
        [scaleView setContentOffset:CGPointMake(endPoint.x-cha*20.0*samllWidth,0) animated:YES];
        
    }
    
}



@end
