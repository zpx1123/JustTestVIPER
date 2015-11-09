//
//  CountPresent.h
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CountInteractorIO.h"
#import "CountView.h"

@interface CountPresent : NSObject<CNTCountInteractorOutput>

@property (nonatomic, weak)     id<CountView>            view;
@property (nonatomic, strong)   id<CNTCountInteractorInput> interactor;

- (void)updateView;
- (void)increment;
- (void)decrement;
@end
