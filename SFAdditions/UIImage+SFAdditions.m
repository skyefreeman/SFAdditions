//
//  UIImage+SFAdditions.m
//  SFAdditions
//
//  Created by Skye on 7/7/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import "UIImage+SFAdditions.h"

@implementation UIImage (SFAdditions)

+ (UIImage*)imageWithColor:(UIColor *)color withSize:(CGSize)size withCornerRadius:(CGFloat)radius {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIGraphicsBeginImageContext(size);
    [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius] addClip];
    [image drawInRect:rect];
    image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage*)imageWithColor:(UIColor *)color withSize:(CGSize)size {
    return [UIImage imageWithColor:color withSize:size withCornerRadius:0];
}

- (void)setCorner

@end
