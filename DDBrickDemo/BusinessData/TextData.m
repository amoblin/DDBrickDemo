//
//  TextData.m
//  DDBrickDemo
//
//  Created by amoblin on 2017/3/12.
//  Copyright © 2017年 amoblin. All rights reserved.
//

#import "TextData.h"
#import "CourseModel.h"

@interface TextData()

@property (nonatomic, strong) CourseModel *courseModel;

@end

@implementation TextData


- (CourseModel *)courseModel;
{
    return (CourseModel *)self.model;
}

@end

@interface TextTableViewCell()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation TextTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupSubviews];
        [self configConstraints];
    }
    return self;
}

- (void)setupSubviews;
{
    UILabel *l = [UILabel labelWithFont:[UIFont systemFontOfSize:16.0f] textColor:[UIColor colorWithHexString:@"333333"]];
    [self.contentView addSubview:l];
    self.contentLabel = l;
}

- (void)configConstraints;
{
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.top.bottom.equalTo(self.contentView);
        make.right.equalTo(@-10);
    }];
}

#pragma mark - DDKit Protocol

- (void)configCell;
{
    self.contentLabel.text = ((TextData *)self.data).courseModel.name;
}

@end
