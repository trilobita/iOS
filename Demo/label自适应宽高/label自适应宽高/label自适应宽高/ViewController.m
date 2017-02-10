//
//  ViewController.m
//  label自适应宽高
//
//  Created by PC-wzj on 16/8/24.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createLabelWitdTitle:(NSString *)title andY:(CGFloat)y{
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, y, self.view.frame.size.width-10, 0)];
    label.backgroundColor = [UIColor grayColor];
    
    
    
    label.font = [UIFont systemFontOfSize:18.0f];
    label.numberOfLines = 0;
    label.text = title;
    [label sizeToFit];
    NSLog(@"%f", label.frame.size.width);
    [self.view addSubview:label];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createLabelWitdTitle:@"自适应测试" andY:20.0f];
    [self createLabelWitdTitle:@"自适应测试自适应测试自适应测试自适应测试" andY:50.0f];
    [self createLabelWitdTitle:@"自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试" andY:100.0f];
    [self createLabelWitdTitle:@"自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试自适应测试" andY:200.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
