//
//  ViewController.m
//  pasteBox
//
//  Created by PC-wzj on 17/1/19.
//  Copyright © 2017年 方得. All rights reserved.
//
#import "AppDelegate.h"
#import "ViewController.h"
#import "manager.h"

@interface ViewController ()
{
    UILabel *label;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, 300, 60)];
    label.backgroundColor = [UIColor grayColor];
    [self.view addSubview:label];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(readPaste:) name:@"temp" object:nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)readPaste: (NSNotification *) notification {
    label.text = (NSString *)notification.object;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
