//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/LongArrayBuffer.java
//
//  Created by tball on 6/22/13.
//

@class IOSLongArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#import "java/nio/LongBuffer.h"

@interface JavaNioLongArrayBuffer : JavaNioLongBuffer {
 @public
  IOSLongArray *backingArray_;
  int offset_;
}

@property (nonatomic, retain) IOSLongArray *backingArray;
@property (nonatomic, assign) int offset;

- (id)initWithJavaLangLongArray:(IOSLongArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
withJavaLangLongArray:(IOSLongArray *)backingArray
          withInt:(int)offset;
- (long long int)get;
- (long long int)getWithInt:(int)index;
- (JavaNioLongBuffer *)getWithJavaLangLongArray:(IOSLongArray *)dest
                                        withInt:(int)off
                                        withInt:(int)len;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
@end
