//
//  ZBShareMenuView.h
//  MessageDisplay
//
//  Created by zhoubin@moshi on 14-5-13.
//  Copyright (c) 2014年 Crius_ZB. All rights reserved.
//

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com

#import <UIKit/UIKit.h>
#import "ZBMessageShareMenuItem.h"

#define kZBMessageShareMenuPageControlHeight 30

@protocol ZBMessageShareMenuViewDelegate <NSObject>

@optional
- (void)didSelecteShareMenuItem:(ZBMessageShareMenuItem *)shareMenuItem atIndex:(NSInteger)index;

@end

@interface ZBMessageShareMenuView : UIView

/**
 *  第三方功能Models
 */
@property (nonatomic, strong) NSArray *shareMenuItems;

@property (nonatomic, weak) id <ZBMessageShareMenuViewDelegate> delegate;

- (void)reloadData;

@end
