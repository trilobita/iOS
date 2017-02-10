//
//  ViewController.m
//  园变方
//
//  Created by PC-wzj on 16/12/22.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    label.backgroundColor = [UIColor redColor];
    label.layer.cornerRadius = 25;
    label.clipsToBounds = YES;
    [self.view addSubview:label];
    
    [UIView animateWithDuration:3 animations:^{
        label.frame = CGRectMake(100, 50, 50, 50);
        label.clipsToBounds = YES;
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
