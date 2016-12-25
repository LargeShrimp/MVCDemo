//
//  MVVMView.h
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class ViewModel;
@interface MVVMView : UIView
@property (strong, nonatomic) UILabel *contentLable;
@property (strong, nonatomic) UIButton *clickButton;

- (void)setWithViewModel:(ViewModel *)vm;

@end
