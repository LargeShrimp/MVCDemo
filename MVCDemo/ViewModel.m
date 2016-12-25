//
//  ViewModel.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "ViewModel.h"
#import "Paper.h"

@interface ViewModel ()

@property (strong, nonatomic) Paper *paper;

@end
@implementation ViewModel


- (void)setWithPaper:(Paper *)paper {
    
    _paper = paper;
    self.contentStr = _paper.contentStr;
    
}
- (void)changeLableText {
    
    NSInteger rand = arc4random() % 10;
    _paper.contentStr = [NSString stringWithFormat:@" line %ld",rand];
    self.contentStr = _paper.contentStr;
    
    
    
}
@end
