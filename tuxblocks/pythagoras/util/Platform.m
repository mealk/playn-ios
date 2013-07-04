//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/util/Platform.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSByteArray.h"
#import "IOSDoubleArray.h"
#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "java/lang/Double.h"
#import "java/lang/Float.h"
#import "Platform.h"

@implementation PythagorasUtilPlatform

+ (int)hashCodeWithFloat:(float)f1 {
  return [JavaLangFloat floatToIntBitsWithFloat:f1];
}

+ (int)hashCodeWithDouble:(double)d1 {
  long long int bits = [JavaLangDouble doubleToLongBitsWithDouble:d1];
  return (int) (bits ^ ((long long) (((unsigned long long) bits) >> 32)));
}

+ (IOSByteArray *)cloneWithJavaLangByteArray:(IOSByteArray *)values {
  return [((IOSByteArray *) NIL_CHK(values)) clone];
}

+ (IOSIntArray *)cloneWithJavaLangIntegerArray:(IOSIntArray *)values {
  return [((IOSIntArray *) NIL_CHK(values)) clone];
}

+ (IOSFloatArray *)cloneWithJavaLangFloatArray:(IOSFloatArray *)values {
  return [((IOSFloatArray *) NIL_CHK(values)) clone];
}

+ (IOSDoubleArray *)cloneWithJavaLangDoubleArray:(IOSDoubleArray *)values {
  return [((IOSDoubleArray *) NIL_CHK(values)) clone];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
