//
//  CountInteractor.m
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//




//CountInteractor 处理业务逻辑  处理好了把结果仍给prenter

#import "CountInteractor.h"

@interface CountInteractor()
@property (nonatomic, assign)   NSUInteger  count;
@end

@implementation CountInteractor


- (void)requestCount
{
    [self sendCount];
}


- (void)increment
{
    ++self.count;
    [self sendCount];
}


- (void)decrement
{
    if ([self canDecrement])
    {
        --self.count;
        [self sendCount];
    }
}


- (BOOL)canDecrement
{
    return (self.count > 0);
}


- (void)sendCount
{
//    处理好了把结果扔给present
    [self.output updateCount:self.count];
}

@end
