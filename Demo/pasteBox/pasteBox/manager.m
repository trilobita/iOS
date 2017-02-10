//
//  manager.m
//  pasteBox
//
//  Created by PC-wzj on 17/1/19.
//  Copyright © 2017年 方得. All rights reserved.
//

#import "manager.h"

@implementation manager

+ (instancetype)singletonPattern{
    static manager * temp = nil;
    static dispatch_once_t  onceToken;
    
    dispatch_once(&onceToken, ^{
        
        if (temp == nil) {
            temp = [[manager alloc]init];
        }
        
    });
    
    return temp;
}

@end
