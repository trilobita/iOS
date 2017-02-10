//
//  ScrllView.m
//  scrollView垂直滑动Demo
//
//  Created by PC-wzj on 16/8/22.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ScrllView.h"

@implementation ScrllView {
    UIScrollView *scrollView;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self buildView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self buildView];
    }
    return self;
}

- (void)buildView {
    self.backgroundColor = [UIColor blueColor];
    
    [self createScrollView];
}

- (void)createScrollView {
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width-10, self.frame.size.height)];
    
    scrollView.backgroundColor = [UIColor grayColor];
    
    scrollView.contentSize = CGSizeMake(self.frame.size.width-20, self.frame.size.height*2.0f);
    
    
    for (int i = 0; i < 5; i ++) {
        UILabel *label = [[UILabel alloc] init];
        label.backgroundColor = [UIColor yellowColor];
        label.frame = CGRectMake(0, i*200+200, 200, 40);
        label.text = [NSString stringWithFormat:@"scrollViewDemo_%d", i];
        
        [scrollView addSubview:label];
    }
    
    
    [self addSubview:scrollView];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
