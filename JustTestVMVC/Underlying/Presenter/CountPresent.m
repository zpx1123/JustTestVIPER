//
//  CountPresent.m
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//



//CountPresent 只是接受事件和抛出结果，不干业务逻辑的事情， 真正处理业务逻辑是interactor
#import "CountPresent.h"

@interface CountPresent()


@property (nonatomic, strong)   NSNumberFormatter*  countFormatter;
@end

@implementation CountPresent

//跟新
- (void)updateView{
    
    if(self.interactor &&[self.interactor respondsToSelector:@selector(request)]){
        
          [self.interactor requestCount];
    }
  
}
//加
- (void)increment{
    

    if(self.interactor &&[self.interactor respondsToSelector:@selector(increment)]){
        
        [self.interactor increment];
    }
}
//减
- (void)decrement{
    

    
    if(self.interactor &&[self.interactor respondsToSelector:@selector(decrement)]){
        
        [self.interactor decrement];
    }
}

#pragma mark - Interactor output


//present 接受到interator的结果 在反丢给viewcontroller
- (void)updateCount:(NSUInteger)count
{
    [self.view setCountText:[self formattedCount:count]];
    [self.view setDecrementEnabled:[self canDecrementCount:count]];
}
- (NSString*)formattedCount:(NSUInteger)count
{
    return [self.countFormatter stringFromNumber:@(count)];
}
- (BOOL)canDecrementCount:(NSUInteger)count
{
    return (count > 0);
}
- (NSNumberFormatter*)countFormatter
{
    if (_countFormatter == nil)
    {
        _countFormatter = [[NSNumberFormatter alloc] init];
        [_countFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    }
    
    return _countFormatter;
}

@end
