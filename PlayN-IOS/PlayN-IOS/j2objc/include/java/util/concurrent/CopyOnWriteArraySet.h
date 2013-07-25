//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/concurrent/CopyOnWriteArraySet.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaUtilConcurrentCopyOnWriteArraySet_H_
#define _JavaUtilConcurrentCopyOnWriteArraySet_H_

@class IOSObjectArray;
@class JavaUtilConcurrentCopyOnWriteArrayList;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/util/AbstractSet.h"

#define JavaUtilConcurrentCopyOnWriteArraySet_serialVersionUID 5457747651344034263

@interface JavaUtilConcurrentCopyOnWriteArraySet : JavaUtilAbstractSet < JavaIoSerializable > {
 @public
  JavaUtilConcurrentCopyOnWriteArrayList *al_;
}

@property (nonatomic, retain) JavaUtilConcurrentCopyOnWriteArrayList *al;

- (id)init;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (int)size;
- (BOOL)isEmpty;
- (BOOL)containsWithId:(id)o;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)a;
- (void)clear;
- (BOOL)removeWithId:(id)o;
- (BOOL)addWithId:(id)e;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (id<JavaUtilIterator>)iterator;
- (BOOL)isEqual:(id)o;
+ (BOOL)eqWithId:(id)o1
          withId:(id)o2;
@end

#endif // _JavaUtilConcurrentCopyOnWriteArraySet_H_
