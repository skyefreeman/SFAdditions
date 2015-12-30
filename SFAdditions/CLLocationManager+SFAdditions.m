//
//  CLLocationManager+SFAdditions.m
//
//  Created by Skye on 6/14/15.
//  Copyright (c) 2015 Skye Freeman. All rights reserved.
//

#import "CLLocationManager+SFAdditions.h"

@implementation CLLocationManager (SFAdditions)
- (void)requestLocationPermissionWithCompletion:(void(^)(BOOL succeeded))completion {
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    
    if (status == kCLAuthorizationStatusDenied) {
        if (completion) {
            completion(NO);
        }
    }
    
    else if (status == kCLAuthorizationStatusNotDetermined) {
        [self requestWhenInUseAuthorization];
    }
    
    else if (status == kCLAuthorizationStatusAuthorizedWhenInUse) {
        if (completion) {
            completion(YES);
        }
    }
}

#pragma mark - Enable User Location Manager Alert Actions
+ (UIAlertController*)userEnableLocationAlert {
    // Create Alert Actions
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {}];
    UIAlertAction *settingsAction = [UIAlertAction actionWithTitle:@"Settings" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSURL *settingsURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:settingsURL];
    }];

    NSArray *alertActions = [NSArray arrayWithObjects:settingsAction,cancelAction, nil];
    
    // Define Alert title and message
    NSString *title = @"Background Services Not Enabled";
    
    NSString *message = @"To enabled location services please turn on 'When in use' in the location services settings. Would you like to change it now?";
    
    // Create an alert and attach actions
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    for (UIAlertAction *action in alertActions) {
        [alert addAction:action];
    }
    return alert;
}

@end
