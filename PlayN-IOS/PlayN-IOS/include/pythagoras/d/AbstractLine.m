//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractLine.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSDoubleArray.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/d/AbstractLine.h"
#include "pythagoras/d/ILine.h"
#include "pythagoras/d/IPoint.h"
#include "pythagoras/d/IRectangle.h"
#include "pythagoras/d/Line.h"
#include "pythagoras/d/Lines.h"
#include "pythagoras/d/PathIterator.h"
#include "pythagoras/d/Point.h"
#include "pythagoras/d/Rectangle.h"
#include "pythagoras/d/Transform.h"

@implementation PythagorasDAbstractLine

- (PythagorasDPoint *)p1 {
  return [self p1WithPythagorasDPoint:[[PythagorasDPoint alloc] init]];
}

- (PythagorasDPoint *)p1WithPythagorasDPoint:(PythagorasDPoint *)target {
  return [((PythagorasDPoint *) nil_chk(target)) setWithDouble:[self x1] withDouble:[self y1]];
}

- (PythagorasDPoint *)p2 {
  return [self p2WithPythagorasDPoint:[[PythagorasDPoint alloc] init]];
}

- (PythagorasDPoint *)p2WithPythagorasDPoint:(PythagorasDPoint *)target {
  return [((PythagorasDPoint *) nil_chk(target)) setWithDouble:[self x2] withDouble:[self y2]];
}

- (double)pointLineDistSqWithDouble:(double)px
                         withDouble:(double)py {
  return [PythagorasDLines pointLineDistSqWithDouble:px withDouble:py withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)pointLineDistSqWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [PythagorasDLines pointLineDistSqWithDouble:[((id<PythagorasDIPoint>) nil_chk(p)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p)) y] withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)pointLineDistWithDouble:(double)px
                       withDouble:(double)py {
  return [PythagorasDLines pointLineDistWithDouble:px withDouble:py withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)pointLineDistWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [PythagorasDLines pointLineDistWithDouble:[((id<PythagorasDIPoint>) nil_chk(p)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p)) y] withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)pointSegDistSqWithDouble:(double)px
                        withDouble:(double)py {
  return [PythagorasDLines pointSegDistSqWithDouble:px withDouble:py withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)pointSegDistSqWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [PythagorasDLines pointSegDistSqWithDouble:[((id<PythagorasDIPoint>) nil_chk(p)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p)) y] withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)pointSegDistWithDouble:(double)px
                      withDouble:(double)py {
  return [PythagorasDLines pointSegDistWithDouble:px withDouble:py withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (double)pointSegDistWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [PythagorasDLines pointSegDistWithDouble:[((id<PythagorasDIPoint>) nil_chk(p)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p)) y] withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (int)relativeCCWWithDouble:(double)px
                  withDouble:(double)py {
  return [PythagorasDLines relativeCCWWithDouble:px withDouble:py withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (int)relativeCCWWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [PythagorasDLines relativeCCWWithDouble:[((id<PythagorasDIPoint>) nil_chk(p)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p)) y] withDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (PythagorasDLine *)clone {
  return [[PythagorasDLine alloc] initWithDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2]];
}

- (BOOL)isEmpty {
  return NO;
}

- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y {
  return NO;
}

- (BOOL)containsWithPythagorasDIPoint:(id<PythagorasDIPoint>)point {
  return NO;
}

- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)w
                withDouble:(double)h {
  return NO;
}

- (BOOL)containsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  return NO;
}

- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh {
  return [PythagorasDLines lineIntersectsRectWithDouble:[self x1] withDouble:[self y1] withDouble:[self x2] withDouble:[self y2] withDouble:rx withDouble:ry withDouble:rw withDouble:rh];
}

- (BOOL)intersectsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  return [((id<PythagorasDIRectangle>) nil_chk(r)) intersectsLineWithPythagorasDILine:self];
}

- (PythagorasDRectangle *)bounds {
  return [self boundsWithPythagorasDRectangle:[[PythagorasDRectangle alloc] init]];
}

- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target {
  double x1 = [self x1], x2 = [self x2], y1 = [self y1], y2 = [self y2];
  double rx, ry, rw, rh;
  if (x1 < x2) {
    rx = x1;
    rw = x2 - x1;
  }
  else {
    rx = x2;
    rw = x1 - x2;
  }
  if (y1 < y2) {
    ry = y1;
    rh = y2 - y1;
  }
  else {
    ry = y2;
    rh = y1 - y2;
  }
  [((PythagorasDRectangle *) nil_chk(target)) setBoundsWithDouble:rx withDouble:ry withDouble:rw withDouble:rh];
  return target;
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)at {
  return [[PythagorasDAbstractLine_Iterator alloc] initWithPythagorasDILine:self withPythagorasDTransform:at];
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)at
                                                         withDouble:(double)flatness {
  return [[PythagorasDAbstractLine_Iterator alloc] initWithPythagorasDILine:self withPythagorasDTransform:at];
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
  return [self clone];
}

@end
@implementation PythagorasDAbstractLine_Iterator

@synthesize x1 = x1_;
@synthesize y1 = y1_;
@synthesize x2 = x2_;
@synthesize y2 = y2_;
@synthesize t = t_;
@synthesize index = index_;

- (id)initWithPythagorasDILine:(id<PythagorasDILine>)l
      withPythagorasDTransform:(id<PythagorasDTransform>)at {
  if ((self = [super init])) {
    self.x1 = [((id<PythagorasDILine>) nil_chk(l)) x1];
    self.y1 = [((id<PythagorasDILine>) nil_chk(l)) y1];
    self.x2 = [((id<PythagorasDILine>) nil_chk(l)) x2];
    self.y2 = [((id<PythagorasDILine>) nil_chk(l)) y2];
    self.t = at;
  }
  return self;
}

- (int)windingRule {
  return PythagorasDPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return index_ > 1;
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  int type;
  if (index_ == 0) {
    type = PythagorasDPathIterator_SEG_MOVETO;
    (*[((IOSDoubleArray *) nil_chk(coords)) doubleRefAtIndex:0]) = x1_;
    (*[((IOSDoubleArray *) nil_chk(coords)) doubleRefAtIndex:1]) = y1_;
  }
  else {
    type = PythagorasDPathIterator_SEG_LINETO;
    (*[((IOSDoubleArray *) nil_chk(coords)) doubleRefAtIndex:0]) = x2_;
    (*[((IOSDoubleArray *) nil_chk(coords)) doubleRefAtIndex:1]) = y2_;
  }
  if (t_ != nil) {
    [t_ transformWithDoubleArray:coords withInt:0 withDoubleArray:coords withInt:0 withInt:1];
  }
  return type;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDAbstractLine_Iterator *typedCopy = (PythagorasDAbstractLine_Iterator *) copy;
  typedCopy.x1 = x1_;
  typedCopy.y1 = y1_;
  typedCopy.x2 = x2_;
  typedCopy.y2 = y2_;
  typedCopy.t = t_;
  typedCopy.index = index_;
}

@end
