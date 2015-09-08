//
//  CommentTableViewCell.h
//  ClsLbTest
//
//  Created by wangjl on 9/7/15.
//  Copyright (c) 2015 wangjl. All rights reserved.
//

#import "ResizingTableViewCell.h"
#define DEFAULT_CELL_SIZE (CGSize){[[UIScreen mainScreen] bounds].size.width, 85}

@interface CommentTableViewCell : ResizingTableViewCell

- (void)setupCellWithData:(NSDictionary *)data andImage:(UIImage *)image;

@end
