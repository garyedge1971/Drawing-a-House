//
//  RTFViewController.m
//  Drawing a House
//
//  Created by Robert Finch on 26/05/2014.
//  Copyright (c) 2014 Robert Finch. All rights reserved.
//

#import "RTFViewController.h"

@interface RTFViewController ()

@end

@implementation RTFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2.0;
    int w = self.houseDrawView.bounds.size.width;
    int h = self.houseDrawView.bounds.size.height;
    // Move to top left of front wall
    [bezierPath moveToPoint:CGPointMake(1/6.0*w, 1/3.0*h)];
    // Flat line between roof and wall
    [bezierPath addLineToPoint:CGPointMake(5/6.0*w, 1/3.0*h)];
    // Right hand wall vertical line
    [bezierPath addLineToPoint:CGPointMake(5/6.0*w, 2/3.0*h)];
    // Bottom horizontal line
    [bezierPath addLineToPoint:CGPointMake(1/6.0*w, 2/3.0*h)];
    //Left hand wall vertical line
    [bezierPath addLineToPoint:CGPointMake(1/6.0*w, 1/3.0*h)];
    //Left hand diagonal line of roof
    [bezierPath addLineToPoint:CGPointMake(1/2.0*w, 0.5/3.0*h)];
     //Right hand diagonal line of roof
     [bezierPath addLineToPoint:CGPointMake(5/6.0*w, 1/3.0*h)];
    
    //Door
    UIBezierPath *door = [UIBezierPath bezierPathWithRect:CGRectMake((1/2.0*w)-15, (2/3.0*h)-75, 30, 75)];
    [bezierPath moveToPoint:CGPointMake(1/2.0*w, 2/3.0*h)];
//    [door fill];
    [bezierPath appendPath:door];
    
    //Big upstairs window
    UIBezierPath *bigUpstairsWindow = [UIBezierPath bezierPathWithRect:CGRectMake((1/6.0*w)+10, (1/3.0*h)+10, (4/6.0*w)-20, (1/6.0*h)-16)];

    [bezierPath appendPath:bigUpstairsWindow];
    
    UIBezierPath *doorArc = [UIBezierPath bezierPathWithArcCenter:CGPointMake((1/2.0*w), (2/3.0*h)-60) radius:7.5 startAngle:M_PI endAngle:2.0*M_PI clockwise:TRUE];
    [doorArc addLineToPoint:CGPointMake((1/2.0*w)-7.5, (2/3.0*h)-60)];
    [bezierPath appendPath:doorArc];
    
    //Left curtain
    UIBezierPath *leftCurtainTop = [UIBezierPath bezierPath];
//    [leftCurtain moveToPoint:CGPointMake((1/6.0*w)+20, (1/3.0*h)+10)];
    [leftCurtainTop addArcWithCenter:CGPointMake((1/6.0*w)+20, (1/3.0*h)+10) radius:30.0 startAngle:0 endAngle:0.6*M_PI clockwise:TRUE];
    UIBezierPath *leftCurtainBottom = [UIBezierPath bezierPath];
    [leftCurtainBottom addArcWithCenter:CGPointMake((1/6.0*w)+20, (1/3.0*h)+45) radius:18.0 startAngle:-0.18*M_PI endAngle:0.67*M_PI clockwise:TRUE];
    [bezierPath appendPath:leftCurtainTop];
    [bezierPath appendPath:leftCurtainBottom];
    
    //Right curtain
    UIBezierPath *rightCurtainTop = [UIBezierPath bezierPathWithArcCenter:CGPointMake((5/6.0*w)-20, (1/3.0*h)+10) radius:30.0 startAngle:M_PI endAngle:0.4*M_PI clockwise:FALSE];
    UIBezierPath *rightCurtainBottom = [UIBezierPath bezierPathWithArcCenter:CGPointMake((5/6.0*w)-20, (1/3.0*h)+45) radius:18.0 startAngle:1.15*M_PI endAngle:0.32*M_PI clockwise:FALSE];
    [bezierPath appendPath:rightCurtainTop];
    [bezierPath appendPath:rightCurtainBottom];
    
    //Chimney
    UIBezierPath *chimneyBody = [UIBezierPath bezierPath];
    [chimneyBody moveToPoint:CGPointMake(4.5/6.0*w, (0.75/3.0*h)+20)];
    [chimneyBody addLineToPoint:CGPointMake(4.5/6.0*w, (0.75/3.0*h)-30)];
    [chimneyBody addLineToPoint:CGPointMake(4.5/6.0*w-15, (0.75/3.0*h)-30)];
    [chimneyBody addLineToPoint:CGPointMake(4.5/6.0*w-15, (0.75/3.0*h)+10)];
    [bezierPath appendPath:chimneyBody];
    
    //Chimney smoke
    UIBezierPath *smoke1 = [UIBezierPath bezierPath];
    [smoke1 moveToPoint:CGPointMake(4.5/6.0*w-13, (0.75/3.0*h-30))];
//    smoke1.lineWidth = 0.75;
    [smoke1 addCurveToPoint:CGPointMake(4.5/6.0*w-13, (0.75/3.0*h)-100) controlPoint1:CGPointMake(4.5/6.0*w-1, (0.75/3.0*h)-67.5) controlPoint2:CGPointMake(4.5/6.0*w-15, (0.75/3.0*h)-67.5)];
    UIBezierPath *smoke2 = [UIBezierPath bezierPath];
    [smoke2 moveToPoint:CGPointMake(4.5/6.0*w-2, (0.75/3.0*h-30))];
    //    smoke1.lineWidth = 0.75;
    [smoke2 addCurveToPoint:CGPointMake(4.5/6.0*w-2, (0.75/3.0*h)-90) controlPoint1:CGPointMake(4.5/6.0*w-6, (0.75/3.0*h)-67.5) controlPoint2:CGPointMake(4.5/6.0*w+6, (0.75/3.0*h)-67.5)];
    UIBezierPath *smoke3 = [UIBezierPath bezierPath];
    [smoke3 moveToPoint:CGPointMake(4.5/6.0*w-6, (0.75/3.0*h-30))];
    //    smoke1.lineWidth = 0.75;
    [smoke3 addCurveToPoint:CGPointMake(4.5/6.0*w-6, (0.75/3.0*h)-110) controlPoint1:CGPointMake(4.5/6.0*w-20, (0.75/3.0*h)-67.5) controlPoint2:CGPointMake(4.5/6.0*w-2, (0.75/3.0*h)-67.5)];
    [bezierPath appendPath:smoke1];
    [bezierPath appendPath:smoke2];
    [bezierPath appendPath:smoke3];
    
    
    self.houseDrawView.pathToDraw = bezierPath;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
