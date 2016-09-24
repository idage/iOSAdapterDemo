//
//  ItemModel.h
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/24.
//  Copyright © 2016年 idage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ItemModel : NSObject
/**
 *  内容
 */
@property (nonatomic, strong) NSString *conntentStr;

/**
 *  图片
 */
@property (nonatomic, strong)UIImage  *image;
@end
