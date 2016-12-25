//
//  MVVMController.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "MVVMController.h"
#import "ViewModel.h"
#import "Paper.h"
#import "MVVMView.h"
@interface MVVMController ()

@property (strong, nonatomic) ViewModel *viewModel;
@property (strong, nonatomic) MVVMView *mvvmView;
@property (strong, nonatomic) Paper *paper;

@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.paper = [Paper new];
    self.paper.contentStr = @"line 0";
    
    self.viewModel = [ViewModel new];
    self.mvvmView = [MVVMView new];
    self.mvvmView.frame = self.view.frame;
    [self.view addSubview:_mvvmView];
    
    
    
    [_viewModel setWithPaper:_paper];
    
    [self.mvvmView setWithViewModel:_viewModel];
    
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
