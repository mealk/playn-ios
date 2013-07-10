//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Vector4.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSDoubleArray;
@class JavaNioDoubleBuffer;
@protocol PythagorasDIMatrix4;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "pythagoras/d/IVector4.h"

@interface PythagorasDVector4 : NSObject < PythagorasDIVector4, JavaIoSerializable > {
 @public
  double x__, y__, z__, w__;
}

@property (nonatomic, assign) double x_;
@property (nonatomic, assign) double y_;
@property (nonatomic, assign) double z_;
@property (nonatomic, assign) double w_;

- (id)initWithDouble:(double)x
          withDouble:(double)y
          withDouble:(double)z
          withDouble:(double)w;
- (id)initWithJavaLangDoubleArray:(IOSDoubleArray *)values;
- (id)initWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)buf;
- (id)initWithPythagorasDIVector4:(id<PythagorasDIVector4>)other;
- (id)init;
- (PythagorasDVector4 *)setWithPythagorasDIVector4:(id<PythagorasDIVector4>)other;
- (PythagorasDVector4 *)setWithJavaLangDoubleArray:(IOSDoubleArray *)values;
- (PythagorasDVector4 *)setWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)buf;
- (PythagorasDVector4 *)setWithDouble:(double)x
                           withDouble:(double)y
                           withDouble:(double)z
                           withDouble:(double)w;
- (PythagorasDVector4 *)negateLocal;
- (PythagorasDVector4 *)absLocal;
- (PythagorasDVector4 *)multLocalWithDouble:(double)v;
- (PythagorasDVector4 *)multLocalWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix;
- (double)x;
- (double)y;
- (double)z;
- (double)w;
- (JavaNioDoubleBuffer *)getWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)buf;
- (BOOL)epsilonEqualsWithPythagorasDIVector4:(id<PythagorasDIVector4>)other
                                  withDouble:(double)epsilon;
- (PythagorasDVector4 *)negate;
- (PythagorasDVector4 *)negateWithPythagorasDVector4:(PythagorasDVector4 *)result;
- (PythagorasDVector4 *)abs;
- (PythagorasDVector4 *)absWithPythagorasDVector4:(PythagorasDVector4 *)result;
- (PythagorasDVector4 *)multWithDouble:(double)v;
- (PythagorasDVector4 *)multWithDouble:(double)v
                withPythagorasDVector4:(PythagorasDVector4 *)result;
- (PythagorasDVector4 *)multWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix;
- (PythagorasDVector4 *)multWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix
                             withPythagorasDVector4:(PythagorasDVector4 *)result;
- (NSString *)description;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)other;
@end
