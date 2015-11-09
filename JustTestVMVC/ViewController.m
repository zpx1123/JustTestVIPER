//
//  ViewController.m
//  JustTestVMVC
//
//  Created by 周鹏翔 on 15/11/6.
//  Copyright © 2015年 周鹏翔. All rights reserved.
//

#import "ViewController.h"
#import "ShowView.h"

@interface ViewController ()<showViewDelegate>{
    
    ShowView * showview;//要展示的view
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];

   //自动布局也好，手动写frame也好，都放倒view里面，block出来事件
    showview=[[ShowView alloc]initWithFrame:self.view.frame];
    showview.delegate=self;
    [self.view addSubview:showview];
    

    
    // Do any additional setup after loading the view, typically from a nib.
}
//回调或者block出来的事件   好现在要发给present要做什么事情了

-(void)addConut{
    
    [self.present increment];
    
}
-(void)removeCount{
    
    [self.present decrement];
}

#pragma mark - 别动更改showview的样式或者文字

- (void)setCountText:(NSString*)countText
{

    showview.showlable.text=countText;
}


- (void)setDecrementEnabled:(BOOL)enabled
{

    showview.removeButton.enabled=enabled;
    if (!enabled) {
        
        showview.removeButton.backgroundColor=[UIColor blueColor];
    }else{
        
          showview.removeButton.backgroundColor=[UIColor redColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
