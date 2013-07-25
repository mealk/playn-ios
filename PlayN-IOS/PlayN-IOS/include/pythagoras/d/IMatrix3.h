//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IMatrix3.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIMatrix3_RESTRICT
#define PythagorasDIMatrix3_INCLUDE_ALL 1
#endif
#undef PythagorasDIMatrix3_RESTRICT

#if !defined (_PythagorasDIMatrix3_) && (PythagorasDIMatrix3_INCLUDE_ALL || PythagorasDIMatrix3_INCLUDE)
#define _PythagorasDIMatrix3_

@class JavaNioDoubleBuffer;
@class PythagorasDMatrix3;
@class PythagorasDVector3;
@class PythagorasDVector;
@protocol PythagorasDIVector3;
@protocol PythagorasDIVector;

@protocol PythagorasDIMatrix3 < NSObject, JavaObject >
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
@end
#endif
