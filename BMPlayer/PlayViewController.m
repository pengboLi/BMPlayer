//
//  PlayViewController.m
//  BMPlayer
//
//  Created by 李鹏博 on 16/11/11.
//  Copyright © 2016年 李鹏博. All rights reserved.
//

#import "PlayViewController.h"
#import "PlayerView.h"
#import "UIView+SetRect.h"
@interface PlayViewController ()

@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PlayerView *playerView = [[PlayerView alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, 200)];
    [self.view addSubview:playerView];
    //视频地址
    playerView.videoUrl = [NSURL URLWithString:@"http://flv2.bn.netease.com/videolib3/1611/11/ZkYDQ6448/HD/ZkYDQ6448-mobile.mp4"];
    //播放
    [playerView playVideo];
    //根据旋转自动支持全屏，默认不支持
    playerView.autoFullScreen = YES;
    
    //返回按钮点击事件回调
    [playerView backButton:^(UIButton *button) {
        NSLog(@"返回按钮被点击");
        [self.navigationController popViewControllerAnimated:YES];
    }];
    //播放完成回调
    [playerView endPlay:^{
        NSLog(@"播放完成");
    }];
    
    
    
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

@end
