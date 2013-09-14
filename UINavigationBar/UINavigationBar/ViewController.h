//
//  ViewController.h
//  UINavigationBar
//
//  Created by 紫冬 on 13-9-13.
//  Copyright (c) 2013年 qsji. All rights reserved.
//
/*
 关于导航栏控制器：
 UINavigationController由Navigation bar  ,Navigation View ,Navigation toobar, Navigation item, BarButtonItem等组成。
 Navigation bar就是顶部的导航栏
 Navigation View就是中间显示内容的部分
 Navigation toobar就是底部的工具栏
 Navigation item表示导航栏的一组条目，是栈的形式组织的，是一个item集合
 BarButtonItem是条目的类型
 
 但是使用导航栏，而不是通过导航控制器来时的时候，的一般使用方式是，
 第一：创建一个Navigation bar
 第二：创建一个Navigation item
 第三：设置Navigation item的各个条目，比如leftbarbuttonitem，title，titleview，backbarbuttonitem，rightbarbuttonitem，backitem，topitem
 第四：将Navigation item显示在Navigation bar上，使用push函数
 
 单独使用导航栏的时候，要显示条目，要使用navigationbar的push方法，显示出navigationitem条目集合
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@end
