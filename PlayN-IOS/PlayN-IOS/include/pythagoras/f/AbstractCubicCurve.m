//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractCubicCurve.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSFloatArray.h"
#include "java/lang/Math.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/f/AbstractCubicCurve.h"
#include "pythagoras/f/Crossing.h"
#include "pythagoras/f/CubicCurve.h"
#include "pythagoras/f/CubicCurves.h"
#include "pythagoras/f/FlatteningPathIterator.h"
#include "pythagoras/f/ICubicCurve.h"
#include "pythagoras/f/IPoint.h"
#include "pythagoras/f/IRectangle.h"
#include "pythagoras/f/PathIterator.h"
#include "pythagoras/f/Point.h"
#include "pythagoras/f/Rectangle.h"
#include "pythagoras/f/Transform.h"

@implementation PythagorasFAbstractCubicCurve

- (PythagorasFPoint *)p1 {
  return [[PythagorasFPoint alloc] initWithFloat:[self x1] withFloat:[self y1]];
}

- (PythagorasFPoint *)ctrlP1 {
  return [[PythagorasFPoint alloc] initWithFloat:[self ctrlX1] withFloat:[self ctrlY1]];
}

- (PythagorasFPoint *)ctrlP2 {
  return [[PythagorasFPoint alloc] initWithFloat:[self ctrlX2] withFloat:[self ctrlY2]];
}

- (PythagorasFPoint *)p2 {
  return [[PythagorasFPoint alloc] initWithFloat:[self x2] withFloat:[self y2]];
}

- (float)flatnessSq {
  return [PythagorasFCubicCurves flatnessSqWithFloat:[self x1] withFloat:[self y1] withFloat:[self ctrlX1] withFloat:[self ctrlY1] withFloat:[self ctrlX2] withFloat:[self ctrlY2] withFloat:[self x2] withFloat:[self y2]];
}

- (float)flatness {
  return [PythagorasFCubicCurves flatnessWithFloat:[self x1] withFloat:[self y1] withFloat:[self ctrlX1] withFloat:[self ctrlY1] withFloat:[self ctrlX2] withFloat:[self ctrlY2] withFloat:[self x2] withFloat:[self y2]];
}

- (void)subdivideWithPythagorasFCubicCurve:(PythagorasFCubicCurve *)left
                 withPythagorasFCubicCurve:(PythagorasFCubicCurve *)right {
  [PythagorasFCubicCurves subdivideWithPythagorasFICubicCurve:self withPythagorasFCubicCurve:left withPythagorasFCubicCurve:right];
}

- (PythagorasFCubicCurve *)clone {
  return [[PythagorasFCubicCurve alloc] initWithFloat:[self x1] withFloat:[self y1] withFloat:[self ctrlX1] withFloat:[self ctrlY1] withFloat:[self ctrlX2] withFloat:[self ctrlY2] withFloat:[self x2] withFloat:[self y2]];
}

- (BOOL)isEmpty {
  return YES;
}

- (BOOL)containsWithFloat:(float)px
                withFloat:(float)py {
  return [PythagorasFCrossing isInsideEvenOddWithInt:[PythagorasFCrossing crossShapeWithPythagorasFIShape:self withFloat:px withFloat:py]];
}

- (BOOL)containsWithFloat:(float)rx
                withFloat:(float)ry
                withFloat:(float)rw
                withFloat:(float)rh {
  int cross = [PythagorasFCrossing intersectShapeWithPythagorasFIShape:self withFloat:rx withFloat:ry withFloat:rw withFloat:rh];
  return (cross != PythagorasFCrossing_CROSSING) && [PythagorasFCrossing isInsideEvenOddWithInt:cross];
}

- (BOOL)containsWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [self containsWithFloat:[((id<PythagorasFIPoint>) nil_chk(p)) x] withFloat:[((id<PythagorasFIPoint>) nil_chk(p)) y]];
}

- (BOOL)containsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r {
  return [self containsWithFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) x] withFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) y] withFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) width] withFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) height]];
}

- (BOOL)intersectsWithFloat:(float)rx
                  withFloat:(float)ry
                  withFloat:(float)rw
                  withFloat:(float)rh {
  int cross = [PythagorasFCrossing intersectShapeWithPythagorasFIShape:self withFloat:rx withFloat:ry withFloat:rw withFloat:rh];
  return (cross == PythagorasFCrossing_CROSSING) || [PythagorasFCrossing isInsideEvenOddWithInt:cross];
}

- (BOOL)intersectsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r {
  return [self intersectsWithFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) x] withFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) y] withFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) width] withFloat:[((id<PythagorasFIRectangle>) nil_chk(r)) height]];
}

- (PythagorasFRectangle *)bounds {
  return [self boundsWithPythagorasFRectangle:[[PythagorasFRectangle alloc] init]];
}

- (PythagorasFRectangle *)boundsWithPythagorasFRectangle:(PythagorasFRectangle *)target {
  float x1 = [self x1], y1 = [self y1], x2 = [self x2], y2 = [self y2];
  float ctrlx1 = [self ctrlX1], ctrly1 = [self ctrlY1];
  float ctrlx2 = [self ctrlX2], ctrly2 = [self ctrlY2];
  float rx1 = [JavaLangMath minWithFloat:[JavaLangMath minWithFloat:x1 withFloat:x2] withFloat:[JavaLangMath minWithFloat:ctrlx1 withFloat:ctrlx2]];
  float ry1 = [JavaLangMath minWithFloat:[JavaLangMath minWithFloat:y1 withFloat:y2] withFloat:[JavaLangMath minWithFloat:ctrly1 withFloat:ctrly2]];
  float rx2 = [JavaLangMath maxWithFloat:[JavaLangMath maxWithFloat:x1 withFloat:x2] withFloat:[JavaLangMath maxWithFloat:ctrlx1 withFloat:ctrlx2]];
  float ry2 = [JavaLangMath maxWithFloat:[JavaLangMath maxWithFloat:y1 withFloat:y2] withFloat:[JavaLangMath maxWithFloat:ctrly1 withFloat:ctrly2]];
  [((PythagorasFRectangle *) nil_chk(target)) setBoundsWithFloat:rx1 withFloat:ry1 withFloat:rx2 - rx1 withFloat:ry2 - ry1];
  return target;
}

- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)t {
  return [[PythagorasFAbstractCubicCurve_Iterator alloc] initWithPythagorasFICubicCurve:self withPythagorasFTransform:t];
}

- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)at
                                                          withFloat:(float)flatness {
  return [[PythagorasFFlatteningPathIterator alloc] initWithPythagorasFPathIterator:[self pathIteratorWithPythagorasFTransform:at] withFloat:flatness];
}

- (float)ctrlX1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)ctrlX2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)ctrlY1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)ctrlY2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)x1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)x2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)y1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)y2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

@end
@implementation PythagorasFAbstractCubicCurve_Iterator

@synthesize c = c_;
@synthesize t = t_;
@synthesize index = index_;

- (id)initWithPythagorasFICubicCurve:(id<PythagorasFICubicCurve>)c
            withPythagorasFTransform:(id<PythagorasFTransform>)t {
  if ((self = [super init])) {
    self.c = c;
    self.t = t;
  }
  return self;
}

- (int)windingRule {
  return PythagorasFPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return index_ > 1;
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithFloatArray:(IOSFloatArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  int type;
  int count;
  if (index_ == 0) {
    type = PythagorasFPathIterator_SEG_MOVETO;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:0]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) x1];
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:1]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) y1];
    count = 1;
  }
  else {
    type = PythagorasFPathIterator_SEG_CUBICTO;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:0]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) ctrlX1];
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:1]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) ctrlY1];
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:2]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) ctrlX2];
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:3]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) ctrlY2];
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:4]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) x2];
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:5]) = [((id<PythagorasFICubicCurve>) nil_chk(c_)) y2];
    count = 3;
  }
  if (t_ != nil) {
    [t_ transformWithFloatArray:coords withInt:0 withFloatArray:coords withInt:0 withInt:count];
  }
  return type;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFAbstractCubicCurve_Iterator *typedCopy = (PythagorasFAbstractCubicCurve_Iterator *) copy;
  typedCopy.c = c_;
  typedCopy.t = t_;
  typedCopy.index = index_;
}

@end
