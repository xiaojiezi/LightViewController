//
//  PhotoCell+ConfigureForPhoto.h
//  LightViewController
//
//  Created by yj on 15/11/9.
//  Copyright © 2015年 yj. All rights reserved.
//

#import "PhotoCell.h"
@class Photo;

@interface PhotoCell (ConfigureForPhoto)

- (void)configureForPhoto:(Photo *)photo;

@end
