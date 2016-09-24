//
//  ContentViewAdapter.m
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/24.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "ContentViewAdapter.h"
#import <UIKit/UIKit.h>
@implementation ContentViewAdapter

- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        
        self.data = data;
        
    }
    
    return self;
}
-(UIImage*)image{
    
    return nil;
}

-(NSString*)contentStr{
    
     return nil;
}
@end
