//
//  LSTabBarTool.m
//  大千世界
//
//  Created by 赖双全 on 2018/6/21.
//  Copyright © 2018年 赖双全. All rights reserved.
//

#import "LSTabBarTool.h"
#import "LSBaseNavigationController.h"
#import "LSFolderViewController.h"
#import "LSLiveViewController.h"
#import "LSMyViewController.h"

@implementation LSTabBarTool

+ (UITabBarController *)addTabBar{
    // 初始化UITabBarController实例对象
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    // 创建子控制器
    LSFolderViewController *folderVC = [[LSFolderViewController alloc]init];
    LSBaseNavigationController *folderNav = [[LSBaseNavigationController alloc] initWithRootViewController:folderVC];
    folderNav.view.backgroundColor = [UIColor whiteColor];
    folderNav.tabBarItem.title = @"文件夹";
    folderNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"home1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    folderNav.tabBarItem.image = [[UIImage imageNamed:@"home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [folderNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateNormal];
    [folderNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} forState:UIControlStateSelected];


    LSLiveViewController *liveVC = [[LSLiveViewController alloc]init];
    LSBaseNavigationController *liveNav = [[LSBaseNavigationController alloc] initWithRootViewController:liveVC];
    liveNav.view.backgroundColor = [UIColor whiteColor];
    liveNav.tabBarItem.title = @"直播";
    liveNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"dianduidian1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    liveNav.tabBarItem.image = [[UIImage imageNamed:@"dianduidian"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [liveNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateNormal];
    [liveNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} forState:UIControlStateSelected];

    LSMyViewController *myVC = [[LSMyViewController alloc]init];
    LSBaseNavigationController *myNav = [[LSBaseNavigationController alloc] initWithRootViewController:myVC];
    myNav.view.backgroundColor = [UIColor whiteColor];
    myNav.tabBarItem.title = @"我的";
    myNav.tabBarItem.selectedImage = [[UIImage imageNamed:@"wode1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    myNav.tabBarItem.image = [[UIImage imageNamed:@"wode"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [myNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateNormal];
    [myNav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} forState:UIControlStateSelected];

    // 添加子视图到tabbar
    tabBar.viewControllers = @[folderNav ,liveNav, myNav];
    return tabBar;
}

@end
