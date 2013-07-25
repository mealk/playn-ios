//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/Buffers.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/nio/Buffer.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/ByteOrder.h"
#include "java/nio/FloatBuffer.h"
#include "java/nio/IntBuffer.h"
#include "java/nio/ShortBuffer.h"
#include "playn/core/util/Buffers.h"

@implementation PlaynCoreUtilBuffers

+ (JavaNioByteBuffer *)allocateNativeByteBufferWithInt:(int)size OBJC_METHOD_FAMILY_NONE {
  return [((JavaNioByteBuffer *) nil_chk([JavaNioByteBuffer allocateDirectWithInt:size])) orderWithJavaNioByteOrder:[JavaNioByteOrder nativeOrder]];
}

+ (JavaNioIntBuffer *)allocateNativeIntBufferWithInt:(int)size OBJC_METHOD_FAMILY_NONE {
//  return [((JavaNioByteBuffer *) nil_chk([PlaynCoreUtilBuffers allocateNativeByteBufferWithInt:size * 4])) asIntBuffer];
    return nil;
}

+ (JavaNioFloatBuffer *)allocateNativeFloatBufferWithInt:(int)size OBJC_METHOD_FAMILY_NONE {
//  return [((JavaNioByteBuffer *) nil_chk([PlaynCoreUtilBuffers allocateNativeByteBufferWithInt:size * 4])) asFloatBuffer];
    return nil;
}

+ (JavaNioShortBuffer *)allocateNativeShortBufferWithInt:(int)size OBJC_METHOD_FAMILY_NONE {
//  return [((JavaNioByteBuffer *) nil_chk([PlaynCoreUtilBuffers allocateNativeByteBufferWithInt:size * 2])) asShortBuffer];
    return nil;
}

+ (int)getElementSizeWithJavaNioBuffer:(JavaNioBuffer *)buffer {
  if (([buffer isKindOfClass:[JavaNioFloatBuffer class]]) || ([buffer isKindOfClass:[JavaNioIntBuffer class]])) {
    return 4;
  }
  else if ([buffer isKindOfClass:[JavaNioShortBuffer class]]) {
    return 2;
  }
  else if ([buffer isKindOfClass:[JavaNioByteBuffer class]]) {
    return 1;
  }
  else {
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Unrecognized buffer type: %@", [((JavaNioBuffer *) nil_chk(buffer)) getClass]]];
  }
}

+ (NSString *)toStringWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf {
  JavaLangStringBuilder *sb = [[JavaLangStringBuilder alloc] initWithNSString:@"["];
  int pos = [((JavaNioFloatBuffer *) nil_chk(buf)) position];
  int count = [((JavaNioFloatBuffer *) nil_chk(buf)) remaining];
  if (count > 100) {
    count = 100;
  }
  for (int i = 0; i < count; i++) {
    if (i > 0) {
      (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@", "];
    }
    (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithFloat:[((JavaNioFloatBuffer *) nil_chk(buf)) getWithInt:pos + i]];
  }
  if (count != [((JavaNioFloatBuffer *) nil_chk(buf)) remaining]) {
    (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@"..."];
  }
  (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@"]"];
  return [((JavaLangStringBuilder *) nil_chk(sb)) description];
}

+ (NSString *)toStringWithJavaNioShortBuffer:(JavaNioShortBuffer *)buf {
  JavaLangStringBuilder *sb = [[JavaLangStringBuilder alloc] initWithNSString:@"["];
  int pos = [((JavaNioShortBuffer *) nil_chk(buf)) position];
  int count = [((JavaNioShortBuffer *) nil_chk(buf)) remaining];
  if (count > 100) {
    count = 100;
  }
  for (int i = 0; i < count; i++) {
    if (i > 0) {
      (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@", "];
    }
    (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithInt:[((JavaNioShortBuffer *) nil_chk(buf)) getWithInt:pos + i]];
  }
  if (count != [((JavaNioShortBuffer *) nil_chk(buf)) remaining]) {
    (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@"..."];
  }
  (void) [((JavaLangStringBuilder *) nil_chk(sb)) appendWithNSString:@"]"];
  return [((JavaLangStringBuilder *) nil_chk(sb)) description];
}

- (id)init {
  return [super init];
}

@end
