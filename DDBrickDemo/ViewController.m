//
//  ViewController.m
//  DDBrickDemo
//
//  Created by amoblin on 2017/3/12.
//  Copyright © 2017年 amoblin. All rights reserved.
//

#import "ViewController.h"
#import "CourseModel.h"
#import "TextData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    CourseModel *m = [[CourseModel alloc] initWithDictionary:@{@"name": @"mike"} error:nil];

    // after get model from API

    self.dataArray = @[[[TextData alloc] initWithModel:m]];
}

#pragma mark - DDBrick Methods

- (void)configConstraints;
{
    [super configConstraints];
    [self.tableView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@20);
    }];
}

#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
