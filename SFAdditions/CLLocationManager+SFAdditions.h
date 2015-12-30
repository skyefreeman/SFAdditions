//
//  CLLocationManager+SFAdditions.h
//
//  Created by Skye on 6/14/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@interface CLLocationManager (SFAdditions)

// DONT FORGET TO SET 'NSLocationWhenInUseUsageDescription' property in app target plist for location services to work :( 
- (void)requestLocationPermissionWithCompletion:(void(^)(BOOL succeeded))completion;

+ (UIAlertController*)userEnableLocationAlert;

@end
