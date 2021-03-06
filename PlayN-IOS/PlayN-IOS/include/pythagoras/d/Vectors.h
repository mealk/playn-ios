//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Vectors.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDVectors_RESTRICT
#define PythagorasDVectors_INCLUDE_ALL 1
#endif
#undef PythagorasDVectors_RESTRICT

#if !defined (_PythagorasDVectors_) && (PythagorasDVectors_INCLUDE_ALL || PythagorasDVectors_INCLUDE)
#define _PythagorasDVectors_

@class PythagorasDVector;
@protocol PythagorasDIPoint;
@protocol PythagorasDIVector;

@interface PythagorasDVectors : NSObject {
}

+ (id<PythagorasDIVector>)UNIT_X;
+ (id<PythagorasDIVector>)UNIT_Y;
+ (id<PythagorasDIVector>)ZERO;
+ (id<PythagorasDIVector>)MIN_VALUE;
+ (id<PythagorasDIVector>)MAX_VALUE;
+ (PythagorasDVector *)fromPolarWithDouble:(double)magnitude
                                withDouble:(double)angle;
+ (PythagorasDVector *)fromWithPythagorasDIPoint:(id<PythagorasDIPoint>)from
                           withPythagorasDIPoint:(id<PythagorasDIPoint>)to;
+ (double)lengthWithDouble:(double)x
                withDouble:(double)y;
+ (double)lengthSqWithDouble:(double)x
                  withDouble:(double)y;
+ (BOOL)isZeroWithDouble:(double)x
              withDouble:(double)y;
+ (BOOL)isEpsilonZeroWithDouble:(double)x
                     withDouble:(double)y;
+ (BOOL)isEpsilonZeroWithDouble:(double)x
                     withDouble:(double)y
                     withDouble:(double)epsilon;
+ (BOOL)epsilonEqualsWithPythagorasDIVector:(id<PythagorasDIVector>)v1
                     withPythagorasDIVector:(id<PythagorasDIVector>)v2;
+ (BOOL)epsilonEqualsWithPythagorasDIVector:(id<PythagorasDIVector>)v1
                     withPythagorasDIVector:(id<PythagorasDIVector>)v2
                                 withDouble:(double)epsilon;
+ (PythagorasDVector *)transformWithDouble:(double)x
                                withDouble:(double)y
                                withDouble:(double)sx
                                withDouble:(double)sy
                                withDouble:(double)rotation
                                withDouble:(double)tx
                                withDouble:(double)ty
                     withPythagorasDVector:(PythagorasDVector *)result;
+ (PythagorasDVector *)transformWithDouble:(double)x
                                withDouble:(double)y
                                withDouble:(double)sx
                                withDouble:(double)sy
                                withDouble:(double)rotation
                     withPythagorasDVector:(PythagorasDVector *)result;
+ (PythagorasDVector *)transformWithDouble:(double)x
                                withDouble:(double)y
                                withDouble:(double)sx
                                withDouble:(double)sy
                                withDouble:(double)sina
                                withDouble:(double)cosa
                     withPythagorasDVector:(PythagorasDVector *)result;
+ (PythagorasDVector *)transformWithDouble:(double)x
                                withDouble:(double)y
                                withDouble:(double)sx
                                withDouble:(double)sy
                                withDouble:(double)sina
                                withDouble:(double)cosa
                                withDouble:(double)tx
                                withDouble:(double)ty
                     withPythagorasDVector:(PythagorasDVector *)result;
+ (PythagorasDVector *)inverseTransformWithDouble:(double)x
                                       withDouble:(double)y
                                       withDouble:(double)sx
                                       withDouble:(double)sy
                                       withDouble:(double)rotation
                            withPythagorasDVector:(PythagorasDVector *)result;
+ (NSString *)vectorToStringWithDouble:(double)x
                            withDouble:(double)y;
- (id)init;
@end
#endif
