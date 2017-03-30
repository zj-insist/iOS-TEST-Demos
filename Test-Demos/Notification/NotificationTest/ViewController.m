//
//  ViewController.m
//  NotificationTest
//
//  Created by ZJ-Jie on 2017/3/30.
//  Copyright © 2017年 ZJ-Jie. All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s",__func__);
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NSLog(@"%s",__func__);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%s",__func__);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%s",__func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(test) name:@"test" object:nil];
    NSLog(@"%s",__func__);
}

- (void)test {
    NSLog(@"%s",__func__);
//    [Utils showAlertViewWithController:self title:@"提示" message:@"这是一个测试" confirmButton:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_USEC)), dispatch_get_main_queue(), ^{
        [Utils showAlertViewWithController:self title:@"提示" message:@"这是一个测试" confirmButton:nil];
        NSLog(@"%s",__func__);
    });
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"test" object:nil];
}

@end
