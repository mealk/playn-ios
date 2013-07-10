//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractArc.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSDoubleArray.h"
#import "java/lang/Math.h"
#import "java/util/NoSuchElementException.h"
#import "pythagoras/d/AbstractArc.h"
#import "pythagoras/d/Arc.h"
#import "pythagoras/d/IArc.h"
#import "pythagoras/d/IRectangularShape.h"
#import "pythagoras/d/Line.h"
#import "pythagoras/d/PathIterator.h"
#import "pythagoras/d/Point.h"
#import "pythagoras/d/Rectangle.h"
#import "pythagoras/d/RectangularShape.h"
#import "pythagoras/d/Transform.h"

@implementation PythagorasDAbstractArc

- (PythagorasDPoint *)startPoint {
  return [self startPointWithPythagorasDPoint:[[PythagorasDPoint alloc] init]];
}

- (PythagorasDPoint *)startPointWithPythagorasDPoint:(PythagorasDPoint *)target {
  double a = [JavaLangMath toRadiansWithDouble:[self angleStart]];
  return [((PythagorasDPoint *) NIL_CHK(target)) setWithDouble:[self x] + (1.0f + [JavaLangMath cosWithDouble:a]) * [self width] / 2.0f withDouble:[self y] + (1.0f - [JavaLangMath sinWithDouble:a]) * [self height] / 2.0f];
}

- (PythagorasDPoint *)endPoint {
  return [self endPointWithPythagorasDPoint:[[PythagorasDPoint alloc] init]];
}

- (PythagorasDPoint *)endPointWithPythagorasDPoint:(PythagorasDPoint *)target {
  double a = [JavaLangMath toRadiansWithDouble:[self angleStart] + [self angleExtent]];
  return [((PythagorasDPoint *) NIL_CHK(target)) setWithDouble:[self x] + (1.0f + [JavaLangMath cosWithDouble:a]) * [self width] / 2.0f withDouble:[self y] + (1.0f - [JavaLangMath sinWithDouble:a]) * [self height] / 2.0f];
}

- (BOOL)containsAngleWithDouble:(double)angle {
  double extent = [self angleExtent];
  if (extent >= 360.0f) {
    return YES;
  }
  angle = [self normAngleWithDouble:angle];
  double a1 = [self normAngleWithDouble:[self angleStart]];
  double a2 = a1 + extent;
  if (a2 > 360.0f) {
    return angle >= a1 || angle <= a2 - 360.0f;
  }
  if (a2 < 0.0f) {
    return angle >= a2 + 360.0f || angle <= a1;
  }
  return (extent > 0.0f) ? a1 <= angle && angle <= a2 : a2 <= angle && angle <= a1;
}

- (PythagorasDArc *)clone {
  return [[PythagorasDArc alloc] initWithDouble:[self x] withDouble:[self y] withDouble:[self width] withDouble:[self height] withDouble:[self angleStart] withDouble:[self angleExtent] withInt:[self arcType]];
}

- (BOOL)isEmpty {
  return [self arcType] == PythagorasDIArc_OPEN || [super isEmpty];
}

- (BOOL)containsWithDouble:(double)px
                withDouble:(double)py {
  double nx = (px - [self x]) / [self width] - 0.5f;
  double ny = (py - [self y]) / [self height] - 0.5f;
  if ((nx * nx + ny * ny) > 0.25) {
    return NO;
  }
  double extent = [self angleExtent];
  double absExtent = [JavaLangMath absWithDouble:extent];
  if (absExtent >= 360.0f) {
    return YES;
  }
  BOOL containsAngle = [self containsAngleWithDouble:[JavaLangMath toDegreesWithDouble:-[JavaLangMath atan2WithDouble:ny withDouble:nx]]];
  if ([self arcType] == PythagorasDIArc_PIE) {
    return containsAngle;
  }
  if (absExtent <= 180.0f && !containsAngle) {
    return NO;
  }
  PythagorasDLine *l = [[PythagorasDLine alloc] initWithPythagorasDIPoint:[self startPoint] withPythagorasDIPoint:[self endPoint]];
  int ccw1 = [((PythagorasDLine *) NIL_CHK(l)) relativeCCWWithDouble:px withDouble:py];
  int ccw2 = [((PythagorasDLine *) NIL_CHK(l)) relativeCCWWithDouble:[self centerX] withDouble:[self centerY]];
  return ccw1 == 0 || ccw2 == 0 || ((ccw1 + ccw2) == 0 ^ absExtent > 180.0f);
}

- (BOOL)containsWithDouble:(double)rx
                withDouble:(double)ry
                withDouble:(double)rw
                withDouble:(double)rh {
  if (!([self containsWithDouble:rx withDouble:ry] && [self containsWithDouble:rx + rw withDouble:ry] && [self containsWithDouble:rx + rw withDouble:ry + rh] && [self containsWithDouble:rx withDouble:ry + rh])) {
    return NO;
  }
  double absExtent = [JavaLangMath absWithDouble:[self angleExtent]];
  if ([self arcType] != PythagorasDIArc_PIE || absExtent <= 180.0f || absExtent >= 360.0f) {
    return YES;
  }
  PythagorasDRectangle *r = [[PythagorasDRectangle alloc] initWithDouble:rx withDouble:ry withDouble:rw withDouble:rh];
  double cx = [self centerX], cy = [self centerY];
  if ([((PythagorasDRectangle *) NIL_CHK(r)) containsWithDouble:cx withDouble:cy]) {
    return NO;
  }
  PythagorasDPoint *p1 = [self startPoint], *p2 = [self endPoint];
  return ![((PythagorasDRectangle *) NIL_CHK(r)) intersectsLineWithDouble:cx withDouble:cy withDouble:[((PythagorasDPoint *) NIL_CHK(p1)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p1)) y]] && ![((PythagorasDRectangle *) NIL_CHK(r)) intersectsLineWithDouble:cx withDouble:cy withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) y]];
}

- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh {
  if ([self isEmpty] || rw <= 0.0f || rh <= 0.0f) {
    return NO;
  }
  if ([self containsWithDouble:rx withDouble:ry] || [self containsWithDouble:rx + rw withDouble:ry] || [self containsWithDouble:rx withDouble:ry + rh] || [self containsWithDouble:rx + rw withDouble:ry + rh]) {
    return YES;
  }
  double cx = [self centerX], cy = [self centerY];
  PythagorasDPoint *p1 = [self startPoint], *p2 = [self endPoint];
  PythagorasDRectangle *r = [[PythagorasDRectangle alloc] initWithDouble:rx withDouble:ry withDouble:rw withDouble:rh];
  if ([((PythagorasDRectangle *) NIL_CHK(r)) containsWithPythagorasDIPoint:p1] || [((PythagorasDRectangle *) NIL_CHK(r)) containsWithPythagorasDIPoint:p2] || ([self arcType] == PythagorasDIArc_PIE && [((PythagorasDRectangle *) NIL_CHK(r)) containsWithDouble:cx withDouble:cy])) {
    return YES;
  }
  if ([self arcType] == PythagorasDIArc_PIE) {
    if ([((PythagorasDRectangle *) NIL_CHK(r)) intersectsLineWithDouble:[((PythagorasDPoint *) NIL_CHK(p1)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p1)) y] withDouble:cx withDouble:cy] || [((PythagorasDRectangle *) NIL_CHK(r)) intersectsLineWithDouble:[((PythagorasDPoint *) NIL_CHK(p2)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) y] withDouble:cx withDouble:cy]) {
      return YES;
    }
  }
  else {
    if ([((PythagorasDRectangle *) NIL_CHK(r)) intersectsLineWithDouble:[((PythagorasDPoint *) NIL_CHK(p1)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p1)) y] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) y]]) {
      return YES;
    }
  }
  double nx = cx < rx ? rx : (cx > rx + rw ? rx + rw : cx);
  double ny = cy < ry ? ry : (cy > ry + rh ? ry + rh : cy);
  return [self containsWithDouble:nx withDouble:ny];
}

- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target {
  if ([self isEmpty]) {
    [((PythagorasDRectangle *) NIL_CHK(target)) setBoundsWithDouble:[self x] withDouble:[self y] withDouble:[self width] withDouble:[self height]];
    return target;
  }
  double rx1 = [self x];
  double ry1 = [self y];
  double rx2 = rx1 + [self width];
  double ry2 = ry1 + [self height];
  PythagorasDPoint *p1 = [self startPoint], *p2 = [self endPoint];
  double bx1 = [self containsAngleWithDouble:180.0f] ? rx1 : [JavaLangMath minWithDouble:[((PythagorasDPoint *) NIL_CHK(p1)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) x]];
  double by1 = [self containsAngleWithDouble:90.0f] ? ry1 : [JavaLangMath minWithDouble:[((PythagorasDPoint *) NIL_CHK(p1)) y] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) y]];
  double bx2 = [self containsAngleWithDouble:0.0f] ? rx2 : [JavaLangMath maxWithDouble:[((PythagorasDPoint *) NIL_CHK(p1)) x] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) x]];
  double by2 = [self containsAngleWithDouble:270.0f] ? ry2 : [JavaLangMath maxWithDouble:[((PythagorasDPoint *) NIL_CHK(p1)) y] withDouble:[((PythagorasDPoint *) NIL_CHK(p2)) y]];
  if ([self arcType] == PythagorasDIArc_PIE) {
    double cx = [self centerX];
    double cy = [self centerY];
    bx1 = [JavaLangMath minWithDouble:bx1 withDouble:cx];
    by1 = [JavaLangMath minWithDouble:by1 withDouble:cy];
    bx2 = [JavaLangMath maxWithDouble:bx2 withDouble:cx];
    by2 = [JavaLangMath maxWithDouble:by2 withDouble:cy];
  }
  [((PythagorasDRectangle *) NIL_CHK(target)) setBoundsWithDouble:bx1 withDouble:by1 withDouble:bx2 - bx1 withDouble:by2 - by1];
  return target;
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)at {
  return [[PythagorasDAbstractArc_Iterator alloc] initWithPythagorasDIArc:self withPythagorasDTransform:at];
}

- (double)normAngleWithDouble:(double)angle {
  return angle - [JavaLangMath floorWithDouble:angle / 360.0f] * 360.0f;
}

- (double)angleExtent {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)angleStart {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)arcType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)x {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (double)y {
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
@implementation PythagorasDAbstractArc_Iterator

@synthesize x = x_;
@synthesize y = y_;
@synthesize width = width_;
@synthesize height = height_;
@synthesize angle = angle_;
@synthesize extent = extent_;
@synthesize type = type_;
@synthesize t = t_;
@synthesize index = index_;
@synthesize arcCount = arcCount_;
@synthesize lineCount = lineCount_;
@synthesize step = step_;
@synthesize cos = cos_;
@synthesize sin = sin_;
@synthesize k = k_;
@synthesize kx = kx_;
@synthesize ky = ky_;
@synthesize mx = mx_;
@synthesize my = my_;

- (id)initWithPythagorasDIArc:(id<PythagorasDIArc>)a
     withPythagorasDTransform:(id<PythagorasDTransform>)t {
  if ((self = [super init])) {
    self.width = [((id<PythagorasDIArc>) NIL_CHK(a)) width] / 2.0f;
    self.height = [((id<PythagorasDIArc>) NIL_CHK(a)) height] / 2.0f;
    self.x = [((id<PythagorasDIArc>) NIL_CHK(a)) x] + width_;
    self.y = [((id<PythagorasDIArc>) NIL_CHK(a)) y] + height_;
    self.angle = -[JavaLangMath toRadiansWithDouble:[((id<PythagorasDIArc>) NIL_CHK(a)) angleStart]];
    self.extent = -[((id<PythagorasDIArc>) NIL_CHK(a)) angleExtent];
    self.type = [((id<PythagorasDIArc>) NIL_CHK(a)) arcType];
    self.t = t;
    if (width_ < 0 || height_ < 0) {
      arcCount_ = 0;
      lineCount_ = 0;
      index_ = 1;
      return self;
    }
    if ([JavaLangMath absWithDouble:extent_] >= 360.0f) {
      arcCount_ = 4;
      k_ = 4.0f / 3.0f * ([JavaLangMath sqrtWithDouble:2.0f] - 1.0f);
      step_ = JavaLangMath_PI / 2.0f;
      if (extent_ < 0.0f) {
        step_ = -step_;
        k_ = -k_;
      }
    }
    else {
      arcCount_ = (int) [JavaLangMath rintWithDouble:[JavaLangMath absWithDouble:extent_] / 90.0f];
      step_ = [JavaLangMath toRadiansWithDouble:extent_ / arcCount_];
      k_ = 4.0f / 3.0f * (1.0f - [JavaLangMath cosWithDouble:step_ / 2.0f]) / [JavaLangMath sinWithDouble:step_ / 2.0f];
    }
    lineCount_ = 0;
    if (type_ == PythagorasDIArc_CHORD) {
      lineCount_++;
    }
    else if (type_ == PythagorasDIArc_PIE) {
      lineCount_ += 2;
    }
  }
  return self;
}

- (int)windingRule {
  return PythagorasDPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return index_ > arcCount_ + lineCount_;
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithJavaLangDoubleArray:(IOSDoubleArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  int type;
  int count;
  if (index_ == 0) {
    type = PythagorasDPathIterator_SEG_MOVETO;
    count = 1;
    cos_ = [JavaLangMath cosWithDouble:angle_];
    sin_ = [JavaLangMath sinWithDouble:angle_];
    kx_ = k_ * width_ * sin_;
    ky_ = k_ * height_ * cos_;
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:mx_ = x_ + cos_ * width_];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:my_ = y_ + sin_ * height_];
  }
  else if (index_ <= arcCount_) {
    type = PythagorasDPathIterator_SEG_CUBICTO;
    count = 3;
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:mx_ - kx_];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:my_ + ky_];
    angle_ += step_;
    cos_ = [JavaLangMath cosWithDouble:angle_];
    sin_ = [JavaLangMath sinWithDouble:angle_];
    kx_ = k_ * width_ * sin_;
    ky_ = k_ * height_ * cos_;
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:4 withDouble:mx_ = x_ + cos_ * width_];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:5 withDouble:my_ = y_ + sin_ * height_];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:2 withDouble:mx_ + kx_];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:3 withDouble:my_ - ky_];
  }
  else if (index_ == arcCount_ + lineCount_) {
    type = PythagorasDPathIterator_SEG_CLOSE;
    count = 0;
  }
  else {
    type = PythagorasDPathIterator_SEG_LINETO;
    count = 1;
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:0 withDouble:x_];
    [((IOSDoubleArray *) NIL_CHK(coords)) replaceDoubleAtIndex:1 withDouble:y_];
  }
  if (t_ != nil) {
    [t_ transformWithJavaLangDoubleArray:coords withInt:0 withJavaLangDoubleArray:coords withInt:0 withInt:count];
  }
  return type;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDAbstractArc_Iterator *typedCopy = (PythagorasDAbstractArc_Iterator *) copy;
  typedCopy.x = x_;
  typedCopy.y = y_;
  typedCopy.width = width_;
  typedCopy.height = height_;
  typedCopy.angle = angle_;
  typedCopy.extent = extent_;
  typedCopy.type = type_;
  typedCopy.t = t_;
  typedCopy.index = index_;
  typedCopy.arcCount = arcCount_;
  typedCopy.lineCount = lineCount_;
  typedCopy.step = step_;
  typedCopy.cos = cos_;
  typedCopy.sin = sin_;
  typedCopy.k = k_;
  typedCopy.kx = kx_;
  typedCopy.ky = ky_;
  typedCopy.mx = mx_;
  typedCopy.my = my_;
}

@end
