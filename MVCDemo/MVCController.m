//
//  MVCController.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "Paper.h"

@interface MVCController ()<MVCViewDelegate>

@property (strong, nonatomic) MVCView *mvcView;
@property (strong, nonatomic) Paper *paper;

@end

@implementation MVCController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.mvcView = [MVCView new];
    self.mvcView.frame = self.view.frame;
    self.mvcView.delegate = self;
    [self.view addSubview:_mvcView];
    
    self.paper  =[Paper new];
    _paper.contentStr = @"line 0";
    [self printPaper];
    
}


- (void)printPaper {
    
    [_mvcView printOnView:_paper];
}

- (void)onClickBtnClick {
    NSInteger rand = arc4random() % 10;
    
    _paper.contentStr = [NSString stringWithFormat:@" line %ld",rand];
    [_mvcView printOnView:_paper];
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
