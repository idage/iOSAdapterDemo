//
//  ContentViewAdapter.h
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/24.
//  Copyright © 2016年 idage. All rights reserved.
//       

#import <Foundation/Foundation.h>
#import "ContentViewAdapterProtocol.h"
@interface ContentViewAdapter : NSObject<ContentViewAdapterProtocol>
/**
 *  输入对象
 */
@property (nonatomic, weak) id data;
/**
 *  与输入对象建立联系
 *
 *  @param data 输入的对象
 *
 *  @return 实例对象
 */
- (instancetype)initWithData:(id)data;
@end
