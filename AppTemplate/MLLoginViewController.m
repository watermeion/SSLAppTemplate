//
//  MLLoginViewController.m
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "MLLoginViewController.h"
#import "RegistViewController.h"
#import "ResetPwdViewController.h"

#import "commonMacro.h"
#import "MLLoginProtocol.h"
#import "LoginBussiness.h"
#import "MLLoginManager.h"

#import "MBProgressHUD.h"
#import "MBProgressHUD+Add.h"

#import "UINavigationBar+ModifyStatusBarbackgroudColor.h"




@interface MLLoginViewController ()
- (IBAction)registerInvokerAction:(id)sender;
- (IBAction)backToParentVCAction:(id)sender;
- (IBAction)invokeResetPWDVCAction:(id)sender;

//Handler
@property (weak,nonatomic)id<MLLoginProtocol> loginHandler;
@property (weak,nonatomic)MLLoginManager *loginmanager;
@end

@implementation MLLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //set Navi
    self.navigationController.navigationBar.hidden=YES;
    [self.loginNavigationBar modifyStatusBarBgColorWithColor:nil];

    self.loginmanager=[MLLoginManager shareInstance];
    
    if ([self.loginmanager.loginHandler conformsToProtocol:@protocol(MLLoginProtocol)]) {
        //指定登录操作
        self.loginHandler=self.loginmanager.loginHandler;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)registerInvokerAction:(id)sender {
    
    [self.navigationController pushViewController:[[RegistViewController alloc]init]
                                         animated:YES];
    
}

- (IBAction)backToParentVCAction:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}




- (IBAction)invokeResetPWDVCAction:(id)sender {
    //TODO：加入重置密码页面
    [self.navigationController pushViewController:[[ResetPwdViewController alloc]init] animated:YES];
    
}





- (IBAction)loginAction:(id)sender {
    //TODO:登录请求
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [self.loginHandler loginInbackground:self.usernameTextField.text Pwd:self.passwordTextField.text loginType:0 withBlock:^(BOOL success, NSError *error) {
        [MBProgressHUD hideHUDForView:self.view animated:YES];
        if(success)
        {
          //TODO:更新登录成功UI
        }
        else
        {
          //TODO：更新登录失败的UI
        }
    }];
}
@end
