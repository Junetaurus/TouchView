//
//  TouchView.m
//  TouchView
//
//  Created by ZHANGJUN on 16/9/2.
//  Copyright © 2016年 ang. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

/**
 *  自定义view
    重写touch方法
    只要不断的摸当前的view就会调用
 *
 */
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 拿到UITouch就能获取当前点
    UITouch *touch = [touches anyObject];
    // 获取当前点
    CGPoint curP = [touch locationInView:self];
    // 获取上一个点
    CGPoint preP = [touch previousLocationInView:self];
    // 获取手指x轴偏移量
    CGFloat offsetX = curP.x - preP.x;
    // 获取手指y轴偏移量
    CGFloat offsetY = curP.y - preP.y;
    // 移动当前view
    self.transform = CGAffineTransformTranslate(self.transform, offsetX, offsetY);
}

/**
 *  触摸事件被迫打断(电话打来)
 */
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

/**
 *  手抬起的时候调用
 */
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

@end
