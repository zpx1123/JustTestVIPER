//
//  CountInteractor.h
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CountInteractorIO.h"
@interface CountInteractor : NSObject<CNTCountInteractorInput>

@property (nonatomic, weak) id<CNTCountInteractorOutput> output;

@end
