//
//  MVPController.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "MVPController.h"
#import "Present.h"
#import "MVPView.h"
#import "Paper.h"
@interface MVPController ()

@property (strong, nonatomic) Present *present;
@property (strong, nonatomic) MVPView *mvpView;
@property (strong, nonatomic) Paper *paper;

@end

@implementation MVPController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    _present = [Present new];
    
    self.mvpView = [MVPView new];
    self.mvpView.frame = self.view.frame;
    [self.view addSubview:_mvpView];
    self.mvpView.delegate  = _present;
    self.paper  =[Paper new];
    _paper.contentStr = @"line 0";
    
    _present.mvpView = _mvpView;
    _present.paper = _paper;
    [_present  printTask];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
