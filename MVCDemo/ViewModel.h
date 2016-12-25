//
//  ViewModel.h
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FBKVOController/FBKVOController.h"
@class Paper;
@interface ViewModel : NSObject

@property (strong, nonatomic) NSString *contentStr;

- (void)changeLableText;

- (void)setWithPaper:(Paper *)paper;
@end
