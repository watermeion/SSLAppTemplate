//
//  MLLoginManager.m
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "MLLoginManager.h"
#import "MLNavi.h"
#import "MLLoginViewController.h"
@implementation MLLoginManager

static MLLoginManager *thisInstance;
+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        thisInstance=[[super alloc]init];
        //        thisInstance.loginVC=[[SRLoginVC alloc]init];
        //        thisInstance.registerVC=[[SRRegisterVC alloc]init];
        //判断初始化用户状态的

    });
    return thisInstance;
}

-(LoginBussiness *)loginHandler
{
    if (_loginHandler==nil) {
        _loginHandler=[[LoginBussiness alloc]init];
    }
    return _loginHandler;
}

-(RegisterBussiness *)registHandler
{
    if(_registHandler==nil)
    {
        _registHandler=[[RegisterBussiness alloc]init];
        
    }
    return _registHandler;

}

-(void)showLoginViewControllerModallyToViewController:(UIViewController*)parentVC withcompletion:(void (^)(void))completion
{
    assert(parentVC!=nil);
    [parentVC presentViewController:[MLNavi makeRootByNavigationController:[[MLLoginViewController alloc]init]] animated:YES completion:^{
        if (completion!=nil) {
            completion();
        }
    }];
}










@end
