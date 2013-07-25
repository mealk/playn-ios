//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/QuadCurves.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDQuadCurves_RESTRICT
#define PythagorasDQuadCurves_INCLUDE_ALL 1
#endif
#undef PythagorasDQuadCurves_RESTRICT

#if !defined (_PythagorasDQuadCurves_) && (PythagorasDQuadCurves_INCLUDE_ALL || PythagorasDQuadCurves_INCLUDE)
#define _PythagorasDQuadCurves_

@class IOSDoubleArray;
@class PythagorasDQuadCurve;
@protocol PythagorasDIQuadCurve;

@interface PythagorasDQuadCurves : NSObject {
}

+ (double)flatnessSqWithDouble:(double)x1
                    withDouble:(double)y1
                    withDouble:(double)ctrlx
                    withDouble:(double)ctrly
                    withDouble:(double)x2
                    withDouble:(double)y2;
+ (double)flatnessSqWithDoubleArray:(IOSDoubleArray *)coords
                            withInt:(int)offset;
+ (double)flatnessWithDouble:(double)x1
                  withDouble:(double)y1
                  withDouble:(double)ctrlx
                  withDouble:(double)ctrly
                  withDouble:(double)x2
                  withDouble:(double)y2;
+ (double)flatnessWithDoubleArray:(IOSDoubleArray *)coords
                          withInt:(int)offset;
+ (void)subdivideWithPythagorasDIQuadCurve:(id<PythagorasDIQuadCurve>)src
                  withPythagorasDQuadCurve:(PythagorasDQuadCurve *)left
                  withPythagorasDQuadCurve:(PythagorasDQuadCurve *)right;
+ (void)subdivideWithDoubleArray:(IOSDoubleArray *)src
                         withInt:(int)srcoff
                 withDoubleArray:(IOSDoubleArray *)left
                         withInt:(int)leftOff
                 withDoubleArray:(IOSDoubleArray *)right
                         withInt:(int)rightOff;
+ (int)solveQuadraticWithDoubleArray:(IOSDoubleArray *)eqn;
+ (int)solveQuadraticWithDoubleArray:(IOSDoubleArray *)eqn
                     withDoubleArray:(IOSDoubleArray *)res;
- (id)init;
@end
#endif
