//
//  UINavigationBar+ModifyStatusBarbackgroudColor.m
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "UINavigationBar+ModifyStatusBarbackgroudColor.h"
#import "commonMacro.h"
#import "MLNavi.h"
@implementation UINavigationBar (ModifyStatusBarbackgroudColor)
-(void)modifyStatusBarBgColorWithColor:(UIColor*)color
{
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, -20,MainScreenWidth , 20)];
    
    view.backgroundColor=color?color:NaviBarColor;
    [self addSubview:view];
}
@end
