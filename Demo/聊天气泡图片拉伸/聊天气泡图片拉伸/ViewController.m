//
//  ViewController.m
//  聊天气泡图片拉伸
//
//  Created by PC-wzj on 17/2/4.
//  Copyright © 2017年 方得. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self button1];
//    [self button2];
//    [self button3];
    [self button4];
}

- (void) button4 {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 200, 50);
    
    UIImage *image = [UIImage imageNamed:@"myImage"];    
    
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void) button3 {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 200, 50);
    
    // 加载图片
    UIImage *image = [UIImage imageNamed:@"1"];
    
    // 设置端盖的值
    CGFloat top = image.size.height * 0.5;
    CGFloat left = image.size.width * 0.5;
    CGFloat bottom = image.size.height * 0.5;
    CGFloat right = image.size.width * 0.5;
    
    // 设置端盖的值
    UIEdgeInsets edgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
    // 设置拉伸的模式
    UIImageResizingMode mode = UIImageResizingModeStretch;
    
    // 拉伸图片
    UIImage *newImage = [image resizableImageWithCapInsets:edgeInsets resizingMode:mode];
    
    // 设置按钮的背景图片
    [btn setBackgroundImage:newImage forState:UIControlStateNormal];
    [self.view addSubview:btn];}

- (void) button2 {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 200, 50);
    
    UIImage *image = [UIImage imageNamed:@"1"];
    
    CGFloat top = image.size.height*0.5;
    CGFloat bottom = image.size.height*0.5;
    CGFloat left = image.size.width*0.5;
    CGFloat right = image.size.width*0.5;
    
    UIEdgeInsets edgeInset = UIEdgeInsetsMake(top, left, bottom, right);
    
    UIImage *newImage = [image resizableImageWithCapInsets:edgeInset resizingMode:UIImageResizingModeTile];
    
    [btn setBackgroundImage:newImage forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
}

- (void) button1 {
    //创建按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 200, 50);
    
    //    创建图片
    UIImage *image = [UIImage imageNamed:@"1"];
    
    //    计算新图片拉伸值
    NSInteger leftCapWidth = image.size.width * 0.5;
    NSInteger topCapHeight = image.size.height * 0.5;
    
    //    拉伸后的图片
    UIImage *newImage = [image stretchableImageWithLeftCapWidth:leftCapWidth topCapHeight:topCapHeight];
    
    
    //    添加按钮
    [btn setBackgroundImage:newImage forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
