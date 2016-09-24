//
//  ContentView.h
//  lingPaoTu
//
//  Created by 冯亮 on 15/7/9.
//  Copyright (c) 2015年 冯亮. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewAdapterProtocol.h"
@interface ContentView : UIView
/**
 *  图片
 */
@property (nonatomic, strong) UIImage *image;
/**
 *  内容
 */
@property (nonatomic, copy) NSString *contentStr;

/**
 *  添加符合ContentViewAdapterProtocol协议的数据类
 */
-(void)loadData:(id<ContentViewAdapterProtocol>)data;
@end
