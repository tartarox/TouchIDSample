//
//  ViewController.m
//  TouchIDSample
//
//  Created by Fabio Yudi Takahara on 25/05/15.
//  Copyright (c) 2015 Fabio Yudi Takahara. All rights reserved.
//

#import "ViewController.h"
#import <LocalAuthentication/LocalAuthentication.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    TouchIDClass *touchClass = [[TouchIDClass alloc]init];
    touchClass.delegate = self;
    [touchClass startAutentication];
}

- (void) autenticationResponse:(BOOL)response {

    dispatch_async(dispatch_get_main_queue(), ^{
        NSString *textString = [NSString stringWithFormat:@"Deu certo? %i", response];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"wut" message:textString delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
