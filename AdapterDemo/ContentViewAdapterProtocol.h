//
//  ContentViewAdapterProtocol.h
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/24.
//  Copyright © 2016年 idage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol ContentViewAdapterProtocol <NSObject>

-(UIImage*)image;

-(NSString*)contentStr;

@end
