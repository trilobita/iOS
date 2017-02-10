//
//  ViewController.m
//  SQLiteTest
//
//  Created by PC-wzj on 17/2/7.
//  Copyright © 2017年 方得. All rights reserved.
//

#import "ViewController.h"
#import "FMDatabase.h"

@interface ViewController ()

@property (nonatomic, copy) NSString *dbPath;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [NSString stringWithFormat:@"%@/data.sqlite", NSHomeDirectory()];
    NSLog(@"path = %@", path);
    _dbPath = path;
    
    [self createDB];
    
}

- (void) createDB {
    FMDatabase *DB = [FMDatabase databaseWithPath:_dbPath];
    [DB open];
//    插入一条数据
//    NSString *insertSql = @"INSERT INTO userInfo (userId,phone,password,isLogin,isPlay) VALUES (3,'15757117990', '123456', 1,1 )";
//    [DB executeUpdate:insertSql];
    
//    查询语句
    NSString *selSql = @"SELECT * FROM userInfo";
    FMResultSet *set = [DB executeQuery:selSql];
    while (set.next) {
        NSLog(@"%@", [set stringForColumn:@"phone"]);
        NSLog(@"%d", [set intForColumnIndex:1]);
    }
    
    
    [DB close];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
