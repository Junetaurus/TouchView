//
//  ViewController.m
//  TouchView
//
//  Created by ZHANGJUN on 16/9/2.
//  Copyright © 2016年 ang. All rights reserved.
//

#import "ViewController.h"

#import "TouchView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TouchView *touchView = [[TouchView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    touchView.backgroundColor = [UIColor redColor];
    touchView.layer.cornerRadius = 25;
    touchView.layer.masksToBounds = YES;
    [self.view addSubview:touchView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
