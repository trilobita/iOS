//
//  ViewController.m
//  testRunLoop
//
//  Created by PC-wzj on 17/2/4.
//  Copyright © 2017年 方得. All rights reserved.
//

#import "ViewController.h"

#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr, "%s:%zd\t%s\n", [[[NSString stringWithUTF8String: __FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat: FORMAT, ## __VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif

@interface ViewController ()

@property (nonatomic, strong) NSThread *thread;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    [self createThread];
}


/**
 确保先成不死
 */
- (void) createThread {
    
    //创建子线程
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(run) object:nil];
    self.thread.name = @"thread1";
    //启动子线程
    [self.thread start];
}

- (void) run {
    NSLog(@"run--%@", [NSThread currentThread]); //打印子线程
    //给子线程添加一个RunLoop，并加入源
    [[NSRunLoop currentRunLoop] addPort:[NSPort port] forMode:NSDefaultRunLoopMode];
    //启动RunLoop
    [[NSRunLoop currentRunLoop] run];
    
    NSLog(@"----------------------------");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //在子线程中条用test方法，如果子线程还存在就能够调用成功，不存在则调用失败
    [self performSelector:@selector(test) onThread:self.thread withObject:nil waitUntilDone:YES modes:@[NSDefaultRunLoopMode]];
}
- (void) test {
    NSLog(@"test--->%@", [NSThread currentThread]);//打印子线程
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
