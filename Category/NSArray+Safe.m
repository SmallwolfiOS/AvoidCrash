//
//  NSArray+Safe.m
//  AvoidCrash
//
//  Created by Apple on 2019/6/4.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "NSArray+Safe.h"
#import "NSObject+SwizzleMethod.h"
#import <objc/runtime.h>
@implementation NSArray (Safe)
+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [objc_getClass("__NSArrayI") ac_swizzleSelector:@selector(objectAtIndex:) swizzledSelector:@selector(safe_objectAtIndex:)];
        [objc_getClass("__NSArrayI") ac_swizzleSelector:@selector(objectAtIndexedSubscript:) swizzledSelector:@selector(safe_objectAtIndexedSubscript:)];
    });
}
- (id)safe_objectAtIndex:(NSUInteger)index{
    if (index < self.count) {
        return [self safe_objectAtIndex:index];
    }else{
        NSLog(@" 你的 NSArray数组已经越界了 但是已经帮你处理好了  %ld   %ld", index, self.count);
        return nil;
    }
}
- (id)safe_objectAtIndexedSubscript:(NSUInteger)idx{
    if (idx < self.count) {
        return [self safe_objectAtIndexedSubscript:idx];
    }else{
        NSLog(@" 你的 NSArray数组已经越界了 但是已经帮你处理好了  %ld   %ld", idx, self.count);
        return nil;
    }
}
@end
