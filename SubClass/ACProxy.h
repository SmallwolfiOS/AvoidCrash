//
//  ACProxy.h
//  AvoidCrash
//
//  Created by Apple on 2019/6/4.
//  Copyright © 2019 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ACProxy : NSProxy

@property (nonatomic,weak) id obj;

@end

NS_ASSUME_NONNULL_END
