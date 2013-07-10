//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/QuadCurve.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSDoubleArray;
@class IOSObjectArray;
@protocol PythagorasDIPoint;
@protocol PythagorasDIQuadCurve;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "pythagoras/d/AbstractQuadCurve.h"

@interface PythagorasDQuadCurve : PythagorasDAbstractQuadCurve < JavaIoSerializable > {
 @public
  double x1__;
  double y1__;
  double ctrlx_;
  double ctrly_;
  double x2__;
  double y2__;
}

@property (nonatomic, assign) double x1_;
@property (nonatomic, assign) double y1_;
@property (nonatomic, assign) double ctrlx;
@property (nonatomic, assign) double ctrly;
@property (nonatomic, assign) double x2_;
@property (nonatomic, assign) double y2_;

- (id)init;
- (id)initWithDouble:(double)x1
          withDouble:(double)y1
          withDouble:(double)ctrlx
          withDouble:(double)ctrly
          withDouble:(double)x2
          withDouble:(double)y2;
- (void)setCurveWithDouble:(double)x1
                withDouble:(double)y1
                withDouble:(double)ctrlx
                withDouble:(double)ctrly
                withDouble:(double)x2
                withDouble:(double)y2;
- (void)setCurveWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
                withPythagorasDIPoint:(id<PythagorasDIPoint>)cp
                withPythagorasDIPoint:(id<PythagorasDIPoint>)p2;
- (void)setCurveWithJavaLangDoubleArray:(IOSDoubleArray *)coords
                                withInt:(int)offset;
- (void)setCurveWithPythagorasDIPointArray:(IOSObjectArray *)points
                                   withInt:(int)offset;
- (void)setCurveWithPythagorasDIQuadCurve:(id<PythagorasDIQuadCurve>)curve;
- (double)x1;
- (double)y1;
- (double)ctrlX;
- (double)ctrlY;
- (double)x2;
- (double)y2;
@end
