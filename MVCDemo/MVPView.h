//
//  MVPView.h
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol MVPViewDelegate <NSObject>

- (void)onClickBtnClick;


@end
@interface MVPView : UIView
@property (strong, nonatomic) UILabel *contentLable;
@property (weak, nonatomic) id<MVPViewDelegate> delegate;
- (void)printOnView:(NSString *)content;
@end
