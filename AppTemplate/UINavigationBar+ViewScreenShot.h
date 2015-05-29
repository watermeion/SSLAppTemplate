//
//  UINavigationBar+ViewScreenShot.h
//  AppTemplate
//
//  Created by Mac on 5/26/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (ViewScreenShot)
- (UIImage *)imageFromView:(UIView *) theView;
-(UIImage*)ScreenShotImage;
@end
