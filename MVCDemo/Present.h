//
//  Present.h
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPView.h"
#import "Paper.h"

@interface Present : NSObject<MVPViewDelegate>
@property (strong, nonatomic) MVPView *mvpView;
@property (strong, nonatomic) Paper *paper;

- (void)printTask;
@end
