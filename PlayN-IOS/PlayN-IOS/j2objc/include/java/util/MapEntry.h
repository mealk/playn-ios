//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/MapEntry.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaUtilMapEntry_H_
#define _JavaUtilMapEntry_H_

#import "JreEmulation.h"
#include "java/util/Map.h"

@interface JavaUtilMapEntry : NSObject < JavaUtilMap_Entry, NSCopying > {
 @public
  id key_;
  id value_;
}

@property (nonatomic, retain) id key;
@property (nonatomic, retain) id value;

- (id)initWithId:(id)theKey;
- (id)initWithId:(id)theKey
          withId:(id)theValue;
- (id)clone;
- (BOOL)isEqual:(id)object;
- (id)getKey;
- (id)getValue;
- (NSUInteger)hash;
- (id)setValueWithId:(id)object;
- (NSString *)description;
- (id)copyWithZone:(NSZone *)zone;
@end

@protocol JavaUtilMapEntry_Type < NSObject, JavaObject >
- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry;
@end

#endif // _JavaUtilMapEntry_H_
