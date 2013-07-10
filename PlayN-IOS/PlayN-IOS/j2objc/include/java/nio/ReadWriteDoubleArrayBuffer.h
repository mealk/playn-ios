//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteDoubleArrayBuffer.java
//
//  Created by tball on 6/22/13.
//

@class IOSDoubleArray;
@class JavaNioDoubleBuffer;

#import "JreEmulation.h"
#import "java/nio/DoubleArrayBuffer.h"

@interface JavaNioReadWriteDoubleArrayBuffer : JavaNioDoubleArrayBuffer {
}

+ (JavaNioReadWriteDoubleArrayBuffer *)copy__WithJavaNioDoubleArrayBuffer:(JavaNioDoubleArrayBuffer *)other
                                                                  withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithJavaLangDoubleArray:(IOSDoubleArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
withJavaLangDoubleArray:(IOSDoubleArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioDoubleBuffer *)asReadOnlyBuffer;
- (JavaNioDoubleBuffer *)compact;
- (JavaNioDoubleBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSDoubleArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioDoubleBuffer *)putWithDouble:(double)c;
- (JavaNioDoubleBuffer *)putWithInt:(int)index
                         withDouble:(double)c;
- (JavaNioDoubleBuffer *)putWithJavaLangDoubleArray:(IOSDoubleArray *)src
                                            withInt:(int)off
                                            withInt:(int)len;
- (JavaNioDoubleBuffer *)slice;
@end
