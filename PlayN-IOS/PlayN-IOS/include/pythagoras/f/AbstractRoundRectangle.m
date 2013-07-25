//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractRoundRectangle.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSFloatArray.h"
#include "IOSIntArray.h"
#include "IOSObjectArray.h"
#include "java/lang/Math.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/f/AbstractRoundRectangle.h"
#include "pythagoras/f/FloatMath.h"
#include "pythagoras/f/IRectangularShape.h"
#include "pythagoras/f/IRoundRectangle.h"
#include "pythagoras/f/PathIterator.h"
#include "pythagoras/f/RectangularShape.h"
#include "pythagoras/f/RoundRectangle.h"
#include "pythagoras/f/Transform.h"

@implementation PythagorasFAbstractRoundRectangle

static IOSIntArray * PythagorasFAbstractRoundRectangle_TYPES_;
static float PythagorasFAbstractRoundRectangle_U_;
static IOSObjectArray * PythagorasFAbstractRoundRectangle_POINTS_;

+ (IOSIntArray *)TYPES {
  return PythagorasFAbstractRoundRectangle_TYPES_;
}

+ (float)U {
  return PythagorasFAbstractRoundRectangle_U_;
}

+ (IOSObjectArray *)POINTS {
  return PythagorasFAbstractRoundRectangle_POINTS_;
}

- (PythagorasFRoundRectangle *)clone {
  return [[PythagorasFRoundRectangle alloc] initWithFloat:[self x] withFloat:[self y] withFloat:[self width] withFloat:[self height] withFloat:[self arcWidth] withFloat:[self arcHeight]];
}

- (BOOL)containsWithFloat:(float)px
                withFloat:(float)py {
  if ([self isEmpty]) return NO;
  float rx1 = [self x], ry1 = [self y];
  float rx2 = rx1 + [self width], ry2 = ry1 + [self height];
  if (px < rx1 || px >= rx2 || py < ry1 || py >= ry2) {
    return NO;
  }
  float aw = [self arcWidth] / 2.0f, ah = [self arcHeight] / 2.0f;
  float cx, cy;
  if (px < rx1 + aw) {
    cx = rx1 + aw;
  }
  else if (px > rx2 - aw) {
    cx = rx2 - aw;
  }
  else {
    return YES;
  }
  if (py < ry1 + ah) {
    cy = ry1 + ah;
  }
  else if (py > ry2 - ah) {
    cy = ry2 - ah;
  }
  else {
    return YES;
  }
  px = (px - cx) / aw;
  py = (py - cy) / ah;
  return px * px + py * py <= 1.0f;
}

- (BOOL)containsWithFloat:(float)rx
                withFloat:(float)ry
                withFloat:(float)rw
                withFloat:(float)rh {
  if ([self isEmpty] || rw <= 0.0f || rh <= 0.0f) return NO;
  float rx1 = rx, ry1 = ry, rx2 = rx + rw, ry2 = ry + rh;
  return [self containsWithFloat:rx1 withFloat:ry1] && [self containsWithFloat:rx2 withFloat:ry1] && [self containsWithFloat:rx2 withFloat:ry2] && [self containsWithFloat:rx1 withFloat:ry2];
}

- (BOOL)intersectsWithFloat:(float)rx
                  withFloat:(float)ry
                  withFloat:(float)rw
                  withFloat:(float)rh {
  if ([self isEmpty] || rw <= 0.0f || rh <= 0.0f) return NO;
  float x1 = [self x], y1 = [self y], x2 = x1 + [self width], y2 = y1 + [self height];
  float rx1 = rx, ry1 = ry, rx2 = rx + rw, ry2 = ry + rh;
  if (rx2 < x1 || x2 < rx1 || ry2 < y1 || y2 < ry1) {
    return NO;
  }
  float cx = (x1 + x2) / 2.0f, cy = (y1 + y2) / 2.0f;
  float nx = cx < rx1 ? rx1 : (cx > rx2 ? rx2 : cx);
  float ny = cy < ry1 ? ry1 : (cy > ry2 ? ry2 : cy);
  return [self containsWithFloat:nx withFloat:ny];
}

- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)at {
  return [[PythagorasFAbstractRoundRectangle_Iterator alloc] initWithPythagorasFIRoundRectangle:self withPythagorasFTransform:at];
}

- (float)arcHeight {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)arcWidth {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)x {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)y {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [PythagorasFAbstractRoundRectangle class]) {
    PythagorasFAbstractRoundRectangle_TYPES_ = [IOSIntArray arrayWithInts:(int[]){ PythagorasFPathIterator_SEG_MOVETO, PythagorasFPathIterator_SEG_LINETO, PythagorasFPathIterator_SEG_CUBICTO, PythagorasFPathIterator_SEG_LINETO, PythagorasFPathIterator_SEG_CUBICTO, PythagorasFPathIterator_SEG_LINETO, PythagorasFPathIterator_SEG_CUBICTO, PythagorasFPathIterator_SEG_LINETO, PythagorasFPathIterator_SEG_CUBICTO } count:9];
    PythagorasFAbstractRoundRectangle_U_ = 0.5f - 2.0f / 3.0f * ([PythagorasFFloatMath sqrtWithFloat:2.0f] - 1.0f);
    PythagorasFAbstractRoundRectangle_POINTS_ = [IOSObjectArray arrayWithObjects:(id[]){ [IOSFloatArray arrayWithFloats:(float[]){ 0.0f, 0.5f, 0.0f, 0.0f } count:4], [IOSFloatArray arrayWithFloats:(float[]){ 1.0f, -0.5f, 0.0f, 0.0f } count:4], [IOSFloatArray arrayWithFloats:(float[]){ 1.0f, -PythagorasFAbstractRoundRectangle_U_, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, PythagorasFAbstractRoundRectangle_U_, 1.0f, 0.0f, 0.0f, 0.5f } count:12], [IOSFloatArray arrayWithFloats:(float[]){ 1.0f, 0.0f, 1.0f, -0.5f } count:4], [IOSFloatArray arrayWithFloats:(float[]){ 1.0f, 0.0f, 1.0f, -PythagorasFAbstractRoundRectangle_U_, 1.0f, -PythagorasFAbstractRoundRectangle_U_, 1.0f, 0.0f, 1.0f, -0.5f, 1.0f, 0.0f } count:12], [IOSFloatArray arrayWithFloats:(float[]){ 0.0f, 0.5f, 1.0f, 0.0f } count:4], [IOSFloatArray arrayWithFloats:(float[]){ 0.0f, PythagorasFAbstractRoundRectangle_U_, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -PythagorasFAbstractRoundRectangle_U_, 0.0f, 0.0f, 1.0f, -0.5f } count:12], [IOSFloatArray arrayWithFloats:(float[]){ 0.0f, 0.0f, 0.0f, 0.5f } count:4], [IOSFloatArray arrayWithFloats:(float[]){ 0.0f, 0.0f, 0.0f, PythagorasFAbstractRoundRectangle_U_, 0.0f, PythagorasFAbstractRoundRectangle_U_, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f, 0.0f } count:12] } count:9 type:[IOSFloatArray iosClass]];
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

@end
@implementation PythagorasFAbstractRoundRectangle_Iterator

@synthesize x = x_;
@synthesize y = y_;
@synthesize width = width_;
@synthesize height = height_;
@synthesize aw = aw_;
@synthesize ah = ah_;
@synthesize t = t_;
@synthesize index = index_;

- (id)initWithPythagorasFIRoundRectangle:(id<PythagorasFIRoundRectangle>)rr
                withPythagorasFTransform:(id<PythagorasFTransform>)at {
  if ((self = [super init])) {
    self.x = [((id<PythagorasFIRoundRectangle>) nil_chk(rr)) x];
    self.y = [((id<PythagorasFIRoundRectangle>) nil_chk(rr)) y];
    self.width = [((id<PythagorasFIRoundRectangle>) nil_chk(rr)) width];
    self.height = [((id<PythagorasFIRoundRectangle>) nil_chk(rr)) height];
    self.aw = [JavaLangMath minWithFloat:width_ withFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) arcWidth]];
    self.ah = [JavaLangMath minWithFloat:height_ withFloat:[((id<PythagorasFIRoundRectangle>) nil_chk(rr)) arcHeight]];
    self.t = at;
    if (width_ < 0.0f || height_ < 0.0f || aw_ < 0.0f || ah_ < 0.0f) {
      index_ = (int) [((IOSObjectArray *) nil_chk([PythagorasFAbstractRoundRectangle POINTS])) count];
    }
  }
  return self;
}

- (int)windingRule {
  return PythagorasFPathIterator_WIND_NON_ZERO;
}

- (BOOL)isDone {
  return index_ > (int) [((IOSObjectArray *) nil_chk([PythagorasFAbstractRoundRectangle POINTS])) count];
}

- (void)next {
  index_++;
}

- (int)currentSegmentWithFloatArray:(IOSFloatArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  if (index_ == (int) [((IOSObjectArray *) nil_chk([PythagorasFAbstractRoundRectangle POINTS])) count]) {
    return PythagorasFPathIterator_SEG_CLOSE;
  }
  int j = 0;
  IOSFloatArray *p = [((IOSObjectArray *) nil_chk([PythagorasFAbstractRoundRectangle POINTS])) objectAtIndex:index_];
  for (int i = 0; i < (int) [((IOSFloatArray *) nil_chk(p)) count]; i += 4) {
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:j++]) = x_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:i + 0] * width_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:i + 1] * aw_;
    (*[((IOSFloatArray *) nil_chk(coords)) floatRefAtIndex:j++]) = y_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:i + 2] * height_ + [((IOSFloatArray *) nil_chk(p)) floatAtIndex:i + 3] * ah_;
  }
  if (t_ != nil) {
    [t_ transformWithFloatArray:coords withInt:0 withFloatArray:coords withInt:0 withInt:j / 2];
  }
  return [((IOSIntArray *) nil_chk([PythagorasFAbstractRoundRectangle TYPES])) intAtIndex:index_];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFAbstractRoundRectangle_Iterator *typedCopy = (PythagorasFAbstractRoundRectangle_Iterator *) copy;
  typedCopy.x = x_;
  typedCopy.y = y_;
  typedCopy.width = width_;
  typedCopy.height = height_;
  typedCopy.aw = aw_;
  typedCopy.ah = ah_;
  typedCopy.t = t_;
  typedCopy.index = index_;
}

@end
