//
//  UIButton+SFAdditions.h
//  SFAdditions
//
//  Created by Skye on 8/10/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (SFAdditions)
+ (UIButton*)customButtonWithTitle:(NSString*)theTitle
                             image:(UIImage*)theImage
                           spacing:(CGFloat)spacing;
@end
