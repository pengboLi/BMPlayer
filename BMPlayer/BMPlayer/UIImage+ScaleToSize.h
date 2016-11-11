//
//  UIImage+ScaleToSize.h
//  BMPlayer
//
//  Created by 李鹏博 on 16/11/11.
//  Copyright © 2016年 李鹏博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ScaleToSize)
/**
 重新绘制图片大小
 
 @param image 原始图片
 @param size  需要的大小
 
 @return 返回改变大小后图片
 */
-(UIImage*) OriginImage:(UIImage*)image scaleToSize:(CGSize)size;

@end
