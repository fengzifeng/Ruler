//
//  ViewController.m
//  FZFScaleDemo
//
//  Created by FZF on 15/8/28.
//  Copyright (c) 2015年 FZF. All rights reserved.
//

#import "ViewController.h"
#import "FFViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeContactAdd];
    bu.frame = CGRectMake(100, 100, 30, 30);
    [self.view addSubview:bu];
    [bu addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchDown];
}
-(void)click
{
    FFViewController *ff = [[FFViewController alloc] init];
    [self.navigationController pushViewController:ff animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
