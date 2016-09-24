//
//  ContentView.m
//  lingPaoTu
//
//  Created by 冯亮 on 15/7/9.
//  Copyright (c) 2015年 冯亮. All rights reserved.
//

#import "ContentView.h"
#define Height   self.frame.size.height
#define Width    self.frame.size.width
@implementation ContentView{
    UIImageView *_imageView;
    UILabel *_labelContent;
}

- (instancetype)initWithFrame:(CGRect)frame {
   
    self = [super initWithFrame:frame];
    if (self) {
      
        [self setup];
      
    }
    return self;
}
- (void)setup {
    
    _imageView    = [[UIImageView alloc]initWithFrame:CGRectMake(0,0,Height, Height)];

    [self addSubview:_imageView];
    
    _labelContent = [[UILabel alloc]initWithFrame:CGRectMake(Height+7, 0, Width -7-Height, Height)];

    [self addSubview:_labelContent];
}


-(void)loadData:(id  <ContentViewAdapterProtocol>)data{
    self.image      = [data image];
    self.contentStr = [data contentStr];
}
-(void)setImage:(UIImage *)image{
    _image           = image;
    _imageView.image = image;
}
-(void)setContentStr:(NSString *)contentStr{
    _contentStr         = contentStr;
    _labelContent.text  = contentStr;
}





@end
