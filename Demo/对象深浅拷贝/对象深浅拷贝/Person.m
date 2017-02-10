//
//  Person.m
//  对象深浅拷贝
//
//  Created by PC-wzj on 17/2/4.
//  Copyright © 2017年 方得. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id) copyWithZone:(NSZone *)zone {
    Person *person = [[Person allocWithZone:zone] init];
    
    person.age = self.age;
    person.name = self.name;
    
    return person;
}

@end
