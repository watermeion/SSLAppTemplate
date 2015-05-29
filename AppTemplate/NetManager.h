//
//  NetManager.h
//  AppTemplate
//
//  Created by Mac on 5/28/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

/**
 *  网络请求API
 */
@interface NetManager : NSObject

+(instancetype)shareInstance;

+ (void)JSONDataWithUrl:(NSString *)url success:(void (^)(id json))success fail:(void (^)())fail;

-(void)tests;
@end
