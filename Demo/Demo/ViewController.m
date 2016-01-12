//
//  ViewController.m
//  Demo
//
//  Created by mmclick on 15/12/9.
//  Copyright © 2015年 MMC. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)shareBtnPressed:(UIButton *)sender {
    
    // 分享内容：会根据分享的内容shareArr决定分享弹出框。比如微信6.3.9版本只能分享图片，如果数组中包含了文字和链接，就分享不了啦，坑爹。
    NSString *shareText  = @"这个是分享文字";
    NSURL    *shareUrl   = [NSURL URLWithString:@"http://www.baidu.com"];
    UIImage  *shareImage = [UIImage imageNamed:@"shareImage.jpg"];
    NSArray  *shareArr   = @[shareText,shareUrl,shareImage];
    
    UIActivityViewController *actionController = [[UIActivityViewController alloc] initWithActivityItems:shareArr applicationActivities:nil];
    
    // 分享回调：iOS8以后用completionWithItemsHandler了
    actionController.completionHandler = ^(NSString *activityType, BOOL completed) {
    };
    
    // 推出界面
    [self presentViewController:actionController animated:YES completion:nil];
    
}

@end
