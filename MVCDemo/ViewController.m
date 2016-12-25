//
//  ViewController.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPController.h"
#import "MVVMController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{        
        [self showMVVM];
    });
}

//mvc 中 C管理M 和V, 视图中的事件传递到控制器，控制器在改变model 后再把model传递给视图进行更新
//三者是互相知道互相引用

- (void)showMVC {
    
    MVCController *mvc = [[MVCController alloc]init];
    [self presentViewController:mvc animated:YES completion:nil];
}

//视图和model 互相不引用不依赖
- (void)showMVP {
    MVPController *mvp = [[MVPController alloc]init];
    [self presentViewController:mvp animated:YES completion:nil];
}

- (void)showMVVM {
    
    MVVMController *mvvm = [[MVVMController alloc]init];
    [self presentViewController:mvvm animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
