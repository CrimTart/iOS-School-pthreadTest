//
//  MyCondition.h
//  textPthread
//
//  Created by Admin on 11.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyCondition : NSCondition
-(bool) checkCondition: (NSMutableArray*) arrayThreads;
@end
