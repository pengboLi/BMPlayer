//
//  UIImage+ScaleToSize.m
//  BMPlayer
//
//  Created by 李鹏博 on 16/11/11.
//  Copyright © 2016年 李鹏博. All rights reserved.
//

#import "UIImage+ScaleToSize.h"

@implementation UIImage (ScaleToSize)
-(UIImage*) OriginImage:(UIImage*)image scaleToSize:(CGSize)size
{
    //size为CGSize类型，即你所需要的图片尺寸
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0,0, size.width, size.height)];
    UIImage* scaledImage =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}
@end
