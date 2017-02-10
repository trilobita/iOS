//
//  ViewController.m
//  画轨迹
//
//  Created by PC-wzj on 16/12/16.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ViewController.h"
#import "StuBeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    StuBeView *stuBeView = [[StuBeView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    stuBeView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:stuBeView];
    
    
}

- (void) createBesizer {
    UIBezierPath *bezier = [UIBezierPath bezierPath];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
