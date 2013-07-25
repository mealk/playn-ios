//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyLongArrayBuffer.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaNioReadOnlyLongArrayBuffer_H_
#define _JavaNioReadOnlyLongArrayBuffer_H_

@class IOSLongArray;
@class JavaNioLongBuffer;

#import "JreEmulation.h"
#include "java/nio/LongArrayBuffer.h"

@interface JavaNioReadOnlyLongArrayBuffer : JavaNioLongArrayBuffer {
}

+ (JavaNioReadOnlyLongArrayBuffer *)copy__WithJavaNioLongArrayBuffer:(JavaNioLongArrayBuffer *)other
                                                             withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithInt:(int)capacity
    withLongArray:(IOSLongArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioLongBuffer *)asReadOnlyBuffer;
- (JavaNioLongBuffer *)compact;
- (JavaNioLongBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSLongArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioLongBuffer *)putWithLongInt:(long long int)c;
- (JavaNioLongBuffer *)putWithInt:(int)index
                      withLongInt:(long long int)c;
- (JavaNioLongBuffer *)putWithJavaNioLongBuffer:(JavaNioLongBuffer *)buf;
- (JavaNioLongBuffer *)putWithLongArray:(IOSLongArray *)src
                                withInt:(int)off
                                withInt:(int)len;
- (JavaNioLongBuffer *)slice;
@end

#endif // _JavaNioReadOnlyLongArrayBuffer_H_
