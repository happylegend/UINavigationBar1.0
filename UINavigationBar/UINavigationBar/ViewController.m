//
//  ViewController.m
//  UINavigationBar
//
//  Created by 紫冬 on 13-9-13.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //创建一个导航栏
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    //创建一个导航栏集合
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:nil];
    
    //创建一个左边按钮
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"左边"
                                                                   style:UIBarButtonItemStyleBordered
                                                                  target:self
                                                                  action:@selector(clickLeftButton)];
    
    //创建一个右边按钮
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"右边"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(clickRightButton)];
    //设置导航栏内容
//    [navigationItem setTitle:@"雨松MOMO程序世界"];
    
    //或者自定义导航栏的中间titleview
    NSArray *array = [NSArray arrayWithObjects:@"牛排", @"大虾", nil];
    UISegmentedControl *segControl = [[UISegmentedControl alloc] initWithItems:array];
    segControl.segmentedControlStyle = UISegmentedControlSegmentCenter;
    navigationItem.titleView = segControl;
    
    
    
    //把左右两个按钮添加入导航栏集合中
    [navigationItem setLeftBarButtonItem:leftButton];
    [navigationItem setRightBarButtonItem:rightButton];
    
    //把导航栏集合添加入导航栏中，设置动画关闭
    [navigationBar pushNavigationItem:navigationItem animated:NO];
    
    //把导航栏添加到视图中
    [self.view addSubview:navigationBar];
    
    
    //释放对象
    [navigationItem release];
    [leftButton release];
    [rightButton release];
    [segControl release];
    
}

-(void)clickLeftButton
{
    NSLog(@"点击了左边的按钮");
}

-(void)clickRightButton
{
    NSLog(@"点击了右边的按钮");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
