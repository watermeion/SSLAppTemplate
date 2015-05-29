//
//  MLLoginProtocol.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "LoginRegistProtocol.h"

/**
 *  实现通用登录功能
 */
@protocol MLLoginProtocol <LoginRegistProtocol>
/**
 *  登录信息反馈
 */
@property (nonatomic,strong)NSString *feedback;

/**
 *  实现登录主要功能
 *
 *  @param username   登录用户名
 *  @param pwd        密码
 *  @param type       用户类型
 *  @param loginBlock 用户类型Block
 */
-(void)loginInbackground:(NSString *)username Pwd:(NSString *)pwd loginType:(NSUInteger)type withBlock:(FeedBack)loginBlock;


/**
 *  进行用户数据的本地化 ，借用NSUserdefaults
 *
 *  @return return value description
 */
-(BOOL)saveUserInfoLocally:(id) context;


/**
 *  用户退出
 *
 *  @return return value description
 */
-(BOOL)logOut;

@optional
///**
// *  检测是不是自动登录
// *
// *  @return return value description
// */
//-(BOOL)checkIfAuto_login;




@end
