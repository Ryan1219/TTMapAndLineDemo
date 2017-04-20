//
//  CHKeychain.h
//  keyChainTest
//
//  Created by 通拓科技 on 16/4/25.
//  Copyright © 2016年 tomtop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>


@interface CHKeychain : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)delete:(NSString *)service;


@end
