//
//  MyThread.h
//  textPthread
//
//  Created by Admin on 11.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyThread : NSThread

@property (nonatomic) long result;
@property (nonatomic) NSCondition *cond;
@property (nonatomic) BOOL isFin;

- (instancetype) initWithRange: (NSRange)range ofArray: (NSArray*)array;

@end
