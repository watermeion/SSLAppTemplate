//
//  MLLoginUserProtocol.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MLLoginUserProtocol <NSObject>

@property (nonatomic,strong)NSString *username;

@property (nonatomic,strong)NSString *pwd;

@property (nonatomic,strong)NSString *phone;

@property (nonatomic,strong)NSString *email;


@end
