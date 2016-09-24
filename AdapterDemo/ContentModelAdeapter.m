//
//  ContentModelAdeapter.m
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/24.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "ContentModelAdeapter.h"
#import "ContenModel.h"
#import <UIKit/UIKit.h>
@implementation ContentModelAdeapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        
        self.data = data;
        
    }
    
    return self;
}
-(UIImage*)image{
    
    ContenModel *model =  self.data;
    
    return [UIImage imageNamed:model.imageName];
}

-(NSString*)contentStr{
    ContenModel *model =  self.data;
    
    return model.conntentStr;
    
}


@end
