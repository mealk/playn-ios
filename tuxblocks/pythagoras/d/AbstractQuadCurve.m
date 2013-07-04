//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractQuadCurve.java
//
//  Created by Thomas on 7/1/13.
//

#import "Crossing.h"
#import "FlatteningPathIterator.h"
#import "IOSDoubleArray.h"
#import "IPoint.h"
#import "IQuadCurve.h"
#import "IRectangle.h"
#import "Lines.h"
#import "PathIterator.h"
#import "Point.h"
#import "QuadCurve.h"
#import "QuadCurves.h"
#import "Rectangle.h"
#import "Transform.h"
#import "java/lang/Math.h"
#import "java/util/NoSuchElementException.h"
#import "AbstractQuadCurve.h"

@implementation PythagorasDAbstractQuadCurve

- (PythagorasDPoint *)p1 {
  return [[[PythagorasDPoint alloc] initWithDouble:[self x1] withDouble:[self y1]] autorelease];
}

- (PythagorasDPoint *)ctrlP {
  return [[[PythagorasDPoint alloc] initWithDouble:[self ctrlX] withDouble:[self ctrlY]] autorelease];
}

- (PythagorasDPoint *)p2 {
  return [[[PythagorasDPoint alloc] initWithDouble:[self x2] withDouble:[self y2]] autorelease];
}

- (double)flatnessSq {
  return [PythagorasDLines pointSegDistSqWithDouble:[self ctrlX] withDouble:[self ctrlY] withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)flatness {
  return [PythagorasDLines pointSegDistWithDouble:[self ctrlX] withDouble:[self ctrlY] withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (void)subdivideWithPythagorasDQuadCurve:(PythagorasDQuadCurve *)left
                 withPythagorasDQuadCurve:(PythagorasDQuadCurve *)right {
  [PythagorasDQuadCurves subdivideWithPythagorasDIQuadCurve:self withPythagorasDQuadCurve:left withPythagorasDQuadCurve:right];
}

- (PythagorasDQuadCurve *)clone {
  return [[[PythagorasDQuadCurve alloc] initWithDouble:[self x1] withDouble:[self y1] withDouble:[self ctrlX] withDouble:[self ctrlY] withDouble:[self x2] withDouble:[self y2]] autorelease];
}

- (BOOL)isEmpty {
  return YES;
}

- (BOOL)containsWithDouble:(double)px
                withDouble:(double)py {
  return [PythagorasDCrossing isInsideEvenOddWithInt:[PythagorasDCrossing crossShapeWithPythagorasDIShape:self withDouble:px withDouble:py]];
}

- (BOOL)containsWithDouble:(double)rx
                withDouble:(double)ry
                withDouble:(double)rw
                withDouble:(double)rh {
  int cross = [PythagorasDCrossing intersectShapeWithPythagorasDIShape:self withDouble:rx withDouble:ry withDouble:rw withDouble:rh];
  return cross != PythagorasDCrossing_CROSSING && [PythagorasDCrossing isInsideEvenOddWithInt:cross];
}

- (BOOL)containsWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [self containsWithDouble:[((id<PythagorasDIPoint>) NIL_CHK(p)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p)) y]];
}

- (BOOL)containsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  return [self containsWithDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) x] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) y] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) width] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) height]];
}

- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh {
  int cross = [PythagorasDCrossing intersectShapeWithPythagorasDIShape:self withDouble:rx withDouble:ry withDouble:rw withDouble:rh];
  return cross == PythagorasDCrossing_CROSSING || [PythagorasDCrossing isInsideEvenOddWithInt:cross];
}

- (BOOL)intersectsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  return [self intersectsWithDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) x] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) y] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) width] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) height]];
}

- (PythagorasDRectangle *)bounds {
  return [self boundsWithPythagorasDRectangle:[[[PythagorasDRectangle alloc] init] autorelease]];
}

- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target {
  double x1 = [self x1], y1 = [self y1], x2 = [self x2], y2 = [self y2];
  double ctrlx = [self ctrlX], ctrly = [self ctrlY];
  double rx0 = [JavaLangMath minWithDouble:[JavaLangMath minWithDouble:x1 withDouble:x2] withDouble:ctrlx];
  double ry0 = [JavaLangMath minWithDouble:[JavaLangMath minWithDouble:y1 withDouble:y2] withDouble:ctrly];
  double rx1 = [JavaLangMath maxWithDouble:[JavaLangMath maxWithDouble:x1 withDouble:x2] withDouble:ctrlx];
  double ry1 = [JavaLangMath maxWithDouble:[JavaLangMath maxWithDouble:y1 withDouble:y2] withDouble:ctrly];
  [((PythagorasDRectangle *) NIL_CHK(target)) setBoundsWithDouble:rx0 withDouble:ry0 withDouble:rx1 - rx0 withDouble:ry1 - ry0];
  return target;
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t {
  return [[[PythagorasDAbstractQuadCurve_Iterator alloc] initWithPythagorasDIQuadCurve:self withPythagorasDTransform:t] autorelease];
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t
                                                         withDouble:(double)flatness {
  return [[[PythagorasDFlatteningPathIterator alloc] initWithPythagorasDPathIterator:[self pathIteratorWithPythagorasDTransform:t] withDouble:flatness] autorelease];
}

- (double)ctrlX {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)ctrlY {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)x1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)x2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)y1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)y2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  [super dealloc];
}

@end
@implementation PythagorasDAbstractQuadCurve_Iterator

- (id<PythagorasDIQuadCurve>)c {
  return c_;
}
- (void)setC:(id<PythagorasDIQuadCurve>)c {
  JreOperatorRetainedAssign(&c_, self, c);
}
@synthesize c = c_;
- (id<PythagorasDTransform>)t {
  return t_;
}
- (void)setT:(id<PythagorasDTransform>)t {
  JreOperatorRetainedAssign(&t_, self, t);
}
@synthesize t = t_;
@synthesize index = index_;

- (id)initWithPythagorasDIQuadCurve:(id<PythagorasDIQuadCurve>)q
           withPythagorasDTransform:(id<PythagorasDTransform>)t {
  if ((self = [super init])) {
    self.c = q;
    self.t = t;
  }
  return self;
}

- (int)windingRule {
  return PythagorasDPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return (index_ > 1);
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithJavaLangDoubleArray:(IOSDoubleArray *)coords {
  if ([self isDone]) {
    @throw [[[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"] autorelease];
  }
  int type;
  int count;
  if (index_ == 0) {
    type = PythagorasDPathIterator_SEG_MOVETO;
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:[((id<PythagorasDIQuadCurve>) NIL_CHK(c_)) x1]];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:[((id<PythagorasDIQuadCurve>) NIL_CHK(c_)) y1]];
    count = 1;
  }
  else {
    type = PythagorasDPathIterator_SEG_QUADTO;
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:[((id<PythagorasDIQuadCurve>) NIL_CHK(c_)) ctrlX]];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:[((id<PythagorasDIQuadCurve>) NIL_CHK(c_)) ctrlY]];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:2 withDouble:[((id<PythagorasDIQuadCurve>) NIL_CHK(c_)) x2]];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:3 withDouble:[((id<PythagorasDIQuadCurve>) NIL_CHK(c_)) y2]];
    count = 2;
  }
  if (t_ != nil) {
    [t_ transformWithJavaLangDoubleArray:coords withInt:0 withJavaLangDoubleArray:coords withInt:0 withInt:count];
  }
  return type;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&t_, self, nil);
  JreOperatorRetainedAssign(&c_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDAbstractQuadCurve_Iterator *typedCopy = (PythagorasDAbstractQuadCurve_Iterator *) copy;
  typedCopy.c = c_;
  typedCopy.t = t_;
  typedCopy.index = index_;
}

@end
