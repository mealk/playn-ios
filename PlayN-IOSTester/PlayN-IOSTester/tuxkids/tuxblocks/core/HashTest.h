//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/HashTest.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreHashTest_H_
#define _TuxkidsTuxblocksCoreHashTest_H_

@class TuxkidsTuxblocksCoreUtilsHashCode;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/utils/HashCode.h"

@interface TuxkidsTuxblocksCoreHashTest : NSObject < TuxkidsTuxblocksCoreUtilsHashCode_Hashable > {
 @public
  int foo_;
  NSString *bar_;
}

@property (nonatomic, assign) int foo;
@property (nonatomic, copy) NSString *bar;

- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode;
+ (void)test;
- (id)init;
@end

#endif // _TuxkidsTuxblocksCoreHashTest_H_
