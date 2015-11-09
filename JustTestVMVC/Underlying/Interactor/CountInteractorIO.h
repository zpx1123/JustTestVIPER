//
//  CountInteractorIO.h
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

#import <Foundation/Foundation.h>

//@protocol CountInteractorIO <NSObject>
//@end
@protocol CNTCountInteractorInput <NSObject>
- (void)requestCount;
- (void)increment;
- (void)decrement;
@end


@protocol CNTCountInteractorOutput <NSObject>
- (void)updateCount:(NSUInteger)count;
@end

