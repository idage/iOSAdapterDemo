//
//  ItemModelAdeapter.m
//  AdapterDemo
//
//  Created by 冯亮 on 16/9/24.
//  Copyright © 2016年 idage. All rights reserved.
//

#import "ItemModelAdeapter.h"
#import "ItemModel.h"
@implementation ItemModelAdeapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        
        self.data = data;
        
    }
    
    return self;
}
-(UIImage*)image{

    ItemModel *model =  self.data;

    return model.image;
}

-(NSString*)contentStr{
    ItemModel *model =  self.data;
    
    return model.conntentStr;

}

@end
