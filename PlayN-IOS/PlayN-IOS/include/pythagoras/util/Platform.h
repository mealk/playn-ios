//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/util/Platform.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSByteArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;

#import "JreEmulation.h"

@interface PythagorasUtilPlatform : NSObject {
}

+ (int)hashCodeWithFloat:(float)f1;
+ (int)hashCodeWithDouble:(double)d1;
+ (IOSByteArray *)cloneWithJavaLangByteArray:(IOSByteArray *)values;
+ (IOSIntArray *)cloneWithJavaLangIntegerArray:(IOSIntArray *)values;
+ (IOSFloatArray *)cloneWithJavaLangFloatArray:(IOSFloatArray *)values;
+ (IOSDoubleArray *)cloneWithJavaLangDoubleArray:(IOSDoubleArray *)values;
- (id)init;
@end
