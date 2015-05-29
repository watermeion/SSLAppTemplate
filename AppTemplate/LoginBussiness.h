//
//  LoginBussiness.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MLLoginProtocol.h"
@interface LoginBussiness : NSObject<MLLoginProtocol>
{
    NSString *userName;
    NSString *pwd;
    NSString *email;
    NSString *phone;


}
@end
