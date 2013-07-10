//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/CubicCurves.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSDoubleArray;
@class PythagorasDCubicCurve;
@protocol PythagorasDICubicCurve;

#import "JreEmulation.h"

@interface PythagorasDCubicCurves : NSObject {
}

+ (double)flatnessSqWithDouble:(double)x1
                    withDouble:(double)y1
                    withDouble:(double)ctrlx1
                    withDouble:(double)ctrly1
                    withDouble:(double)ctrlx2
                    withDouble:(double)ctrly2
                    withDouble:(double)x2
                    withDouble:(double)y2;
+ (double)flatnessSqWithJavaLangDoubleArray:(IOSDoubleArray *)coords
                                    withInt:(int)offset;
+ (double)flatnessWithDouble:(double)x1
                  withDouble:(double)y1
                  withDouble:(double)ctrlx1
                  withDouble:(double)ctrly1
                  withDouble:(double)ctrlx2
                  withDouble:(double)ctrly2
                  withDouble:(double)x2
                  withDouble:(double)y2;
+ (double)flatnessWithJavaLangDoubleArray:(IOSDoubleArray *)coords
                                  withInt:(int)offset;
+ (void)subdivideWithPythagorasDICubicCurve:(id<PythagorasDICubicCurve>)src
                  withPythagorasDCubicCurve:(PythagorasDCubicCurve *)left
                  withPythagorasDCubicCurve:(PythagorasDCubicCurve *)right;
+ (void)subdivideWithJavaLangDoubleArray:(IOSDoubleArray *)src
                                 withInt:(int)srcOff
                 withJavaLangDoubleArray:(IOSDoubleArray *)left
                                 withInt:(int)leftOff
                 withJavaLangDoubleArray:(IOSDoubleArray *)right
                                 withInt:(int)rightOff;
+ (int)solveCubicWithJavaLangDoubleArray:(IOSDoubleArray *)eqn;
+ (int)solveCubicWithJavaLangDoubleArray:(IOSDoubleArray *)eqn
                 withJavaLangDoubleArray:(IOSDoubleArray *)res;
- (id)init;
@end
