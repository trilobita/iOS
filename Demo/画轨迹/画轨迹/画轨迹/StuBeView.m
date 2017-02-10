//
//  StuBeView.m
//  画轨迹
//
//  Created by PC-wzj on 16/12/16.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "StuBeView.h"

@implementation StuBeView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self drawRect:CGRectMake(0, 0, 0, 0)];
    }
    return self;
}

//动画连线
- (void)drawRect:(CGRect)rect
{
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [UIColor.blackColor setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(39.5, 62.04)];
//    [bezier2Path addCurveToPoint: CGPointMake(158.5, 62.04) controlPoint1: CGPointMake(100.5, 27.07) controlPoint2: CGPointMake(158.5, 62.04)];
    [bezier2Path addLineToPoint:CGPointMake(100.5, 27.07)];
    [bezier2Path addLineToPoint:CGPointMake(158.5, 62.04)];
    [bezier2Path addLineToPoint: CGPointMake(93.5, 90.5)];
    [bezier2Path addLineToPoint: CGPointMake(39.5, 62.04)];
    [UIColor.blackColor setStroke];
    bezier2Path.lineWidth = 1;
    [bezier2Path stroke];
//    UIBezierPath *beizer = [UIBezierPath bezierPath];
//    [beizer moveToPoint:CGPointMake(100, 100)];
//    [beizer addLineToPoint:CGPointMake(150, 200)];
//    [beizer addLineToPoint:CGPointMake(50, 200)];
//    [beizer addLineToPoint:CGPointMake(100, 100)];//回到起始点形成封闭的图形
//    
////    beizer.lineWidth = 20;//边线的粗细(command点击lineWidth里面有很多属性,不一一列举)
////    UIColor *color = [UIColor grayColor];
////    [color set];  //设置线条颜色
////    [beizer stroke]; //连线的颜色
//    
//    //*****************添加动画连线******************//
//    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
//    shapeLayer.path = beizer.CGPath;
//    shapeLayer.fillColor = [UIColor clearColor].CGColor;
//    shapeLayer.strokeColor = [UIColor redColor].CGColor;
//    shapeLayer.lineWidth = 2;
//    [self.layer addSublayer:shapeLayer];
//    
//    CABasicAnimation *anmi = [CABasicAnimation animation];
//    anmi.keyPath = @"strokeEnd";
//    anmi.fromValue = [NSNumber numberWithFloat:0];
//    anmi.toValue = [NSNumber numberWithFloat:1.0f];
//    anmi.duration =2.0f;
//    anmi.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    anmi.autoreverses = YES;
//    
//    [shapeLayer addAnimation:anmi forKey:@"stroke"];
}

//画曲线
//- (void)drawRect:(CGRect)rect
//{
//    UIBezierPath *beizer = [UIBezierPath bezierPath];
//    [beizer moveToPoint:CGPointMake(100, 100)];
//    [beizer addQuadCurveToPoint:CGPointMake(200,100)controlPoint:CGPointMake(150,10)];
//    [beizer addQuadCurveToPoint:CGPointMake(300, 100) controlPoint:CGPointMake(250, 190)];
//    beizer.lineWidth = 5;
//    UIColor *color = [UIColor blueColor];
//    [color set];  //设置线条颜色
//    [beizer stroke]; //连线的颜色
//    UIColor *color1 = [UIColor redColor];
//    [color1 setFill];
//    [beizer fill]; //填充的颜色
//    
//    UILabel *l1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 5, 5)];
//    l1.backgroundColor = [UIColor redColor];
//    [self addSubview:l1];
//    
//    UILabel *l2 = [[UILabel alloc] initWithFrame:CGRectMake(200, 100, 5, 5)];
//    l2.backgroundColor = [UIColor blackColor];
//    [self addSubview:l2];
//    
//    UILabel *l3 = [[UILabel alloc] initWithFrame:CGRectMake(150, 10, 5, 5)];
//    l3.backgroundColor = [UIColor greenColor];
//    [self addSubview:l3];
//    
//    UILabel *l4 = [[UILabel alloc] initWithFrame:CGRectMake(300, 100, 5, 5)];
//    l4.backgroundColor = [UIColor yellowColor];
//    [self addSubview:l4];
//    
//    UILabel *l5 = [[UILabel alloc] initWithFrame:CGRectMake(250, 190, 5, 5)];
//    l5.backgroundColor = [UIColor purpleColor];
//    [self addSubview:l5];
//}

//画三角形
//- (void)drawRect:(CGRect)rect
//{
//    //1 ) 创建一个Bezier path对象。
//    UIBezierPath *beizer = [UIBezierPath bezierPath];
//    //2 ) 使用方法moveToPoint:去设置初始线段的起点。
//    [beizer moveToPoint:CGPointMake(100, 100)];
//    //3 ) 添加line或者curve去定义一个或者多个subpaths。
//    [beizer addLineToPoint:CGPointMake(150, 200)];
//    [beizer addLineToPoint:CGPointMake(50, 200)];
//    [beizer addLineToPoint:CGPointMake(100, 100)];//回到起始点形成封闭的图形
//    //4 ) 改变UIBezierPath对象跟绘图相关的属性。
//    beizer.lineWidth = 3;//边线的粗细(command点击lineWidth里面有很多属性,不一一列  举)
//    UIColor *color = [UIColor grayColor];
//    [color set];  //设置线条颜色
//    [beizer stroke]; //连线的颜色
//    UIColor *color1 = [UIColor redColor];
//    [color1 setFill];
//    [beizer fill]; //填充的颜色
//    
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
