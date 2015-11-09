//
//  ShowView.m
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

#import "ShowView.h"

@implementation ShowView

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self=[super initWithFrame:frame]) {
        
        
        UILabel * lable=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
        [lable setText:@"数字"];
        [self addSubview:lable];
        self.showlable=lable;
        
        
        
        UIButton * button=[[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
        [button setTitle:@"+" forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor redColor]];
        [button addTarget: self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        self.addButton=button;
        
        UIButton * button2=[[UIButton alloc]initWithFrame:CGRectMake(100, 300, 100, 50)];
        [button2 setTitle:@"-" forState:UIControlStateNormal];
        [button2 setBackgroundColor:[UIColor redColor]];
        [button2 addTarget: self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button2];
        self.removeButton=button2;
        
    }
    
    return self;
    
}

-(void)click{
    
    if (self.delegate &&[self.delegate respondsToSelector:@selector(addConut)]) {
        
        [self.delegate addConut];
    }
    
}
-(void)click2{
    
    if (self.delegate &&[self.delegate respondsToSelector:@selector(removeCount)]) {
        
        [self.delegate removeCount];
    }
    
}

//这边有个更新view的方法
-(void)updateView{
    
    //
}
//-(void)drawRect:(CGRect)rect{
//    
//    
//    
//}
@end
