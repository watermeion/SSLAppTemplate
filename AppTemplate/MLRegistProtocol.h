//
//  MLRegistProtocol.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginRegistProtocol.h"


@protocol MLRegistProtocol <LoginRegistProtocol>


-(void)newUserRegistInBackground:(NSString*)_username
                             Pwd:(NSString*)_password
                           Phone:(NSString *)_phone
                      completion:(FeedBack)_block;

@end
