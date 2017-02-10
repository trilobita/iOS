//
//  manager.h
//  pasteBox
//
//  Created by PC-wzj on 17/1/19.
//  Copyright © 2017年 方得. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface manager : NSObject

@property (nonatomic, copy) NSString *pasteString;

+ (instancetype)singletonPattern;

@end
