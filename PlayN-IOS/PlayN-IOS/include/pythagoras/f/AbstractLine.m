//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractLine.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSFloatArray.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/f/AbstractLine.h"
#include "pythagoras/f/ILine.h"
#include "pythagoras/f/IPoint.h"
#include "pythagoras/f/IRectangle.h"
#include "pythagoras/f/Line.h"
#include "pythagoras/f/Lines.h"
#include "pythagoras/f/PathIterator.h"
#include "pythagoras/f/Point.h"
#include "pythagoras/f/Rectangle.h"
#include "pythagoras/f/Transform.h"

@implementation PythagorasFAbstractLine

- (PythagorasFPoint *)p1 {
  return [self p1WithPythagorasFPoint:[[PythagorasFPoint alloc] init]];
}

- (PythagorasFPoint *)p1WithPythagorasFPoint:(PythagorasFPoint *)target {
  return [((PythagorasFPoint *) nil_chk(target)) setWithFloat:[self x1] withFloat:[self y1]];
}

- (PythagorasFPoint *)p2 {
  return [self p2WithPythagorasFPoint:[[PythagorasFPoint alloc] init]];
}

- (PythagorasFPoint *)p2WithPythagorasFPoint:(PythagorasFPoint *)target {
  return [((PythagorasFPoint *) nil_chk(target)) setWithFloat:[self x2] withFloat:[self y2]];
}

- (float)pointLineDistSqWithFloat:(float)px
                        withFloat:(float)py {
  return [PythagorasFLines pointLineDistSqWithFloat:px withFloat:py withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (float)pointLineDistSqWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [PythagorasFLines pointLineDistSqWithFloat:[((id<PythagorasFIPoint>) nil_chk(p)) x] withFloat:[((id<PythagorasFIPoint>) nil_chk(p)) y] withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (float)pointLineDistWithFloat:(float)px
                      withFloat:(float)py {
  return [PythagorasFLines pointLineDistWithFloat:px withFloat:py withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (float)pointLineDistWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [PythagorasFLines pointLineDistWithFloat:[((id<PythagorasFIPoint>) nil_chk(p)) x] withFloat:[((id<PythagorasFIPoint>) nil_chk(p)) y] withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (float)pointSegDistSqWithFloat:(float)px
                       withFloat:(float)py {
  return [PythagorasFLines pointSegDistSqWithFloat:px withFloat:py withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (float)pointSegDistSqWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [PythagorasFLines pointSegDistSqWithFloat:[((id<PythagorasFIPoint>) nil_chk(p)) x] withFloat:[((id<PythagorasFIPoint>) nil_chk(p)) y] withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (float)pointSegDistWithFloat:(float)px
                     withFloat:(float)py {
  return [PythagorasFLines pointSegDistWithFloat:px withFloat:py withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (float)pointSegDistWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [PythagorasFLines pointSegDistWithFloat:[((id<PythagorasFIPoint>) nil_chk(p)) x] withFloat:[((id<PythagorasFIPoint>) nil_chk(p)) y] withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (int)relativeCCWWithFloat:(float)px
                  withFloat:(float)py {
  return [PythagorasFLines relativeCCWWithFloat:px withFloat:py withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (int)relativeCCWWithPythagorasFIPoint:(id<PythagorasFIPoint>)p {
  return [PythagorasFLines relativeCCWWithFloat:[((id<PythagorasFIPoint>) nil_chk(p)) x] withFloat:[((id<PythagorasFIPoint>) nil_chk(p)) y] withFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (PythagorasFLine *)clone {
  return [[PythagorasFLine alloc] initWithFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2]];
}

- (BOOL)isEmpty {
  return NO;
}

- (BOOL)containsWithFloat:(float)x
                withFloat:(float)y {
  return NO;
}

- (BOOL)containsWithPythagorasFIPoint:(id<PythagorasFIPoint>)point {
  return NO;
}

- (BOOL)containsWithFloat:(float)x
                withFloat:(float)y
                withFloat:(float)w
                withFloat:(float)h {
  return NO;
}

- (BOOL)containsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r {
  return NO;
}

- (BOOL)intersectsWithFloat:(float)rx
                  withFloat:(float)ry
                  withFloat:(float)rw
                  withFloat:(float)rh {
  return [PythagorasFLines lineIntersectsRectWithFloat:[self x1] withFloat:[self y1] withFloat:[self x2] withFloat:[self y2] withFloat:rx withFloat:ry withFloat:rw withFloat:rh];
}

- (BOOL)intersectsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r {
  return [((id<PythagorasFIRectangle>) nil_chk(r)) intersectsLineWithPythagorasFILine:self];
}

- (PythagorasFRectangle *)bounds {
  return [self boundsWithPythagorasFRectangle:[[PythagorasFRectangle alloc] init]];
}

- (PythagorasFRectangle *)boundsWithPythagorasFRectangle:(PythagorasFRectangle *)target {
  float x1 = [self x1], x2 = [self x2], y1 = [self y1], y2 = [self y2];
  float rx, ry, rw, rh;
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
  [((PythagorasFRectangle *) nil_chk(target)) setBoundsWithFloat:rx withFloat:ry withFloat:rw withFloat:rh];
  return target;
}

- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)at {
  return [[PythagorasFAbstractLine_Iterator alloc] initWithPythagorasFILine:self withPythagorasFTransform:at];
}

- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)at
                                                          withFloat:(float)flatness {
  return [[PythagorasFAbstractLine_Iterator alloc] initWithPythagorasFILine:self withPythagorasFTransform:at];
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
@implementation PythagorasFAbstractLine_Iterator

@synthesize x1 = x1_;
@synthesize y1 = y1_;
@synthesize x2 = x2_;
@synthesize y2 = y2_;
@synthesize t = t_;
@synthesize index = index_;

- (id)initWithPythagorasFILine:(id<PythagorasFILine>)l
      withPythagorasFTransform:(id<PythagorasFTransform>)at {
  if ((self = [super init])) {
    self.x1 = [((id<PythagorasFILine>) nil_chk(l)) x1];
    self.y1 = [((id<PythagorasFILine>) nil_chk(l)) y1];
    self.x2 = [((id<PythagorasFILine>) nil_chk(l)) x2];
    self.y2 = [((id<PythagorasFILine>) nil_chk(l)) y2];
    self.t = at;
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
  if (index_ == 0) {
    type = PythagorasFPathIterator_SEG_MOVETO;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:0]) = x1_;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:1]) = y1_;
  }
  else {
    type = PythagorasFPathIterator_SEG_LINETO;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:0]) = x2_;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:1]) = y2_;
  }
  if (t_ != nil) {
    [t_ transformWithFloatArray:coords withInt:0 withFloatArray:coords withInt:0 withInt:1];
  }
  return type;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFAbstractLine_Iterator *typedCopy = (PythagorasFAbstractLine_Iterator *) copy;
  typedCopy.x1 = x1_;
  typedCopy.y1 = y1_;
  typedCopy.x2 = x2_;
  typedCopy.y2 = y2_;
  typedCopy.t = t_;
  typedCopy.index = index_;
}

@end
