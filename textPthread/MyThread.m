//
//  MyThread.m
//  textPthread
//
//  Created by Admin on 11.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "MyThread.h"

@interface MyThread()

@property (nonatomic) NSRange range;
@property (readonly) NSArray *array;

@end

@implementation MyThread

- (instancetype) initWithRange:(NSRange)range ofArray:(NSArray*)array{
    self = [super init];
    if (self){
        _array = array;
        _range = range;
        _isFin = NO;
    }
    return self;
}

-(void) main {
    _result = 0;
    for (NSUInteger i=_range.location; i<(_range.location+_range.length);++i) {
        _result = _result + [_array[i] integerValue];
    }
    [_cond lock];
    _isFin = YES;
    [_cond signal];
    [_cond unlock];
}

@end
