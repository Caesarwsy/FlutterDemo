//
//  ViewController.m
//  FlutterDemo
//
//  Created by 伍思宇 on 2017/11/9.
//  Copyright © 2017年 伍思宇. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>

@interface ViewController ()

@property (nonatomic,strong) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.button.center = self.view.center;
    [self.button setTitle:@"跳转flutter" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(a) forControlEvents:UIControlEventTouchUpInside];
    [self.button setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:self.button];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)a
{
    FlutterDartProject *a = [[FlutterDartProject alloc] initFromDefaultSourceForConfiguration];
    FlutterViewController *b = [[FlutterViewController alloc] initWithProject:a nibName:nil bundle:nil];
    [self addChildViewController:b];
    b.view.frame = self.view.bounds;
    [self.view addSubview:b.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
