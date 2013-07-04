//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Matrix4.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSFloatArray;
@class IOSObjectArray;
@class JavaNioFloatBuffer;
@class PythagorasFMatrix3;
@class PythagorasFQuaternion;
@class PythagorasFVector3;
@class PythagorasFVector4;
@protocol PythagorasFIMatrix3;
@protocol PythagorasFIPlane;
@protocol PythagorasFIQuaternion;
@protocol PythagorasFIVector3;
@protocol PythagorasFIVector4;

#import "JreEmulation.h"
#import "IMatrix4.h"
#import "java/io/Serializable.h"

@interface PythagorasFMatrix4 : NSObject < PythagorasFIMatrix4, JavaIoSerializable > {
 @public
  float m00__, m10__, m20__, m30__;
  float m01__, m11__, m21__, m31__;
  float m02__, m12__, m22__, m32__;
  float m03__, m13__, m23__, m33__;
}

@property (nonatomic, assign) float m00_;
@property (nonatomic, assign) float m10_;
@property (nonatomic, assign) float m20_;
@property (nonatomic, assign) float m30_;
@property (nonatomic, assign) float m01_;
@property (nonatomic, assign) float m11_;
@property (nonatomic, assign) float m21_;
@property (nonatomic, assign) float m31_;
@property (nonatomic, assign) float m02_;
@property (nonatomic, assign) float m12_;
@property (nonatomic, assign) float m22_;
@property (nonatomic, assign) float m32_;
@property (nonatomic, assign) float m03_;
@property (nonatomic, assign) float m13_;
@property (nonatomic, assign) float m23_;
@property (nonatomic, assign) float m33_;

+ (id<PythagorasFIMatrix4>)IDENTITY;
+ (IOSObjectArray *)EMPTY_ARRAY;
- (id)initWithFloat:(float)m00
          withFloat:(float)m10
          withFloat:(float)m20
          withFloat:(float)m30
          withFloat:(float)m01
          withFloat:(float)m11
          withFloat:(float)m21
          withFloat:(float)m31
          withFloat:(float)m02
          withFloat:(float)m12
          withFloat:(float)m22
          withFloat:(float)m32
          withFloat:(float)m03
          withFloat:(float)m13
          withFloat:(float)m23
          withFloat:(float)m33;
- (id)initWithJavaLangFloatArray:(IOSFloatArray *)values;
- (id)initWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf;
- (id)initWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (id)init;
- (PythagorasFMatrix4 *)setToIdentity;
- (PythagorasFMatrix4 *)setToZero;
- (PythagorasFMatrix4 *)setToTransformWithPythagorasFIVector3:(id<PythagorasFIVector3>)translation
                                   withPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)rotation;
- (PythagorasFMatrix4 *)setToTransformWithPythagorasFIVector3:(id<PythagorasFIVector3>)translation
                                   withPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)rotation
                                                    withFloat:(float)scale_;
- (PythagorasFMatrix4 *)setToTransformWithPythagorasFIVector3:(id<PythagorasFIVector3>)translation
                                   withPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)rotation
                                      withPythagorasFIVector3:(id<PythagorasFIVector3>)scale_;
- (PythagorasFMatrix4 *)setToTranslationWithPythagorasFIVector3:(id<PythagorasFIVector3>)translation;
- (PythagorasFMatrix4 *)setToTranslationWithFloat:(float)x
                                        withFloat:(float)y
                                        withFloat:(float)z;
- (PythagorasFMatrix4 *)setTranslationWithPythagorasFIVector3:(id<PythagorasFIVector3>)translation;
- (PythagorasFMatrix4 *)setTranslationWithFloat:(float)x
                                      withFloat:(float)y
                                      withFloat:(float)z;
- (PythagorasFMatrix4 *)setToRotationWithPythagorasFIVector3:(id<PythagorasFIVector3>)from
                                     withPythagorasFIVector3:(id<PythagorasFIVector3>)to;
- (PythagorasFMatrix4 *)setToRotationWithFloat:(float)angle
                       withPythagorasFIVector3:(id<PythagorasFIVector3>)axis;
- (PythagorasFMatrix4 *)setToRotationWithFloat:(float)angle
                                     withFloat:(float)x
                                     withFloat:(float)y
                                     withFloat:(float)z;
- (PythagorasFMatrix4 *)setToRotationWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)quat;
- (PythagorasFMatrix4 *)setToRotationScaleWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)rotScale;
- (PythagorasFMatrix4 *)setToScaleWithPythagorasFIVector3:(id<PythagorasFIVector3>)scale_;
- (PythagorasFMatrix4 *)setToScaleWithFloat:(float)s;
- (PythagorasFMatrix4 *)setToScaleWithFloat:(float)x
                                  withFloat:(float)y
                                  withFloat:(float)z;
- (PythagorasFMatrix4 *)setToReflectionWithPythagorasFIVector3:(id<PythagorasFIVector3>)normal;
- (PythagorasFMatrix4 *)setToReflectionWithFloat:(float)x
                                       withFloat:(float)y
                                       withFloat:(float)z;
- (PythagorasFMatrix4 *)setToReflectionWithPythagorasFIPlane:(id<PythagorasFIPlane>)plane;
- (PythagorasFMatrix4 *)setToReflectionWithPythagorasFIVector3:(id<PythagorasFIVector3>)normal
                                                     withFloat:(float)constant;
- (PythagorasFMatrix4 *)setToReflectionWithFloat:(float)x
                                       withFloat:(float)y
                                       withFloat:(float)z
                                       withFloat:(float)w;
- (PythagorasFMatrix4 *)setToSkewWithPythagorasFIPlane:(id<PythagorasFIPlane>)plane
                               withPythagorasFIVector3:(id<PythagorasFIVector3>)amount;
- (PythagorasFMatrix4 *)setToSkewWithPythagorasFIVector3:(id<PythagorasFIVector3>)normal
                                               withFloat:(float)constant
                                 withPythagorasFIVector3:(id<PythagorasFIVector3>)amount;
- (PythagorasFMatrix4 *)setToSkewWithFloat:(float)a
                                 withFloat:(float)b
                                 withFloat:(float)c
                                 withFloat:(float)d
                                 withFloat:(float)x
                                 withFloat:(float)y
                                 withFloat:(float)z;
- (PythagorasFMatrix4 *)setToPerspectiveWithFloat:(float)fovy
                                        withFloat:(float)aspect
                                        withFloat:(float)near
                                        withFloat:(float)far;
- (PythagorasFMatrix4 *)setToFrustumWithFloat:(float)left
                                    withFloat:(float)right
                                    withFloat:(float)bottom
                                    withFloat:(float)top
                                    withFloat:(float)near
                                    withFloat:(float)far;
- (PythagorasFMatrix4 *)setToFrustumWithFloat:(float)left
                                    withFloat:(float)right
                                    withFloat:(float)bottom
                                    withFloat:(float)top
                                    withFloat:(float)near
                                    withFloat:(float)far
                      withPythagorasFIVector3:(id<PythagorasFIVector3>)nearFarNormal;
- (PythagorasFMatrix4 *)setToOrthoWithFloat:(float)left
                                  withFloat:(float)right
                                  withFloat:(float)bottom
                                  withFloat:(float)top
                                  withFloat:(float)near
                                  withFloat:(float)far;
- (PythagorasFMatrix4 *)setToOrthoWithFloat:(float)left
                                  withFloat:(float)right
                                  withFloat:(float)bottom
                                  withFloat:(float)top
                                  withFloat:(float)near
                                  withFloat:(float)far
                    withPythagorasFIVector3:(id<PythagorasFIVector3>)nearFarNormal;
- (PythagorasFMatrix4 *)setWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (PythagorasFMatrix4 *)setWithJavaLangFloatArray:(IOSFloatArray *)values;
- (PythagorasFMatrix4 *)setWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf;
- (PythagorasFMatrix4 *)setWithFloat:(float)m00
                           withFloat:(float)m10
                           withFloat:(float)m20
                           withFloat:(float)m30
                           withFloat:(float)m01
                           withFloat:(float)m11
                           withFloat:(float)m21
                           withFloat:(float)m31
                           withFloat:(float)m02
                           withFloat:(float)m12
                           withFloat:(float)m22
                           withFloat:(float)m32
                           withFloat:(float)m03
                           withFloat:(float)m13
                           withFloat:(float)m23
                           withFloat:(float)m33;
- (PythagorasFMatrix4 *)transposeLocal;
- (PythagorasFMatrix4 *)multLocalWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (PythagorasFMatrix4 *)multAffineLocalWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (PythagorasFMatrix4 *)invertLocal;
- (PythagorasFMatrix4 *)invertAffineLocal;
- (PythagorasFMatrix4 *)lerpLocalWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                               withFloat:(float)t;
- (PythagorasFMatrix4 *)lerpAffineLocalWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                                     withFloat:(float)t;
- (float)m00;
- (float)m10;
- (float)m20;
- (float)m30;
- (float)m01;
- (float)m11;
- (float)m21;
- (float)m31;
- (float)m02;
- (float)m12;
- (float)m22;
- (float)m32;
- (float)m03;
- (float)m13;
- (float)m23;
- (float)m33;
- (PythagorasFMatrix4 *)transpose;
- (PythagorasFMatrix4 *)transposeWithPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)multWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (PythagorasFMatrix4 *)multWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                             withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (BOOL)isAffine;
- (BOOL)isMirrored;
- (PythagorasFMatrix4 *)multAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other;
- (PythagorasFMatrix4 *)multAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                   withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)invert;
- (PythagorasFMatrix4 *)invertWithPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)invertAffine;
- (PythagorasFMatrix4 *)invertAffineWithPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)lerpWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                          withFloat:(float)t;
- (PythagorasFMatrix4 *)lerpWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                          withFloat:(float)t
                             withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (PythagorasFMatrix4 *)lerpAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                                withFloat:(float)t;
- (PythagorasFMatrix4 *)lerpAffineWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                                withFloat:(float)t
                                   withPythagorasFMatrix4:(PythagorasFMatrix4 *)result;
- (JavaNioFloatBuffer *)getWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf;
- (PythagorasFVector3 *)projectPointLocalWithPythagorasFVector3:(PythagorasFVector3 *)point;
- (PythagorasFVector3 *)projectPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point;
- (PythagorasFVector3 *)projectPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point
                                     withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector3 *)transformPointLocalWithPythagorasFVector3:(PythagorasFVector3 *)point;
- (PythagorasFVector3 *)transformPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point;
- (PythagorasFVector3 *)transformPointWithPythagorasFIVector3:(id<PythagorasFIVector3>)point
                                       withPythagorasFVector3:(PythagorasFVector3 *)result;
- (float)transformPointZWithPythagorasFIVector3:(id<PythagorasFIVector3>)point;
- (PythagorasFVector3 *)transformVectorLocalWithPythagorasFVector3:(PythagorasFVector3 *)vector;
- (PythagorasFVector3 *)transformVectorWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector;
- (PythagorasFVector3 *)transformVectorWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                        withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector4 *)transformWithPythagorasFIVector4:(id<PythagorasFIVector4>)vector;
- (PythagorasFVector4 *)transformWithPythagorasFIVector4:(id<PythagorasFIVector4>)vector
                                  withPythagorasFVector4:(PythagorasFVector4 *)result;
- (PythagorasFQuaternion *)extractRotation;
- (PythagorasFQuaternion *)extractRotationWithPythagorasFQuaternion:(PythagorasFQuaternion *)result;
- (PythagorasFMatrix3 *)extractRotationScaleWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFVector3 *)extractScale;
- (PythagorasFVector3 *)extractScaleWithPythagorasFVector3:(PythagorasFVector3 *)result;
- (float)approximateUniformScale;
- (BOOL)epsilonEqualsWithPythagorasFIMatrix4:(id<PythagorasFIMatrix4>)other
                                   withFloat:(float)epsilon;
- (NSString *)description;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)other;
@end
