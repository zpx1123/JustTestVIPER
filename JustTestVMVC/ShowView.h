//
//  ShowView.h
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/8.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol showViewDelegate <NSObject>

@required
-(void)addConut;
-(void)removeCount;
@end


@interface ShowView : UIView

@property(nonatomic,strong)UILabel * showlable;
@property(nonatomic,strong)UIButton * addButton;
@property(nonatomic,strong)UIButton * removeButton;

@property(nonatomic,weak)id<showViewDelegate>delegate;



@end
