//
//  MVPView.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (strong, nonatomic) UIButton *clickButton;
@end

@implementation MVPView

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contentLable = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
        [self addSubview:_contentLable];
        _contentLable.textColor = [UIColor redColor];
        
        _clickButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 150, 100, 30)];
        [_clickButton setTitle:@"change" forState:UIControlStateNormal];
        [_clickButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_clickButton addTarget:self action:@selector(changeLableText) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_clickButton];
    }
    return self;
}

- (void)printOnView:(NSString *)content {
    
    _contentLable.text = content;
}
- (void)changeLableText {
    
    if ([_delegate respondsToSelector:@selector(onClickBtnClick)]) {
        [_delegate onClickBtnClick];
    }
}
@end
