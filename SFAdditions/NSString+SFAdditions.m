//
//  NSString+SFAdditions.m
//
//  Created by Skye on 4/14/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import "NSString+SFAdditions.h"


@implementation NSString (SFAdditions)
- (BOOL)isNotEmptyString {
    return (self != nil) && ![self isEqual:@""];
}

- (BOOL)isEmptyString {
    return [self isEqual:@""] || self == nil;
}

+ (NSString*)stringWithoutNonDecimalCharacters:(NSString*)string {
    return [[string componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]] componentsJoinedByString:@""];
}

+ (NSString*)phoneNumberFormattedString:(NSString*)string {
    NSString *phoneNumber = [NSString stringWithoutNonDecimalCharacters:[NSString stringWithFormat:@"%@",string]];
    NSString *formattedPhoneNumber = [@"tel://" stringByAppendingString:phoneNumber];
    return formattedPhoneNumber;
}

#pragma mark - String Convenience
+ (NSString*)integerToString:(NSInteger)integerNum {
    return [NSString stringWithFormat:@"%lu",(long)integerNum];
}

+ (NSString*)CGFloatToString:(CGFloat)floatNum {
    return [NSString stringWithFormat:@"%fl",floatNum];
}

+ (NSString*)intToString:(int)intNum {
    return [NSString stringWithFormat:@"%d",intNum];
}

#pragma mark - Text Parsing
+ (NSString*)stringForFileName:(NSString*)fileName ofType:(NSString*)fileType {
    return [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:fileName ofType:fileType] usedEncoding:nil error:nil];
}

@end
