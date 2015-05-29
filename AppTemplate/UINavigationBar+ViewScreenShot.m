//
//  UINavigationBar+ViewScreenShot.m
//  AppTemplate
//
//  Created by Mac on 5/26/15.
//  Copyright (c) 2015 Studio Of Spicy Hot. All rights reserved.
//

#import "UINavigationBar+ViewScreenShot.h"

@implementation UINavigationBar (ViewScreenShot)

- (UIImage *)imageFromView:(UIView *) theView
{

    UIGraphicsBeginImageContext(theView.frame.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [theView.layer renderInContext:context];
    
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    
    CGRect myImageRect = CGRectMake(0.0, 200.0, theView.frame.size.width, theView.frame.size.height-200);
    
    CGImageRef imageRef = theImage.CGImage;
    
    CGImageRef subImageRef = CGImageCreateWithImageInRect(imageRef, myImageRect);
    
    CGSize size;
    
    size.width = theView.frame.size.width;
    
    size.height = theView.frame.size.height-200;
    
    UIGraphicsBeginImageContext(size);
    
    CGContextDrawImage(context, myImageRect, subImageRef);
    
    UIImage* smallImage = [UIImage imageWithCGImage:subImageRef];
    
    UIGraphicsEndImageContext();
    
    return smallImage;
}
-(UIImage*)ScreenShotImage
{
   return [self imageFromView:self];
}

@end
