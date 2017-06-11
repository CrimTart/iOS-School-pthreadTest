//
//  MyCondition.m
//  textPthread
//
//  Created by Admin on 11.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "MyCondition.h"
#import "MyThread.h"

@implementation MyCondition

- (bool) checkCondition:(NSMutableArray*) threads{
    bool result = true;
    for (MyThread *thread in threads) {
        result = result & thread.isFin;
    }
    return result;
}

@end
