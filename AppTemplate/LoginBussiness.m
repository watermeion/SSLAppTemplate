//
//  LoginBussiness.m
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "LoginBussiness.h"
@implementation LoginBussiness
@synthesize username=userName;
@synthesize email=email;
@synthesize phone=phone;
@synthesize pwd=pwd;


-(void)loginInbackground:(NSString *)username Pwd:(NSString *)pwd loginType:(NSUInteger)type withBlock:(FeedBack)loginBlock
{
   //TODO:实现登录业务逻辑
//    loginBlock(YES,nil);

    
    
    
    
    
    
    
    

}


-(BOOL)logOut
{
   //TODO:请实现登出逻辑


    return NO;
}

-(BOOL)saveUserInfoLocally:(id)context
{
    //TODO:请实现用户数据本地化的逻辑

    return NO;
}


@end
