//
//  ViewController.m
//  BMPlayer
//
//  Created by 李鹏博 on 16/11/11.
//  Copyright © 2016年 李鹏博. All rights reserved.
//

#import "ViewController.h"
#import "PlayViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    UIButton *playButton =[UIButton buttonWithType:UIButtonTypeCustom];
    playButton.frame =CGRectMake(100, 80, 200, 40);
    playButton.center =self.view.center;
    [playButton setTitle:@"播放" forState:UIControlStateNormal];
    playButton.backgroundColor =[UIColor redColor];
    [playButton addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playButton];
}
-(void)play{
    PlayViewController *view =[[PlayViewController alloc] init];
    [self.navigationController pushViewController:view animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
