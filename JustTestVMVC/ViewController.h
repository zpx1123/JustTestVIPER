//
//  ViewController.h
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/6.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

//ViewController 就干2件事情   1 我需要做什么   2 我需要被动更新什么

#import <UIKit/UIKit.h>

#import "CountView.h"
#import "CountPresent.h"

@interface ViewController : UIViewController<CountView>//被动更新什么 countview 会告诉你

@property(nonatomic,strong)CountPresent * present;//我需要做什么事件传递给present 就不用管了

@end

