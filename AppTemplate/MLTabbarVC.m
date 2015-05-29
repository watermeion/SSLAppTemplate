//
//  MLTabbarVC.m
//  EJianZhi
//
//  Created by RAY on 15/1/19.
//  Copyright (c) 2015年 麻辣工作室. All rights reserved.
//

#import "MLTabbarVC.h"
#import "MLNavi.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ForthViewController.h"

@interface MLTabbarVC ()

@end

@implementation MLTabbarVC

static  MLTabbarVC *thisController=nil;

+(MLTabbarVC*)shareInstance
{
    if (thisController==nil) {
        thisController=[[MLTabbarVC alloc] init];
    }
    return thisController;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}


-(MLNavi*)makeRootByNavigationController:(UIViewController*) childVC
{
    @try {
        if (childVC==nil) {
            return [[MLNavi alloc]initWithRootViewController:[[UIViewController alloc]init]];
        }
        return [[MLNavi alloc]initWithRootViewController:childVC];
    }
    @catch (NSException *exception) {
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    [self viewControllersInit];
}

-(void)viewControllersInit
{

    UIViewController *pageOneVC=[self makeRootByNavigationController:[[FirstViewController alloc]init]];
    pageOneVC.title=@"首页";
    
    UIViewController *pageTwoVC=[self makeRootByNavigationController:[[SecondViewController alloc]init]];
    pageTwoVC.title=@"次页";
    
    UIViewController *pageThirdVC=[self makeRootByNavigationController:[[ThirdViewController alloc]init]];
    pageThirdVC.title=@"三页";
    
    UIViewController *pageForthVC=[self makeRootByNavigationController:[[ForthViewController alloc]init]];
    pageForthVC.title=@"末页";
    

    self.viewControllers=@[pageOneVC,pageTwoVC,pageThirdVC,pageForthVC];

    [self changeTabbarStyle];
}

-(void)changeTabbarStyle
{
    
    [self.tabBar setTintColor:NaviBarColor];
    self.tabBar.translucent=NO;
    
    UITabBar *tabBar=self.tabBar;

//    UITabBarItem *tabBarItem1=[tabBar.items objectAtIndex:0];
//    UITabBarItem *tabBarItem2=[tabBar.items objectAtIndex:1];
//    UITabBarItem *tabBarItem3=[tabBar.items objectAtIndex:2];
//    UITabBarItem *tabBarItem4=[tabBar.items objectAtIndex:3];
//    
//    tabBarItem1.title=@"首页";
//    
//    tabBarItem2.title=@"列表";
//    
//    tabBarItem3.title=@"消息";
//    
//    tabBarItem4.title=@"我";
    

    [[self.tabBar.items objectAtIndex:0] setFinishedSelectedImage:[[UIImage imageNamed:@"releas1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] withFinishedUnselectedImage:[[UIImage imageNamed:@"release"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [[self.tabBar.items objectAtIndex:1] setFinishedSelectedImage:[[UIImage imageNamed:@"explore1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] withFinishedUnselectedImage:[[UIImage imageNamed:@"explore"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [[self.tabBar.items objectAtIndex:2] setFinishedSelectedImage:[[UIImage imageNamed:@"message1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] withFinishedUnselectedImage:[[UIImage imageNamed:@"message"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    [[self.tabBar.items objectAtIndex:3] setFinishedSelectedImage:[[UIImage imageNamed:@"mine1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] withFinishedUnselectedImage:[[UIImage imageNamed:@"mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
}

- (void)viewWillLayoutSubviews{
    
    //[self.tabBar setSelectedImageTintColor: [UIColor colorWithRed:0.90 green:0.39 blue:0.22 alpha:1.0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
