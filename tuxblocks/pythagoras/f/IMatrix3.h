//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IMatrix3.java
//
//  Created by Thomas on 7/1/13.
//

@class JavaNioFloatBuffer;
@class PythagorasFMatrix3;
@class PythagorasFVector3;
@class PythagorasFVector;
@protocol PythagorasFIVector3;
@protocol PythagorasFIVector;

#import "JreEmulation.h"

@protocol PythagorasFIMatrix3 < NSObject >
- (float)m00;
- (float)m10;
- (float)m20;
- (float)m01;
- (float)m11;
- (float)m21;
- (float)m02;
- (float)m12;
- (float)m22;
- (float)elementWithInt:(int)row
                withInt:(int)col;
- (void)getRowWithInt:(int)row
withPythagorasFVector3:(PythagorasFVector3 *)result;
- (void)getColumnWithInt:(int)col
  withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFMatrix3 *)transpose;
- (PythagorasFMatrix3 *)transposeWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)multWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)multWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                             withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)addWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)addWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                            withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (BOOL)isAffine;
- (PythagorasFMatrix3 *)multAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other;
- (PythagorasFMatrix3 *)multAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                   withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)invert;
- (PythagorasFMatrix3 *)invertWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)invertAffine;
- (PythagorasFMatrix3 *)invertAffineWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)lerpWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                          withFloat:(float)t;
- (PythagorasFMatrix3 *)lerpWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                          withFloat:(float)t
                             withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (PythagorasFMatrix3 *)lerpAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                withFloat:(float)t;
- (PythagorasFMatrix3 *)lerpAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                withFloat:(float)t
                                   withPythagorasFMatrix3:(PythagorasFMatrix3 *)result;
- (JavaNioFloatBuffer *)getWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf;
- (PythagorasFVector3 *)transformLocalWithPythagorasFVector3:(PythagorasFVector3 *)vector;
- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector;
- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                  withPythagorasFVector3:(PythagorasFVector3 *)result;
- (PythagorasFVector *)transformPointLocalWithPythagorasFVector:(PythagorasFVector *)point;
- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)point;
- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)point
                                      withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)transformVectorLocalWithPythagorasFVector:(PythagorasFVector *)vector;
- (PythagorasFVector *)transformVectorWithPythagorasFIVector:(id<PythagorasFIVector>)vector;
- (PythagorasFVector *)transformVectorWithPythagorasFIVector:(id<PythagorasFIVector>)vector
                                       withPythagorasFVector:(PythagorasFVector *)result;
- (float)extractRotation;
- (PythagorasFVector *)extractScale;
- (PythagorasFVector *)extractScaleWithPythagorasFVector:(PythagorasFVector *)result;
- (float)approximateUniformScale;
@end
