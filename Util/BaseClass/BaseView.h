//
//  BaseView.h
//  Pro10788
//
//  Created by WangJiangLei on 14/2/14.
//  Copyright (c) 2014 江磊. All rights reserved.
//

#import <UIKit/UIKit.h>
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#import "Masonry.h"

@interface BaseView : UIView{

}

- (void)initService;
- (void)initViews;

@end
