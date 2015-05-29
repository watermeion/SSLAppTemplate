//
//  MLLoginManager.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LoginBussiness.h"
#import "RegisterBussiness.h"

typedef NS_ENUM(NSUInteger,MLUserState){
    MLUserStateOnLine,
    MLUserStateOffLine,
    MLUserStateOnLineWithOutUserDetail,
};
/**
 *  控制用户登录状态, 提供登录注册逻辑对象的简单持有。单例模式
 */
@interface MLLoginManager : NSObject

/**
 *  记录用户状态
 */
@property MLUserState *userState;
@property (strong,nonatomic)LoginBussiness *loginHandler;
@property (strong,nonatomic)RegisterBussiness *registHandler;




/**
 *  单例方法
 *
 *  @return instancetype
 */
+(instancetype)shareInstance;


/**
 *  显示登录界面
 *
 *  @return UIViewController
 */
-(void)showLoginViewControllerModallyToViewController:(UIViewController*)parentVC withcompletion:(void (^)(void))completion;




@end
