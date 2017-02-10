//
//  ViewController.m
//  对象深浅拷贝
//
//  Created by PC-wzj on 17/2/4.
//  Copyright © 2017年 方得. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableString *name = [NSMutableString stringWithFormat:@"三叶虫"];
    
    Person *person1 = [[Person alloc] init];
    person1.name = name;
    person1.age = 12;
    
    [name appendString:@"syc"];
    
    Person *person2 = [person1 copy];
    
//    person1.name = name;
    [person1.name appendString:@"syc"];
    
    NSLog(@"person1.name = %@   person1.age = %ld  ", person1.name, person1.age);
    
    NSLog(@"person2.name = %@   person2.age = %ld  ", person2.name, person2.age);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
