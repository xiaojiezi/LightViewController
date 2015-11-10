//
//  ArrayDataSource.m
//  LightViewController
//
//  Created by yj on 15/11/9.
//  Copyright © 2015年 yj. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property (nonatomic, copy) ConfigureCellBlock configureCellBlock;

@property (nonatomic, copy) NSArray *items;

@property (nonatomic, copy) NSString *cellIdentifier;

@end

@implementation ArrayDataSource

- (instancetype)initWithItems:(NSArray *)items cellIdentifier:(NSString *)cellIdentifier cellConfigureBlock:(ConfigureCellBlock)cellConfigureBlock{
    
    self = [super init];
    
    if (self) {
        self.configureCellBlock = cellConfigureBlock;
        self.cellIdentifier = cellIdentifier;
        self.items = items;
    }
    
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath*)indexPath {
    return self.items[(NSUInteger)indexPath.row];
}

- (NSInteger)tableView:(UITableView*)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell*)tableView:(UITableView*)tableView
        cellForRowAtIndexPath:(NSIndexPath*)indexPath {
    id cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                              forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell,item);
    return cell;
}

@end
