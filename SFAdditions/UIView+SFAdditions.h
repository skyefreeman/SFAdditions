//
//  UIView+SFAdditions.h
//  SFAdditions
//
//  Created by Skye on 7/14/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SFAdditions)

// Convenience Getters
- (CGPoint)position;
- (CGFloat)width;
- (CGFloat)height;
- (CGFloat)x;
- (CGFloat)y;

- (CGFloat)bottomY;
- (CGFloat)topY;

// Convenience Setters
- (void)setPosition:(CGPoint)position;
- (void)setSize:(CGSize)size;
- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;

// Customization on current views
+ (void)roundCorners:(UIRectCorner)corners forView:(UIView*)view withRadius:(CGFloat)radius;

// Custom view creation
+ (UIView*)circleWithinRect:(CGRect)rect fillColor:(UIColor*)fillColor strokeColor:(UIColor*)strokeColor;

@end
