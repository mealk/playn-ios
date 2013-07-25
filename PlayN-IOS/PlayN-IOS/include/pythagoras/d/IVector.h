//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/IVector.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDIVector_RESTRICT
#define PythagorasDIVector_INCLUDE_ALL 1
#endif
#undef PythagorasDIVector_RESTRICT

#if !defined (_PythagorasDIVector_) && (PythagorasDIVector_INCLUDE_ALL || PythagorasDIVector_INCLUDE)
#define _PythagorasDIVector_

@class PythagorasDVector;

#define PythagorasDXY_RESTRICT 1
#define PythagorasDXY_INCLUDE 1
#include "pythagoras/d/XY.h"

@protocol PythagorasDIVector < PythagorasDXY, NSObject, JavaObject >
- (double)dotWithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (PythagorasDVector *)crossWithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (PythagorasDVector *)crossWithPythagorasDIVector:(id<PythagorasDIVector>)other
                             withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)negate;
- (PythagorasDVector *)negateWithPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)normalize;
- (PythagorasDVector *)normalizeWithPythagorasDVector:(PythagorasDVector *)result;
- (double)length;
- (double)lengthSq;
- (BOOL)isZero;
- (double)distanceWithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (double)distanceSqWithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (double)angle;
- (double)angleBetweenWithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (PythagorasDVector *)scale__WithDouble:(double)v;
- (PythagorasDVector *)scale__WithDouble:(double)v
                   withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)scale__WithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (PythagorasDVector *)scale__WithPythagorasDIVector:(id<PythagorasDIVector>)other
                               withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)addWithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (PythagorasDVector *)addWithPythagorasDIVector:(id<PythagorasDIVector>)other
                           withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)addWithDouble:(double)x
                          withDouble:(double)y;
- (PythagorasDVector *)addWithDouble:(double)x
                          withDouble:(double)y
               withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)addScaledWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                            withDouble:(double)v;
- (PythagorasDVector *)addScaledWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                            withDouble:(double)v
                                 withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)subtractWithPythagorasDIVector:(id<PythagorasDIVector>)other;
- (PythagorasDVector *)subtractWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)subtractWithDouble:(double)x
                               withDouble:(double)y;
- (PythagorasDVector *)subtractWithDouble:(double)x
                               withDouble:(double)y
                    withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)rotateWithDouble:(double)angle;
- (PythagorasDVector *)rotateWithDouble:(double)angle
                  withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)rotateAndAddWithDouble:(double)angle
                       withPythagorasDIVector:(id<PythagorasDIVector>)add
                        withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)rotateScaleAndAddWithDouble:(double)angle
                                        withDouble:(double)scale_
                            withPythagorasDIVector:(id<PythagorasDIVector>)add
                             withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)lerpWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                       withDouble:(double)t;
- (PythagorasDVector *)lerpWithPythagorasDIVector:(id<PythagorasDIVector>)other
                                       withDouble:(double)t
                            withPythagorasDVector:(PythagorasDVector *)result;
- (PythagorasDVector *)clone;
@end
#endif
