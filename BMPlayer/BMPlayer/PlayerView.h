//
//  PlayerView.h
//  BMPlayer
//
//  Created by 李鹏博 on 16/11/11.
//  Copyright © 2016年 李鹏博. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^BackClickBlock)(UIButton *button);
typedef void(^EndPlayBolck)(void);
@interface PlayerView : UIView

/**视频url*/
@property (nonatomic,strong) NSURL *videoUrl;
/**旋转自动全屏*/
@property (nonatomic,assign) BOOL autoFullScreen;
/**返回按钮回调方法*/
- (void)backButton:(BackClickBlock) backButton;
/**播放完成回调方法*/
- (void)endPlay:(EndPlayBolck) end;
/**播放*/
- (void)playVideo;
/**暂停*/
- (void)pausePlay;
@end
