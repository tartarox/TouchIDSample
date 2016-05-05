//
//  TouchIDClass.m
//  TouchIDSample
//
//  Created by Fabio Yudi Takahara on 25/05/15.
//  Copyright (c) 2015 Fabio Yudi Takahara. All rights reserved.
//

#import "TouchIDClass.h"
#import <LocalAuthentication/LocalAuthentication.h>

@implementation TouchIDClass

- (void)startAutentication {
    
    LAContext *myContext = [[LAContext alloc] init];
    NSError *authError = nil;
    NSString *myLocalizedReasonString = @"Touch ID Test to show Touch ID working in a custom app";
    
    if ([myContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&authError]) {
        [myContext evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                  localizedReason:myLocalizedReasonString
                            reply:^(BOOL success, NSError *error) {
                                [self returnOfAutentication:success];
                            }];
    } else {
        [self returnOfAutentication:NO];
    }
}

- (void)returnOfAutentication:(BOOL)boolean {
    
    if ([_delegate respondsToSelector:@selector(autenticationResponse:)])
        [_delegate autenticationResponse:boolean];
}


@end
