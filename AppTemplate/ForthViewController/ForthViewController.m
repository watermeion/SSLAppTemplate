//
//  ForthViewController.m
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "ForthViewController.h"
#import "MLLoginViewController.h"
#import "MLNavi.h"
#import "MLLoginManager.h"
@interface ForthViewController ()
@property(weak,nonatomic)MLLoginManager *loginManager;
@end

@implementation ForthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.loginManager=[MLLoginManager shareInstance];
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

- (IBAction)callLoginVCAction:(id)sender {
    
    [self.loginManager showLoginViewControllerModallyToViewController:self withcompletion:nil];
}
@end
