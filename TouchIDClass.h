//
//  TouchIDClass.h
//  TouchIDSample
//
//  Created by Fabio Yudi Takahara on 25/05/15.
//  Copyright (c) 2015 Fabio Yudi Takahara. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TouchClassDelegate <NSObject>   //define delegate protocol
- (void) autenticationResponse:(BOOL)response;  //define delegate method to be implemented within another class
@end //end protocol

@interface TouchIDClass : NSObject
{
}

- (void)startAutentication;

@property (nonatomic, weak) id <TouchClassDelegate> delegate;

@end
