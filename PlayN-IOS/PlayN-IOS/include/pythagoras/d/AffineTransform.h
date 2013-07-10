//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AffineTransform.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSDoubleArray;
@class IOSObjectArray;
@class PythagorasDPoint;
@class PythagorasDVector;
@protocol PythagorasDIPoint;
@protocol PythagorasDIVector;
@protocol PythagorasDTransform;

#import "JreEmulation.h"
#import "pythagoras/d/AbstractTransform.h"

#define PythagorasDAffineTransform_GENERALITY 4

@interface PythagorasDAffineTransform : PythagorasDAbstractTransform {
 @public
  double m00_, m01_, m10_, m11_;
  double tx__, ty__;
}

@property (nonatomic, assign) double m00;
@property (nonatomic, assign) double m01;
@property (nonatomic, assign) double m10;
@property (nonatomic, assign) double m11;
@property (nonatomic, assign) double tx_;
@property (nonatomic, assign) double ty_;

+ (int)GENERALITY;
- (id)init;
- (id)initWithDouble:(double)scale_
          withDouble:(double)angle
          withDouble:(double)tx
          withDouble:(double)ty;
- (id)initWithDouble:(double)scaleX
          withDouble:(double)scaleY
          withDouble:(double)angle
          withDouble:(double)tx
          withDouble:(double)ty;
- (id)initWithDouble:(double)m00
          withDouble:(double)m01
          withDouble:(double)m10
          withDouble:(double)m11
          withDouble:(double)tx
          withDouble:(double)ty;
- (double)uniformScale;
- (double)scaleX;
- (double)scaleY;
- (double)rotation;
- (double)tx;
- (double)ty;
- (void)getWithJavaLangDoubleArray:(IOSDoubleArray *)matrix;
- (id<PythagorasDTransform>)setUniformScaleWithDouble:(double)scale_;
- (id<PythagorasDTransform>)setScaleXWithDouble:(double)scaleX;
- (id<PythagorasDTransform>)setScaleYWithDouble:(double)scaleY;
- (id<PythagorasDTransform>)setRotationWithDouble:(double)angle;
- (id<PythagorasDTransform>)setTranslationWithDouble:(double)tx
                                          withDouble:(double)ty;
- (id<PythagorasDTransform>)setTxWithDouble:(double)tx;
- (id<PythagorasDTransform>)setTyWithDouble:(double)ty;
- (id<PythagorasDTransform>)setTransformWithDouble:(double)m00
                                        withDouble:(double)m01
                                        withDouble:(double)m10
                                        withDouble:(double)m11
                                        withDouble:(double)tx
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
- (id<PythagorasDTransform>)invert;
- (id<PythagorasDTransform>)concatenateWithPythagorasDTransform:(id<PythagorasDTransform>)other;
- (id<PythagorasDTransform>)preConcatenateWithPythagorasDTransform:(id<PythagorasDTransform>)other;
- (id<PythagorasDTransform>)lerpWithPythagorasDTransform:(id<PythagorasDTransform>)other
                                              withDouble:(double)t;
- (PythagorasDPoint *)transformWithPythagorasDIPoint:(id<PythagorasDIPoint>)p
                                withPythagorasDPoint:(PythagorasDPoint *)into;
- (void)transformWithPythagorasDIPointArray:(IOSObjectArray *)src
                                    withInt:(int)srcOff
                  withPythagorasDPointArray:(IOSObjectArray *)dst
                                    withInt:(int)dstOff
                                    withInt:(int)count;
- (void)transformWithJavaLangDoubleArray:(IOSDoubleArray *)src
                                 withInt:(int)srcOff
                 withJavaLangDoubleArray:(IOSDoubleArray *)dst
                                 withInt:(int)dstOff
                                 withInt:(int)count;
- (PythagorasDPoint *)inverseTransformWithPythagorasDIPoint:(id<PythagorasDIPoint>)p
                                       withPythagorasDPoint:(PythagorasDPoint *)into;
- (PythagorasDVector *)transformPointWithPythagorasDIVector:(id<PythagorasDIVector>)v
                                      withPythagorasDVector:(PythagorasDVector *)into;
- (PythagorasDVector *)transformWithPythagorasDIVector:(id<PythagorasDIVector>)v
                                 withPythagorasDVector:(PythagorasDVector *)into;
- (PythagorasDVector *)inverseTransformWithPythagorasDIVector:(id<PythagorasDIVector>)v
                                        withPythagorasDVector:(PythagorasDVector *)into;
- (id<PythagorasDTransform>)copy__ OBJC_METHOD_FAMILY_NONE;
- (int)generality;
- (NSString *)description;
- (id)initWithPythagorasDTransform:(id<PythagorasDTransform>)other;
@end
