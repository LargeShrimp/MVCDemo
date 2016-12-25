//
//  Present.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "Present.h"

@implementation Present

- (void)printTask {
    
//    _mvpView.contentLable.text = _paper.contentStr;
    [_mvpView printOnView:_paper.contentStr];
}

- (void)onClickBtnClick {
    NSInteger rand = arc4random() % 10;
    _paper.contentStr = [NSString stringWithFormat:@" line %ld",rand];
    [self printTask];
}
@end
