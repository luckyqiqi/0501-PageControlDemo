//
//  ViewController.m
//  01-UIPageControlDemo
//
//  Created by qingyun on 16/5/10.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建并添加UIPageControl
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    [self.view addSubview:pageControl];
    
    pageControl.backgroundColor = [UIColor blackColor];
    
    //总页码
    pageControl.numberOfPages = 7;
    
    //当前页码
    pageControl.currentPage = 4;
    
    //页码指示着色
    pageControl.pageIndicatorTintColor = [UIColor redColor];
    
    //当前页指示着色
    pageControl.currentPageIndicatorTintColor = [UIColor blueColor ];
    
    
    //添加事件监听(valueChanged)
    [pageControl addTarget:self action:@selector(pageControlAction:) forControlEvents:UIControlEventValueChanged];
    
    //延迟更改界面,点击跳转新页码不会更改，直到updateCurrentPageDisplay方法调用
    pageControl.defersCurrentPageDisplay = YES;
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)pageControlAction:(UIPageControl *)pageControl{
    NSLog(@"currentPage:%ld",pageControl.currentPage);
    [pageControl performSelector:@selector(updateCurrentPageDisplay) withObject:nil afterDelay:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
