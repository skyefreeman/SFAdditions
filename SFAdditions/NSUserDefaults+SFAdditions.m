//
//  NSUserDefaults+SFAdditions.m
//  Taper
//
//  Created by Skye on 7/13/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import "NSUserDefaults+SFAdditions.h"

@implementation NSUserDefaults (SFAdditions)

+ (void)setObject:(id)object forKey:(NSString*)key {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:object forKey:key];
    [defaults synchronize];
}

+ (id)getObjectForKey:(NSString*)key {
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+ (void)setBool:(BOOL)theBool withKey:(NSString*)key {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:theBool forKey:key];
    [defaults synchronize];
}

+ (void)setCustomObject:(id)object forKey:(NSString*)key {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:object];
    [defaults setObject:data forKey:key];
    [defaults synchronize];
}

+ (id)getCustomObjectForKey:(NSString*)key {
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

+ (BOOL)getBoolForKey:(NSString*)key {
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

@end
