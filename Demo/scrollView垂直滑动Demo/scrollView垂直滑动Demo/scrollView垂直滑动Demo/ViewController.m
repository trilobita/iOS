//
//  ViewController.m
//  scrollView垂直滑动Demo
//
//  Created by PC-wzj on 16/8/22.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ViewController.h"
#import "ScrllView.h"

@interface ViewController ()
{
    ScrllView *scrollView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    scrollView = [[ScrllView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    
    [self.view addSubview:scrollView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
