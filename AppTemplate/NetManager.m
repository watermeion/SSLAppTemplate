//
//  NetManager.m
//  AppTemplate
//
//  Created by Mac on 5/28/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "NetManager.h"


static NSString *testURL1=@"http://123.57.229.149:82/wisdom/getRecommendHotels?keyword=我要在北京海淀找一家四星级酒店";

static NSString *textURL2=@"http://123.57.229.149:82/wisdom/getDetailHotelInfo?hotelID=129253";

static NSString *textURL3=@"http://123.57.229.149:82/wisdom/getHotel?hotelID=129253";

static NSString *textURL4=@"http://123.57.229.149:82/wisdom/getHotelAspectScore?hotelID=129253";

static NSString *textURL5=@"http://123.57.229.149:82/wisdom/getHotelAllAspects?hotelID=129253";

static NSString *baseUrl=@"http://123.57.229.149:82/wisdom/getRecommendHotels";

@implementation NetManager

static NetManager *thisInstance;
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


+ (void)netWorkStatus
{
    /**
     AFNetworkReachabilityStatusUnknown          = -1,  // 未知
     AFNetworkReachabilityStatusNotReachable     = 0,   // 无连接
     AFNetworkReachabilityStatusReachableViaWWAN = 1,   // 3G 花钱
     AFNetworkReachabilityStatusReachableViaWiFi = 2,   // WiFi
     */
    // 如果要检测网络状态的变化,必须用检测管理器的单例的startMonitoring
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    // 检测网络连接的单例,网络变化时的回调方法
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //TODO:网络状态连接
        NSLog(@"%ld", status);
    }];
}

+ (void)JSONDataWithUrl:(NSString *)url success:(void (^)(id json))success fail:(void (^)())fail
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    NSDictionary *dict = @{@"keyword":@"我要在北京海淀找一家四星级酒店"};
    // 网络访问是异步的,回调是主线程的,因此程序员不用管在主线程更新UI的事情
    manager.requestSerializer=[AFJSONRequestSerializer serializer];
   manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager GET:url parameters:dict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
        if (fail) {
            fail();
        }
    }];
}

+ (void)postJSONWithUrl:(NSString *)urlStr parameters:(id)parameters success:(void (^)(id responseObject))success fail:(void (^)())fail
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    // 设置请求格式
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    // 设置返回格式
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:urlStr parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //        NSString *result = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        if (success) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
        if (fail) {
            fail();
        }
    }];
    
}


//网络请求
+(void)TextRequest:(NSString*)URL
{
   
}


-(void)tests
{
    [NetManager JSONDataWithUrl:baseUrl success:^(id json) {
        NSLog(@"response:%@",json);
        NSDictionary *dictory=json;
        for (NSDictionary *dictobject in dictory) {
            NSLog(@"%@",dictobject);
        }
        
        
        
        
        
        
    } fail:^{
        
        
    }];

}


@end
