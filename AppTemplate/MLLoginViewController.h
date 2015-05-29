//
//  MLLoginViewController.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLLoginViewController : UIViewController
//UI
@property (weak, nonatomic) IBOutlet UINavigationBar *loginNavigationBar;
//Data
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;


//Btn
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *resetPwdBtn;


//Action
- (IBAction)loginAction:(id)sender;

@end
