//
//  nextTableViewCell.m
//  ans_1
//
//  Created by MAC on 10/27/15.
//  Copyright (c) 2015 MAC. All rights reserved.
//

#import "nextTableViewCell.h"

@implementation nextTableViewCell
@synthesize img_vw,lbl_out,btn_details;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
