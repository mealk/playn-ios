//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/CharArrayBuffer.java
//
//  Created by tball on 7/9/13.
//

#ifndef _JavaNioCharArrayBuffer_H_
#define _JavaNioCharArrayBuffer_H_

@class IOSCharArray;
@class JavaNioByteOrder;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"
#include "java/nio/CharBuffer.h"

@interface JavaNioCharArrayBuffer : JavaNioCharBuffer {
 @public
  IOSCharArray *backingArray_;
  int offset_;
}

@property (nonatomic, retain) IOSCharArray *backingArray;
@property (nonatomic, assign) int offset;

- (id)initWithCharArray:(IOSCharArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
    withCharArray:(IOSCharArray *)backingArray
          withInt:(int)offset;
- (unichar)get;
- (unichar)getWithInt:(int)index;
- (JavaNioCharBuffer *)getWithCharArray:(IOSCharArray *)dest
                                withInt:(int)off
                                withInt:(int)len;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end;
- (NSString *)sequenceDescription;
@end

#endif // _JavaNioCharArrayBuffer_H_
