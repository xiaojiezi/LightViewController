//
//  PhotoCell+ConfigureForPhoto.m
//  LightViewController
//
//  Created by yj on 15/11/9.
//  Copyright © 2015年 yj. All rights reserved.
//

#import "PhotoCell+ConfigureForPhoto.h"
#import "Photo.h"

@implementation PhotoCell (ConfigureForPhoto)

- (void)configureForPhoto:(Photo *)photo
{
    self.textLabel.text = photo.name;
}

@end
