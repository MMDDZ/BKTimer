//
//  ViewController.m
//  BKTimerDemo
//
//  Created by zhaolin on 2019/10/11.
//  Copyright © 2019 BIKE. All rights reserved.
//

#import "ViewController.h"
#import <BKTimer/BKTimer.h>

@interface ViewController ()

@property (nonatomic,weak) dispatch_source_t timer;
@property (nonatomic,assign) double time;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.time = 0;
    
    UIButton * startBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    startBtn.frame = CGRectMake((self.view.frame.size.width - 100)/2, 200, 100, 50);
    [startBtn setBackgroundColor:[UIColor greenColor]];
    [startBtn setTitle:@"开始" forState:UIControlStateNormal];
    [startBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    startBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [startBtn addTarget:self action:@selector(startBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startBtn];
    
    UIButton * stopBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    stopBtn.frame = CGRectMake((self.view.frame.size.width - 100)/2, 300, 100, 50);
    [stopBtn setBackgroundColor:[UIColor redColor]];
    [stopBtn setTitle:@"停止" forState:UIControlStateNormal];
    [stopBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    stopBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [stopBtn addTarget:self action:@selector(stopBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopBtn];
}

-(void)startBtnClick
{
    if (self.timer) {
        NSLog(@"正在计时中, 当前计时:%f", self.time);
        return;
    }
    NSLog(@"%@, 开始计时", [NSDate date]);
    self.timer = [BKTimer bk_setupTimerWithTimeInterval:0.01 totalTime:kBKTimerRepeatsTime handler:^(dispatch_source_t  _Nonnull timer, CGFloat lastTime) {
        self.time = self.time + 0.01;
        NSLog(@"%@, 当前计时:%f", [NSDate date], self.time);
    }];
}

-(void)stopBtnClick
{
    NSLog(@"%@, 停止计时, 当前计时:%f", [NSDate date], self.time);
    [BKTimer bk_removeTimer:self.timer];
}


@end
