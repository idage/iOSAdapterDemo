//
//  ViewController.m
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/23.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "ViewController.h"
#import "ContenModel.h"
#import "ContentView.h"
#import "ContentViewAdapter.h"
#import "ContentModelAdeapter.h"
#import "ItemModelAdeapter.h"
#import "ItemModel.h"
#import "ModelAdapter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
   /*========================类适配器===========================*/
    ContenModel *contenModel = [[ContenModel alloc]init];
    contenModel.conntentStr  =  @"时间：10：32:12";
    contenModel.imageName    =  @"shijian";

    ContentViewAdapter *modelAdapter = [[ContentModelAdeapter alloc]initWithData:contenModel];
    
    ContentView *contentView = [[ContentView alloc]initWithFrame:CGRectMake(100, 100, 200, 20)];
    [contentView loadData:modelAdapter];
    [self.view addSubview:contentView];
    
    
    ItemModel *itemModel  = [[ItemModel alloc]init];
    itemModel.conntentStr =  @"心率：100次";
    itemModel.image       =  [UIImage imageNamed:@"mapHeaderIcon"];
    
    ContentViewAdapter *modelAdapter1 = [[ItemModelAdeapter alloc]initWithData:itemModel];
    
    ContentView *contentView1 = [[ContentView alloc]initWithFrame:CGRectMake(100, 200, 200, 20)];
    [contentView1 loadData:modelAdapter1];
    [self.view addSubview:contentView1];

    /*========================对象适配器===========================*/
    
    ItemModel *itemModel1  = [[ItemModel alloc]init];
    itemModel1.conntentStr =  @"心率：100次";
    itemModel1.image       =  [UIImage imageNamed:@"mapHeaderIcon"];
    
    ContentViewAdapter *modelAdapter2 = [[ModelAdapter alloc]initWithData:itemModel];
    
    ContentView *contentView2 = [[ContentView alloc]initWithFrame:CGRectMake(100, 300, 200, 20)];
    [contentView2 loadData:modelAdapter2];
    [self.view addSubview:contentView2];

 
    
    ContenModel *contenModel2 = [[ContenModel alloc]init];
    contenModel2.conntentStr  =  @"时间：10：32:12";
    contenModel2.imageName    =  @"shijian";
    
    ContentViewAdapter *modelAdapter3 = [[ModelAdapter alloc]initWithData:contenModel];
    
    ContentView *contentView3 = [[ContentView alloc]initWithFrame:CGRectMake(100, 400, 200, 20)];
    [contentView3 loadData:modelAdapter3];
    [self.view addSubview:contentView3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
