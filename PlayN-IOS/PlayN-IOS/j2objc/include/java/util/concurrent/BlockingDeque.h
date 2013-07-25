//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/concurrent/BlockingDeque.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaUtilConcurrentBlockingDeque_H_
#define _JavaUtilConcurrentBlockingDeque_H_

@class JavaUtilConcurrentTimeUnitEnum;
@protocol JavaUtilIterator;

#import "JreEmulation.h"
#include "java/util/Deque.h"
#include "java/util/concurrent/BlockingQueue.h"

@protocol JavaUtilConcurrentBlockingDeque < JavaUtilConcurrentBlockingQueue, JavaUtilDeque, NSObject, JavaObject >
- (void)addFirstWithId:(id)e;
- (void)addLastWithId:(id)e;
- (BOOL)offerFirstWithId:(id)e;
- (BOOL)offerLastWithId:(id)e;
- (void)putFirstWithId:(id)e;
- (void)putLastWithId:(id)e;
- (BOOL)offerFirstWithId:(id)e
             withLongInt:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (BOOL)offerLastWithId:(id)e
            withLongInt:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (id)takeFirst;
- (id)takeLast;
- (id)pollFirstWithLongInt:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (id)pollLastWithLongInt:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (BOOL)removeFirstOccurrenceWithId:(id)o;
- (BOOL)removeLastOccurrenceWithId:(id)o;
- (BOOL)addWithId:(id)e;
- (BOOL)offerWithId:(id)e;
- (void)putWithId:(id)e;
- (BOOL)offerWithId:(id)e
        withLongInt:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (id)remove;
- (id)poll;
- (id)take;
- (id)pollWithLongInt:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (id)element;
- (id)peek;
- (BOOL)removeWithId:(id)o;
- (BOOL)containsWithId:(id)o;
- (int)size;
- (id<JavaUtilIterator>)iterator;
- (void)pushWithId:(id)e;
@end

#endif // _JavaUtilConcurrentBlockingDeque_H_
