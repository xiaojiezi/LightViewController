//
//  ViewController.m
//  LightViewController
//
//  Created by yj on 15/11/6.
//  Copyright © 2015年 yj. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "Photo.h"
#import "PhotoCell+ConfigureForPhoto.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) ArrayDataSource *arrayDataSource;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    NSMutableArray *dataArray = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        Photo *photo = [[Photo alloc] init];
        photo.name = @"我们的爱";
        [dataArray addObject:photo];
    }
    NSString *cellIdentifier = @"Cell";
    
    ConfigureCellBlock configureBlock = ^(PhotoCell* cell, Photo* photo) {
//        cell.textLabel.text = photo.name;
        [cell configureForPhoto:photo];
    };

    
    self.arrayDataSource = [[ArrayDataSource alloc] initWithItems:dataArray cellIdentifier:cellIdentifier cellConfigureBlock:configureBlock];
    
    self.tableView.dataSource = self.arrayDataSource;
}

@end
