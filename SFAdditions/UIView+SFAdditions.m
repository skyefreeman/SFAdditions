//
//  UIView+SFAdditions.m
//  SFAdditions
//
//  Created by Skye on 7/14/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import "UIView+SFAdditions.h"

@implementation UIView (SFAdditions)

#pragma mark - Convenience getters
- (CGPoint)position {
    return self.frame.origin;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (CGFloat)bottomY {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)topY {
    return self.frame.origin.y;
}

#pragma mark - Convenience setters
- (void)setPosition:(CGPoint)position {
    self.frame = CGRectMake(position.x, position.y, self.width, self.height);
}

- (void)setSize:(CGSize)size {
    self.frame = CGRectMake(self.position.x, self.position.y, size.width, size.height);
}

- (void)setX:(CGFloat)x {
    self.frame = CGRectMake(x, self.position.y, self.width, self.height);
}

- (void)setY:(CGFloat)y {
    self.frame = CGRectMake(self.position.x, y, self.width, self.height);
}

+ (UIView*)circleWithinRect:(CGRect)rect fillColor:(UIColor*)fillColor strokeColor:(UIColor*)strokeColor {
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:rect];
    
    CAShapeLayer *shapelayer = [[CAShapeLayer alloc] init];
    shapelayer.fillColor = fillColor.CGColor;
    shapelayer.strokeColor = strokeColor.CGColor;
    shapelayer.path = circle.CGPath;
    
    UIView *circleView = [[UIView alloc] initWithFrame:rect];
    [circleView.layer addSublayer:shapelayer];
    return circleView;
}

#pragma mark - Customization
+ (void)roundCorners:(UIRectCorner)corners forView:(UIView*)view withRadius:(CGFloat)radius {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds
                                                   byRoundingCorners:corners
                                                         cornerRadii:CGSizeMake(radius, radius)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
    
    maskLayer = nil;
}

@end
