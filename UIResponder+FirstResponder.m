//
//  UIResponder+FirstResponder.m
//  XinHuaNewsReport
//
//  Created by admin on 2017/4/28.
//  Copyright © 2017年 Neusoft. All rights reserved.
//

#import "UIResponder+FirstResponder.h"

static __weak id currentFirstResponder;

@implementation UIResponder (FirstResponder)

+ (id)currentFirstResponder {
    currentFirstResponder = nil;
    [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:)
                                               to:nil
                                             from:nil
                                         forEvent:nil];
    return currentFirstResponder;
}
- (void)findFirstResponder:(id)sender {
    currentFirstResponder = self;
}

@end
