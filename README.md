####一个简单的使用系统分享的例子，支持iOS6以后，但是微信分享的扩展，是iOS8以后中才出现的<br>

![](https://github.com/Xiezhichao/CCSystemShare/blob/master/demo.mp4)  


# Usage

```
- (IBAction)shareBtnPressed:(UIButton *)sender {
    
    // 分享内容
    UIImage  *shareImage = [UIImage imageNamed:@"shareImage.jpg"];
    UIActivityViewController *actionController = [[UIActivityViewController alloc] initWithActivityItems:@[shareImage]         applicationActivities:nil];
    
    // 分享回调
    actionController.completionHandler = ^(NSString *activityType, BOOL completed) {
    };
    
    // 推出界面
    [self presentViewController:actionController animated:YES completion:nil];
}
    
```
