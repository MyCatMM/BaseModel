//
//  ViewController.m
//  BaseModel
//
//  Created by app on 16/3/18.
//  Copyright © 2016年 张洲峰. All rights reserved.
//

#import "ViewController.h"
#import "Rcu_Model.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *jsonArray = @[
  @{@"name":@"日光灯带",@"num":@"2",@"lineType":@"Light"},
  @{@"name":@"中央空调",@"num":@"3",@"lineType":@"Air"},
  @{@"name":@"左窗帘",@"num":@"4",@"lineType":@"Curtain"}];
    
    //将jsonArray解析为model
    NSMutableArray *modelArray = [Rcu_Model baseModelObject:jsonArray];
    //解析结果
    NSLog(@"modelArray === %@",modelArray);
    
    
    //将jsonArray解析为map类型model
    NSMutableDictionary *mapModel = [Rcu_Model baseModelObject:jsonArray andKey:@"num"];
    //解析结果
    NSLog(@"mapModel === %@",mapModel);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
