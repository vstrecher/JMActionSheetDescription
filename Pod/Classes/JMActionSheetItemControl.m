//
//  JMActionSheetItemControl.m
//  Pods
//
//  Created by jerome morissard on 24/05/2015.
//  Copyright (c) 2015 Jérôme Morissard. All rights reserved.
//

#import "JMActionSheetItemControl.h"
static const CGFloat JMActionSheetItemControlHeight = 13.0f;
static const CGFloat JMActionSheetItemControlWidth = 14.0f;

@interface JMActionSheetItemControl ()
@end

@implementation JMActionSheetItemControl

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    return CGRectMake(0.0f, 0.0f, CGRectGetWidth(contentRect), CGRectGetHeight(contentRect));
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat y = (CGRectGetHeight(contentRect) - JMActionSheetItemControlHeight) / 2.0f;
    return CGRectMake(CGRectGetWidth(self.frame) - JMActionSheetItemControlWidth - y, y, JMActionSheetItemControlWidth, JMActionSheetItemControlHeight);
}

@end
