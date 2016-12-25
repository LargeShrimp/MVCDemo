//
//  MVVMView.m
//  MVCDemo
//
//  Created by dianda on 2016/12/25.
//  Copyright © 2016年 dianda. All rights reserved.
//

#import "MVVMView.h"
#import "ViewModel.h"
#import "FBKVOController/KVOController.h"

@interface MVVMView ()

@property (strong, nonatomic) ViewModel *vm;
//@property (strong, nonatomic) FBKVOController *KVOController;
@end
@implementation MVVMView
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

- (void)setWithViewModel:(ViewModel *)vm {
    
    self.vm = vm;
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
       
        NSString *newContent = change[NSKeyValueChangeNewKey];
        _contentLable.text = newContent;
    }];
}
- (void)changeLableText {
    
    [self.vm changeLableText];
}
@end
