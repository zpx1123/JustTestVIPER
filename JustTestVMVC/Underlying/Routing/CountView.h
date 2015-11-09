//
//  CountView.h
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CountView <NSObject>

- (void)setCountText:(NSString*)countText;
- (void)setDecrementEnabled:(BOOL)enabled;
@end
