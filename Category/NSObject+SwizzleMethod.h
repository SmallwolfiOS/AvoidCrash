//
//  NSObject+SwizzleMethod.h
//  AvoidCrash
//
//  Created by Apple on 2019/6/4.
//  Copyright © 2019 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SwizzleMethod)

/**
 *  对系统方法进行替换(交换实例方法)
 */
+ (void)ac_swizzleSelector:(SEL)systemSelector swizzledSelector:(SEL)swizzledSelector;

@end

NS_ASSUME_NONNULL_END
