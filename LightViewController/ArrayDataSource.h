//
//  ArrayDataSource.h
//  LightViewController
//
//  Created by yj on 15/11/9.
//  Copyright © 2015年 yj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Photo;
@class PhotoCell;


typedef void(^ConfigureCellBlock)(PhotoCell *, Photo *);

@interface ArrayDataSource : NSObject<UITableViewDataSource>

- (instancetype)initWithItems:(NSArray *)items cellIdentifier:(NSString *)cellIdentifier cellConfigureBlock:(ConfigureCellBlock)cellConfigureBlock;

@end
