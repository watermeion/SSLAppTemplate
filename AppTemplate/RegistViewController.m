//
//  RegistViewController.m
//  AppTemplate
//
//  Created by Mac on 5/25/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "RegistViewController.h"
#import "commonMacro.h"
#import "UINavigationBar+ModifyStatusBarbackgroudColor.h"
@interface RegistViewController ()
{
    NSTimer *timer;
    int seconds;

}
@end

@implementation RegistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.navigationBar modifyStatusBarBgColorWithColor:nil];
    self.smsTimerLabel.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initTimer
{
    self.smsTimerLabel.text=[NSString stringWithFormat:@"%d秒",60];
    self.smsTimerLabel.hidden=NO;
    self.smsCodeBtn.hidden=YES;
    
    NSTimeInterval timeInterval =1.0 ;
    //定时器
    timer = [NSTimer scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(handleMaxShowTimer:) userInfo:nil repeats:YES];
    seconds=60;
    [[NSRunLoop currentRunLoop] run];
}

//触发事件
-(void)handleMaxShowTimer:(NSTimer *)theTimer
{
    seconds--;
    
    [self performSelectorOnMainThread:@selector(showTimer) withObject:nil waitUntilDone:NO];
    
}

- (void)showTimer{
    self.smsTimerLabel.text=[NSString stringWithFormat:@"%d秒",seconds];
    
    if (seconds==0) {
        [timer invalidate];
        self.smsTimerLabel.hidden=YES;
        self.smsCodeBtn.hidden=NO;
        seconds=60;
    }
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backToLogin:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)submitRegistAction:(id)sender {
    
    
    
}

- (IBAction)showUserInfo:(id)sender {
    
    
    
    
}

- (IBAction)requestSMSCodeAction:(id)sender {
    
//    [NSThread detachNewThreadSelector:@selector(initTimer) toTarget:self withObject:nil];
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self initTimer];
    });
    
    
}
@end
