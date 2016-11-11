//
//  UIImage+TintColor.h
//  BMPlayer
//
//  Created by 李鹏博 on 16/11/11.
//  Copyright © 2016年 李鹏博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TintColor)
- (UIImage *) imageWithTintColor:(UIColor *)tintColor;

- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor;
@end
