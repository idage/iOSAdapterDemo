//
//  ModelAdapter.m
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/24.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "ModelAdapter.h"
#import "ItemModel.h"
#import "ContenModel.h"
//对象适配器
@implementation ModelAdapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        
        self.data = data;
        
    }
    
    return self;
}
-(UIImage*)image{
    
    if ([self.data isMemberOfClass:[ContenModel class]]) {

    ContenModel *model =  self.data;
        
    return [UIImage imageNamed:model.imageName];
    
    }else{
        
        ItemModel *model =  self.data;
        
        return model.image;

    }
}

-(NSString*)contentStr{
   
    if ([self.data isMemberOfClass:[ContenModel class]]) {
        
        ContenModel *model =  self.data;
        
        return model.conntentStr;
        
    }else{
        
        ItemModel *model =  self.data;
        
        return model.conntentStr;
        
    }
}

@end
