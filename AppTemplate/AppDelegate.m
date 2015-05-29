//
//  AppDelegate.m
//  AppTemplate
//
//  Created by Mac on 5/24/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "AppDelegate.h"
#import "MLTabbarVC.h"
#import "NetManager.h"
#import <AVOSCloud/AVCloud.h>


@interface AppDelegate ()
@property (strong,nonatomic)MLTabbarVC *mainTabViewController;
@end

@implementation AppDelegate


-(MLTabbarVC*)mainTabViewController
{
    if(_mainTabViewController==nil)
    {
        _mainTabViewController=[[MLTabbarVC alloc]init];
    }
    return _mainTabViewController;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //AVOS Client
    
    
    //AVOS Regist App Key
//    [AVOSCloud setApplicationId:@"ka1tjr3fv7s50dwe7cw5ots6vxf4xo3gv09uc7yg6rm8i3j2"
//                      clientKey:@"b2bsroi5b3908f4ovxvt34in7pgmnc8cgg5im3511a84ddak"];
//    
//    [AVAnalytics trackAppOpenedWithLaunchOptions:launchOptions];

    
   
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:[SRLoginVC shareLoginVC]];
    self.window.rootViewController=self.mainTabViewController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
