//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Matrix3.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSDoubleArray;
@class JavaNioDoubleBuffer;
@class PythagorasDVector3;
@class PythagorasDVector;
@protocol PythagorasDIQuaternion;
@protocol PythagorasDIVector3;
@protocol PythagorasDIVector;

#import "JreEmulation.h"
#import "IMatrix3.h"
#import "java/io/Serializable.h"

@interface PythagorasDMatrix3 : NSObject < PythagorasDIMatrix3, JavaIoSerializable > {
 @public
  double m00__, m10__, m20__;
  double m01__, m11__, m21__;
  double m02__, m12__, m22__;
}

@property (nonatomic, assign) double m00_;
@property (nonatomic, assign) double m10_;
@property (nonatomic, assign) double m20_;
@property (nonatomic, assign) double m01_;
@property (nonatomic, assign) double m11_;
@property (nonatomic, assign) double m21_;
@property (nonatomic, assign) double m02_;
@property (nonatomic, assign) double m12_;
@property (nonatomic, assign) double m22_;

+ (PythagorasDMatrix3 *)IDENTITY;
- (id)initWithDouble:(double)m00
          withDouble:(double)m10
          withDouble:(double)m20
          withDouble:(double)m01
          withDouble:(double)m11
          withDouble:(double)m21
          withDouble:(double)m02
          withDouble:(double)m12
          withDouble:(double)m22;
- (id)initWithJavaLangDoubleArray:(IOSDoubleArray *)values;
- (id)initWithPythagorasDMatrix3:(PythagorasDMatrix3 *)other;
- (id)init;
- (void)setElementWithInt:(int)row
                  withInt:(int)col
               withDouble:(double)value;
- (void)setRowWithInt:(int)row
           withDouble:(double)x
           withDouble:(double)y
           withDouble:(double)z;
- (void)setRowWithInt:(int)row
withPythagorasDVector3:(PythagorasDVector3 *)v;
- (void)setColumnWithInt:(int)col
              withDouble:(double)x
              withDouble:(double)y
              withDouble:(double)z;
- (void)setColumnWithInt:(int)col
  withPythagorasDVector3:(PythagorasDVector3 *)v;
- (PythagorasDMatrix3 *)setToIdentity;
- (PythagorasDMatrix3 *)setToZero;
- (PythagorasDMatrix3 *)setToRotationWithPythagorasDIVector3:(id<PythagorasDIVector3>)from
                                     withPythagorasDIVector3:(id<PythagorasDIVector3>)to;
- (PythagorasDMatrix3 *)setToRotationWithDouble:(double)angle
                        withPythagorasDIVector3:(id<PythagorasDIVector3>)axis;
- (PythagorasDMatrix3 *)setToRotationWithDouble:(double)angle
                                     withDouble:(double)x
                                     withDouble:(double)y
                                     withDouble:(double)z;
- (PythagorasDMatrix3 *)setToRotationWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)quat;
- (PythagorasDMatrix3 *)setToScaleWithPythagorasDIVector3:(id<PythagorasDIVector3>)scale_;
- (PythagorasDMatrix3 *)setToScaleWithDouble:(double)s;
- (PythagorasDMatrix3 *)setToScaleWithDouble:(double)x
                                  withDouble:(double)y
                                  withDouble:(double)z;
- (PythagorasDMatrix3 *)setToReflectionWithPythagorasDIVector3:(id<PythagorasDIVector3>)normal;
- (PythagorasDMatrix3 *)setToReflectionWithDouble:(double)x
                                       withDouble:(double)y
                                       withDouble:(double)z;
- (PythagorasDMatrix3 *)setToTransformWithPythagorasDIVector:(id<PythagorasDIVector>)translation
                                                  withDouble:(double)rotation;
- (PythagorasDMatrix3 *)setToTransformWithPythagorasDIVector:(id<PythagorasDIVector>)translation
                                                  withDouble:(double)rotation
                                                  withDouble:(double)scale_;
- (PythagorasDMatrix3 *)setToTransformWithPythagorasDIVector:(id<PythagorasDIVector>)translation
                                                  withDouble:(double)rotation
                                      withPythagorasDIVector:(id<PythagorasDIVector>)scale_;
- (PythagorasDMatrix3 *)setToTranslationWithPythagorasDIVector:(id<PythagorasDIVector>)translation;
- (PythagorasDMatrix3 *)setToTranslationWithDouble:(double)x
                                        withDouble:(double)y;
- (PythagorasDMatrix3 *)setTranslationWithPythagorasDIVector:(id<PythagorasDIVector>)translation;
- (PythagorasDMatrix3 *)setTranslationWithDouble:(double)x
                                      withDouble:(double)y;
- (PythagorasDMatrix3 *)setToRotationWithDouble:(double)angle;
- (PythagorasDMatrix3 *)transposeLocal;
- (PythagorasDMatrix3 *)multLocalWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other;
- (PythagorasDMatrix3 *)addLocalWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other;
- (PythagorasDMatrix3 *)multAffineLocalWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other;
- (PythagorasDMatrix3 *)invertLocal;
- (PythagorasDMatrix3 *)invertAffineLocal;
- (PythagorasDMatrix3 *)lerpLocalWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                                              withDouble:(double)t;
- (PythagorasDMatrix3 *)lerpAffineLocalWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                                                    withDouble:(double)t;
- (PythagorasDMatrix3 *)setWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other;
- (PythagorasDMatrix3 *)setWithJavaLangDoubleArray:(IOSDoubleArray *)values;
- (PythagorasDMatrix3 *)setWithDouble:(double)m00
                           withDouble:(double)m10
                           withDouble:(double)m20
                           withDouble:(double)m01
                           withDouble:(double)m11
                           withDouble:(double)m21
                           withDouble:(double)m02
                           withDouble:(double)m12
                           withDouble:(double)m22;
- (double)m00;
- (double)m10;
- (double)m20;
- (double)m01;
- (double)m11;
- (double)m21;
- (double)m02;
- (double)m12;
- (double)m22;
- (double)elementWithInt:(int)row
                 withInt:(int)col;
- (void)getRowWithInt:(int)row
withPythagorasDVector3:(PythagorasDVector3 *)result;
- (void)getColumnWithInt:(int)col
  withPythagorasDVector3:(PythagorasDVector3 *)result;
- (PythagorasDMatrix3 *)transpose;
- (PythagorasDMatrix3 *)transposeWithPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (PythagorasDMatrix3 *)multWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other;
- (PythagorasDMatrix3 *)multWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                             withPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (PythagorasDMatrix3 *)addWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other;
- (PythagorasDMatrix3 *)addWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                            withPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (BOOL)isAffine;
- (PythagorasDMatrix3 *)multAffineWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other;
- (PythagorasDMatrix3 *)multAffineWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                                   withPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (PythagorasDMatrix3 *)invert;
- (PythagorasDMatrix3 *)invertWithPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (PythagorasDMatrix3 *)invertAffine;
- (PythagorasDMatrix3 *)invertAffineWithPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (PythagorasDMatrix3 *)lerpWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                                         withDouble:(double)t;
- (PythagorasDMatrix3 *)lerpWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                                         withDouble:(double)t
                             withPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (PythagorasDMatrix3 *)lerpAffineWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                                               withDouble:(double)t;
- (PythagorasDMatrix3 *)lerpAffineWithPythagorasDIMatrix3:(id<PythagorasDIMatrix3>)other
                                               withDouble:(double)t
                                   withPythagorasDMatrix3:(PythagorasDMatrix3 *)result;
- (JavaNioDoubleBuffer *)getWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)buf;
- (PythagorasDVector3 *)transformLocalWithPythagorasDVector3:(PythagorasDVector3 *)vector;
- (PythagorasDVector3 *)transformWithPythagorasDIVector3:(id<PythagorasDIVector3>)vector;
- (PythagorasDVector3 *)transformWithPythagorasDIVector3:(id<PythagorasDIVector3>)vector
                                  withPythagorasDVector3:(PythagorasDVector3 *)result;
- (PythagorasDVector *)transformPointLocalWithPythagorasDVector:(PythagorasDVector *)point;
- (PythagorasDVector *)transformPointWithPythagorasDIVector:(id<PythagorasDIVector>)point;
- (PythagorasDVector *)transformPointWithPythagorasDIVector:(id<PythagorasDIVector>)point
                                      withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)transformVectorLocalWithPythagorasDVector:(PythagorasDVector *)vector;
- (PythagorasDVector *)transformVectorWithPythagorasDIVector:(id<PythagorasDIVector>)vector;
- (PythagorasDVector *)transformVectorWithPythagorasDIVector:(id<PythagorasDIVector>)vector
                                       withPythagorasDVector:(PythagorasDVector *)result;
- (double)extractRotation;
- (PythagorasDVector *)extractScale;
- (PythagorasDVector *)extractScaleWithPythagorasDVector:(PythagorasDVector *)result;
- (double)approximateUniformScale;
- (NSString *)description;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)other;
@end
