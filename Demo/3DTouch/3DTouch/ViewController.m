//
//  ViewController.m
//  3DTouch
//
//  Created by PC-wzj on 16/11/14.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, UIViewControllerPreviewingDelegate>
{
    UITableView *_tableView;
    NSMutableArray *_dataArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createArray];
    [self buildTableView];
}
- (void) createArray {
    _dataArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 20; i++) {
        NSString *temp = [NSString stringWithFormat:@"测试3D Touch %d",i+1];
        [_dataArray addObject:temp];
    }
}

- (void) buildTableView {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor yellowColor];
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    
    [self.view addSubview:_tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0f;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIndetifier = @"cell";
    
    //UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndetifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndetifier];
    }
    
//    cell.textLabel.text = _dataArray[indexPath.row];
    
    for (UIView *subView in cell.subviews) {
        [subView removeFromSuperview];
    }
    
    UIView *tempView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100.0f)];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = _dataArray[indexPath.row];
    label.frame = CGRectMake(0, 0, self.view.frame.size.width, 100.0f);
    [tempView addSubview:label];
    
    
    
    [cell addSubview:tempView];
    
    
    [self registerForPreviewingWithDelegate:self sourceView:cell];
    return cell;
}

-(UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    NSIndexPath *indexPath = [_tableView indexPathForCell:(UITableViewCell* )[previewingContext sourceView]];
    
    
    
    //设定预览的界面
    UIViewController *childVC = [[UIViewController alloc] init];
    childVC.preferredContentSize = CGSizeMake(0.0f, 500.0f);
    childVC.view.backgroundColor = [UIColor redColor];
    
    //调整不被虚化的范围，按压的那个cell不被虚化（轻轻按压时周边会被虚化，再少用力展示预览，再加力跳页至设定界面）
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width,100);
    previewingContext.sourceRect = rect;
    //返回预览界面
    return childVC;
}

- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    //    [self.view addSubview: viewControllerToCommit.view];
    [self showViewController:viewControllerToCommit sender:self];
}
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"action1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"action1");
    }];
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"action2" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"action2");
    }];
    NSArray *actions = @[action1,action2];
    UIPreviewActionGroup *group1 = [UIPreviewActionGroup actionGroupWithTitle:@"Action Group" style:UIPreviewActionStyleDefault actions:actions];
    NSArray *array = @[group1];
    return array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
