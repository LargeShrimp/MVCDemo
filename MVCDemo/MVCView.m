//
//  MVCView.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "MVCView.h"
#import "Paper.h"

@interface MVCView ()

@property (strong, nonatomic) UIButton *clickButton;

@end
@implementation MVCView


- (instancetype)init
{
    self = [super init];
    if (self) {
        _tipsLable = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
        [self addSubview:_tipsLable];
        _tipsLable.textColor = [UIColor redColor];
        
        _clickButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 150, 100, 30)];
        [_clickButton setTitle:@"change" forState:UIControlStateNormal];
        [_clickButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_clickButton addTarget:self action:@selector(changeLableText) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_clickButton];
    }
    return self;
}
- (void)printOnView:(Paper *)paper {    
    NSLog(@"%@",paper.contentStr);
    _tipsLable.text = paper.contentStr;

}

- (void)changeLableText {
    
    if ([_delegate respondsToSelector:@selector(onClickBtnClick)]) {        
        [_delegate onClickBtnClick];
    }
}
@end
