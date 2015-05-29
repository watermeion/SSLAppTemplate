//
//  LoginRegistProtocol.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//
typedef void (^loginBlock)(BOOL succeed, NSNumber *userType);
typedef void(^FeedBack)(BOOL success,NSError *error);
#import <Foundation/Foundation.h>

@protocol LoginRegistProtocol <NSObject>

/**
 *  用户名
 */
@property (nonatomic,strong)NSString *username;

@property (nonatomic,strong)NSString *pwd;

@property (nonatomic,strong)NSString *phone;

@property (nonatomic,strong)NSString *email;


@optional
@property (nonatomic,strong)NSString *smsCode;

@end
