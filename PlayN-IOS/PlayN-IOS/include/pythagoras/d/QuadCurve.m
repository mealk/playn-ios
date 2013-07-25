//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/QuadCurve.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSDoubleArray.h"
#include "IOSObjectArray.h"
#include "pythagoras/d/IPoint.h"
#include "pythagoras/d/IQuadCurve.h"
#include "pythagoras/d/QuadCurve.h"

@implementation PythagorasDQuadCurve

@synthesize x1_ = x1__;
@synthesize y1_ = y1__;
@synthesize ctrlx = ctrlx_;
@synthesize ctrly = ctrly_;
@synthesize x2_ = x2__;
@synthesize y2_ = y2__;

- (id)init {
  return [super init];
}

- (id)initWithDouble:(double)x1
          withDouble:(double)y1
          withDouble:(double)ctrlx
          withDouble:(double)ctrly
          withDouble:(double)x2
          withDouble:(double)y2 {
  if ((self = [super init])) {
    [self setCurveWithDouble:x1 withDouble:y1 withDouble:ctrlx withDouble:ctrly withDouble:x2 withDouble:y2];
  }
  return self;
}

- (void)setCurveWithDouble:(double)x1
                withDouble:(double)y1
                withDouble:(double)ctrlx
                withDouble:(double)ctrly
                withDouble:(double)x2
                withDouble:(double)y2 {
  self.x1_ = x1;
  self.y1_ = y1;
  self.ctrlx = ctrlx;
  self.ctrly = ctrly;
  self.x2_ = x2;
  self.y2_ = y2;
}

- (void)setCurveWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
                withPythagorasDIPoint:(id<PythagorasDIPoint>)cp
                withPythagorasDIPoint:(id<PythagorasDIPoint>)p2 {
  [self setCurveWithDouble:[((id<PythagorasDIPoint>) nil_chk(p1)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p1)) y] withDouble:[((id<PythagorasDIPoint>) nil_chk(cp)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(cp)) y] withDouble:[((id<PythagorasDIPoint>) nil_chk(p2)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p2)) y]];
}

- (void)setCurveWithDoubleArray:(IOSDoubleArray *)coords
                        withInt:(int)offset {
  [self setCurveWithDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:offset + 0] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:offset + 1] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:offset + 2] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:offset + 3] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:offset + 4] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:offset + 5]];
}

- (void)setCurveWithPythagorasDIPointArray:(IOSObjectArray *)points
                                   withInt:(int)offset {
  [self setCurveWithDouble:[((id<PythagorasDIPoint>) nil_chk([((IOSObjectArray *) nil_chk(points)) objectAtIndex:offset + 0])) x] withDouble:[((id<PythagorasDIPoint>) nil_chk([((IOSObjectArray *) nil_chk(points)) objectAtIndex:offset + 0])) y] withDouble:[((id<PythagorasDIPoint>) nil_chk([((IOSObjectArray *) nil_chk(points)) objectAtIndex:offset + 1])) x] withDouble:[((id<PythagorasDIPoint>) nil_chk([((IOSObjectArray *) nil_chk(points)) objectAtIndex:offset + 1])) y] withDouble:[((id<PythagorasDIPoint>) nil_chk([((IOSObjectArray *) nil_chk(points)) objectAtIndex:offset + 2])) x] withDouble:[((id<PythagorasDIPoint>) nil_chk([((IOSObjectArray *) nil_chk(points)) objectAtIndex:offset + 2])) y]];
}

- (void)setCurveWithPythagorasDIQuadCurve:(id<PythagorasDIQuadCurve>)curve {
  [self setCurveWithDouble:[((id<PythagorasDIQuadCurve>) nil_chk(curve)) x1] withDouble:[((id<PythagorasDIQuadCurve>) nil_chk(curve)) y1] withDouble:[((id<PythagorasDIQuadCurve>) nil_chk(curve)) ctrlX] withDouble:[((id<PythagorasDIQuadCurve>) nil_chk(curve)) ctrlY] withDouble:[((id<PythagorasDIQuadCurve>) nil_chk(curve)) x2] withDouble:[((id<PythagorasDIQuadCurve>) nil_chk(curve)) y2]];
}

- (double)x1 {
  return x1__;
}

- (double)y1 {
  return y1__;
}

- (double)ctrlX {
  return ctrlx_;
}

- (double)ctrlY {
  return ctrly_;
}

- (double)x2 {
  return x2__;
}

- (double)y2 {
  return y2__;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDQuadCurve *typedCopy = (PythagorasDQuadCurve *) copy;
  typedCopy.x1_ = x1__;
  typedCopy.y1_ = y1__;
  typedCopy.ctrlx = ctrlx_;
  typedCopy.ctrly = ctrly_;
  typedCopy.x2_ = x2__;
  typedCopy.y2_ = y2__;
}

@end
