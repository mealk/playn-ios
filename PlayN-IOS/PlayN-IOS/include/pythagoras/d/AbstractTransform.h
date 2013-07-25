//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractTransform.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDAbstractTransform_RESTRICT
#define PythagorasDAbstractTransform_INCLUDE_ALL 1
#endif
#undef PythagorasDAbstractTransform_RESTRICT

#if !defined (_PythagorasDAbstractTransform_) && (PythagorasDAbstractTransform_INCLUDE_ALL || PythagorasDAbstractTransform_INCLUDE)
#define _PythagorasDAbstractTransform_

@class IOSDoubleArray;
@class IOSObjectArray;
@class PythagorasDPoint;
@class PythagorasDVector;
@protocol PythagorasDIPoint;
@protocol PythagorasDIVector;

#define PythagorasDTransform_RESTRICT 1
#define PythagorasDTransform_INCLUDE 1
#include "pythagoras/d/Transform.h"

@interface PythagorasDAbstractTransform : NSObject < PythagorasDTransform > {
}

- (PythagorasDVector *)scale__;
- (PythagorasDVector *)translation;
- (id<PythagorasDTransform>)setUniformScaleWithDouble:(double)scale_;
- (id<PythagorasDTransform>)setScaleWithDouble:(double)scaleX
                                    withDouble:(double)scaleY;
- (id<PythagorasDTransform>)setScaleXWithDouble:(double)scaleX;
- (id<PythagorasDTransform>)setScaleYWithDouble:(double)scaleY;
- (id<PythagorasDTransform>)setRotationWithDouble:(double)angle;
- (id<PythagorasDTransform>)setTranslationWithDouble:(double)tx
                                          withDouble:(double)ty;
- (id<PythagorasDTransform>)uniformScaleWithDouble:(double)scale_;
- (id<PythagorasDTransform>)scale__WithDouble:(double)scaleX
                                   withDouble:(double)scaleY;
- (id<PythagorasDTransform>)scaleXWithDouble:(double)scaleX;
- (id<PythagorasDTransform>)scaleYWithDouble:(double)scaleY;
- (id<PythagorasDTransform>)rotateWithDouble:(double)angle;
- (id<PythagorasDTransform>)translateWithDouble:(double)tx
                                     withDouble:(double)ty;
- (id<PythagorasDTransform>)translateXWithDouble:(double)tx;
- (id<PythagorasDTransform>)translateYWithDouble:(double)ty;
- (id<PythagorasDTransform>)setTxWithDouble:(double)tx;
- (id<PythagorasDTransform>)setTyWithDouble:(double)ty;
- (id<PythagorasDTransform>)setTransformWithDouble:(double)m00
                                        withDouble:(double)m01
                                        withDouble:(double)m10
                                        withDouble:(double)m11
                                        withDouble:(double)tx
                                        withDouble:(double)ty;
- (id<PythagorasDTransform>)clone;
- (id<PythagorasDTransform>)copy__ OBJC_METHOD_FAMILY_NONE;
- (id<PythagorasDTransform>)concatenateWithPythagorasDTransform:(id<PythagorasDTransform>)param0;
- (int)generality;
- (void)getWithDoubleArray:(IOSDoubleArray *)param0;
- (PythagorasDPoint *)inverseTransformWithPythagorasDIPoint:(id<PythagorasDIPoint>)param0
                                       withPythagorasDPoint:(PythagorasDPoint *)param1;
- (PythagorasDVector *)inverseTransformWithPythagorasDIVector:(id<PythagorasDIVector>)param0
                                        withPythagorasDVector:(PythagorasDVector *)param1;
- (id<PythagorasDTransform>)invert;
- (id<PythagorasDTransform>)lerpWithPythagorasDTransform:(id<PythagorasDTransform>)param0
                                              withDouble:(double)param1;
- (id<PythagorasDTransform>)preConcatenateWithPythagorasDTransform:(id<PythagorasDTransform>)param0;
- (double)rotation;
- (double)scaleX;
- (double)scaleY;
- (PythagorasDPoint *)transformWithPythagorasDIPoint:(id<PythagorasDIPoint>)param0
                                withPythagorasDPoint:(PythagorasDPoint *)param1;
- (void)transformWithPythagorasDIPointArray:(IOSObjectArray *)param0
                                    withInt:(int)param1
                  withPythagorasDPointArray:(IOSObjectArray *)param2
                                    withInt:(int)param3
                                    withInt:(int)param4;
- (void)transformWithDoubleArray:(IOSDoubleArray *)param0
                         withInt:(int)param1
                 withDoubleArray:(IOSDoubleArray *)param2
                         withInt:(int)param3
                         withInt:(int)param4;
- (PythagorasDVector *)transformWithPythagorasDIVector:(id<PythagorasDIVector>)param0
                                 withPythagorasDVector:(PythagorasDVector *)param1;
- (PythagorasDVector *)transformPointWithPythagorasDIVector:(id<PythagorasDIVector>)param0
                                      withPythagorasDVector:(PythagorasDVector *)param1;
- (double)tx;
- (double)ty;
- (double)uniformScale;
- (id)init;
@end
#endif
