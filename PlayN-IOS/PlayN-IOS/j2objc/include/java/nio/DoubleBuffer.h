//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/DoubleBuffer.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaNioDoubleBuffer_H_
#define _JavaNioDoubleBuffer_H_

@class IOSDoubleArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#include "java/lang/Comparable.h"
#include "java/nio/Buffer.h"

@interface JavaNioDoubleBuffer : JavaNioBuffer < JavaLangComparable > {
}

+ (JavaNioDoubleBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioDoubleBuffer *)wrapWithDoubleArray:(IOSDoubleArray *)array;
+ (JavaNioDoubleBuffer *)wrapWithDoubleArray:(IOSDoubleArray *)array
                                     withInt:(int)start
                                     withInt:(int)len;
- (id)initWithInt:(int)capacity;
- (IOSDoubleArray *)array;
- (int)arrayOffset;
- (JavaNioDoubleBuffer *)asReadOnlyBuffer;
- (JavaNioDoubleBuffer *)compact;
- (int)compareToWithId:(JavaNioDoubleBuffer *)otherBuffer;
- (JavaNioDoubleBuffer *)duplicate;
- (BOOL)isEqual:(id)other;
- (double)get;
- (JavaNioDoubleBuffer *)getWithDoubleArray:(IOSDoubleArray *)dest;
- (JavaNioDoubleBuffer *)getWithDoubleArray:(IOSDoubleArray *)dest
                                    withInt:(int)off
                                    withInt:(int)len;
- (double)getWithInt:(int)index;
- (BOOL)hasArray;
- (NSUInteger)hash;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (IOSDoubleArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioDoubleBuffer *)putWithDouble:(double)d;
- (JavaNioDoubleBuffer *)putWithDoubleArray:(IOSDoubleArray *)src;
- (JavaNioDoubleBuffer *)putWithDoubleArray:(IOSDoubleArray *)src
                                    withInt:(int)off
                                    withInt:(int)len;
- (JavaNioDoubleBuffer *)putWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)src;
- (JavaNioDoubleBuffer *)putWithInt:(int)index
                         withDouble:(double)d;
- (JavaNioDoubleBuffer *)slice;
- (NSString *)description;
@end

#endif // _JavaNioDoubleBuffer_H_
