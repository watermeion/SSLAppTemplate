//
//  RegistViewController.h
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistViewController : UIViewController
//UI
@property (weak, nonatomic) IBOutlet UINavigationBar *navigationBar;

@property (weak, nonatomic) IBOutlet UIButton *smsCodeBtn;

@property (weak, nonatomic) IBOutlet UILabel *smsTimerLabel;


//Data
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *smsCodeTextField;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;




//Action
- (IBAction)backToLogin:(id)sender;
- (IBAction)submitRegistAction:(id)sender;
- (IBAction)showUserInfo:(id)sender;
- (IBAction)requestSMSCodeAction:(id)sender;

@end
