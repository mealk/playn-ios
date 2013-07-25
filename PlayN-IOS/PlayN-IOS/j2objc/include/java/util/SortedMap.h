//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/SortedMap.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaUtilSortedMap_H_
#define _JavaUtilSortedMap_H_

@protocol JavaUtilComparator;

#import "JreEmulation.h"
#include "java/util/Map.h"

@protocol JavaUtilSortedMap < JavaUtilMap, NSObject, JavaObject >
- (id<JavaUtilComparator>)comparator;
- (id)firstKey;
- (id<JavaUtilSortedMap>)headMapWithId:(id)endKey;
- (id)lastKey;
- (id<JavaUtilSortedMap>)subMapWithId:(id)startKey
                               withId:(id)endKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)startKey;
@end

#endif // _JavaUtilSortedMap_H_
