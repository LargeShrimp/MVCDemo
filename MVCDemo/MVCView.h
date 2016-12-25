//
//  MVCView.h
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Paper;


@protocol MVCViewDelegate <NSObject>

- (void)onClickBtnClick;


@end
@interface MVCView : UIView
@property (strong, nonatomic) UILabel *tipsLable;

@property (weak, nonatomic) id<MVCViewDelegate> delegate;


- (void)printOnView:(Paper *)paper;
@end
