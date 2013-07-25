//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Path.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSByteArray.h"
#include "IOSClass.h"
#include "IOSDoubleArray.h"
#include "IOSIntArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/util/NoSuchElementException.h"
#include "pythagoras/d/Crossing.h"
#include "pythagoras/d/FlatteningPathIterator.h"
#include "pythagoras/d/IPoint.h"
#include "pythagoras/d/IRectangle.h"
#include "pythagoras/d/IShape.h"
#include "pythagoras/d/IllegalPathStateException.h"
#include "pythagoras/d/Path.h"
#include "pythagoras/d/PathIterator.h"
#include "pythagoras/d/Point.h"
#include "pythagoras/d/Rectangle.h"
#include "pythagoras/d/Transform.h"
#include "pythagoras/util/Platform.h"

@implementation PythagorasDPath

static IOSIntArray * PythagorasDPath_pointShift_;

@synthesize types = types_;
@synthesize points = points_;
@synthesize typeSize = typeSize_;
@synthesize pointSize = pointSize_;
@synthesize rule = rule_;

+ (int)WIND_EVEN_ODD {
  return PythagorasDPath_WIND_EVEN_ODD;
}

+ (int)WIND_NON_ZERO {
  return PythagorasDPath_WIND_NON_ZERO;
}

+ (IOSIntArray *)pointShift {
  return PythagorasDPath_pointShift_;
}

+ (void)setPointShift:(IOSIntArray *)pointShift {
  PythagorasDPath_pointShift_ = pointShift;
}

+ (int)BUFFER_SIZE {
  return PythagorasDPath_BUFFER_SIZE;
}

+ (int)BUFFER_CAPACITY {
  return PythagorasDPath_BUFFER_CAPACITY;
}

- (id)init {
  return [self initPythagorasDPathWithInt:PythagorasDPath_WIND_NON_ZERO withInt:PythagorasDPath_BUFFER_SIZE];
}

- (id)initWithInt:(int)rule {
  return [self initPythagorasDPathWithInt:rule withInt:PythagorasDPath_BUFFER_SIZE];
}

- (id)initPythagorasDPathWithInt:(int)rule
                         withInt:(int)initialCapacity {
  if ((self = [super init])) {
    [self setWindingRuleWithInt:rule];
    types_ = [IOSByteArray arrayWithLength:initialCapacity];
    points_ = [IOSDoubleArray arrayWithLength:initialCapacity * 2];
  }
  return self;
}

- (id)initWithInt:(int)rule
          withInt:(int)initialCapacity {
  return [self initPythagorasDPathWithInt:rule withInt:initialCapacity];
}

- (id)initWithPythagorasDIShape:(id<PythagorasDIShape>)shape {
  if ((self = [self initPythagorasDPathWithInt:PythagorasDPath_WIND_NON_ZERO withInt:PythagorasDPath_BUFFER_SIZE])) {
    id<PythagorasDPathIterator> p = [((id<PythagorasDIShape>) nil_chk(shape)) pathIteratorWithPythagorasDTransform:nil];
    [self setWindingRuleWithInt:[((id<PythagorasDPathIterator>) nil_chk(p)) windingRule]];
    [self appendWithPythagorasDPathIterator:p withBOOL:NO];
  }
  return self;
}

- (void)setWindingRuleWithInt:(int)rule {
  if (rule != PythagorasDPath_WIND_EVEN_ODD && rule != PythagorasDPath_WIND_NON_ZERO) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Invalid winding rule value"];
  }
  self.rule = rule;
}

- (int)windingRule {
  return rule_;
}

- (void)moveToWithDouble:(double)x
              withDouble:(double)y {
  if (typeSize_ > 0 && [((IOSByteArray *) nil_chk(types_)) byteAtIndex:typeSize_ - 1] == PythagorasDPathIterator_SEG_MOVETO) {
    (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_ - 2]) = x;
    (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_ - 1]) = y;
  }
  else {
    [self checkBufWithInt:2 withBOOL:NO];
    (*[((IOSByteArray *) nil_chk(types_)) byteRefAtIndex:typeSize_++]) = PythagorasDPathIterator_SEG_MOVETO;
    (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = x;
    (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = y;
  }
}

- (void)lineToWithDouble:(double)x
              withDouble:(double)y {
  [self checkBufWithInt:2 withBOOL:YES];
  (*[((IOSByteArray *) nil_chk(types_)) byteRefAtIndex:typeSize_++]) = PythagorasDPathIterator_SEG_LINETO;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = x;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = y;
}

- (void)quadToWithDouble:(double)x1
              withDouble:(double)y1
              withDouble:(double)x2
              withDouble:(double)y2 {
  [self checkBufWithInt:4 withBOOL:YES];
  (*[((IOSByteArray *) nil_chk(types_)) byteRefAtIndex:typeSize_++]) = PythagorasDPathIterator_SEG_QUADTO;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = x1;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = y1;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = x2;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = y2;
}

- (void)curveToWithDouble:(double)x1
               withDouble:(double)y1
               withDouble:(double)x2
               withDouble:(double)y2
               withDouble:(double)x3
               withDouble:(double)y3 {
  [self checkBufWithInt:6 withBOOL:YES];
  (*[((IOSByteArray *) nil_chk(types_)) byteRefAtIndex:typeSize_++]) = PythagorasDPathIterator_SEG_CUBICTO;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = x1;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = y1;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = x2;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = y2;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = x3;
  (*[((IOSDoubleArray *) nil_chk(points_)) doubleRefAtIndex:pointSize_++]) = y3;
}

- (void)closePath {
  if (typeSize_ == 0 || [((IOSByteArray *) nil_chk(types_)) byteAtIndex:typeSize_ - 1] != PythagorasDPathIterator_SEG_CLOSE) {
    [self checkBufWithInt:0 withBOOL:YES];
    (*[((IOSByteArray *) nil_chk(types_)) byteRefAtIndex:typeSize_++]) = PythagorasDPathIterator_SEG_CLOSE;
  }
}

- (void)appendWithPythagorasDIShape:(id<PythagorasDIShape>)shape
                           withBOOL:(BOOL)connect {
  id<PythagorasDPathIterator> p = [((id<PythagorasDIShape>) nil_chk(shape)) pathIteratorWithPythagorasDTransform:nil];
  [self appendWithPythagorasDPathIterator:p withBOOL:connect];
}

- (void)appendWithPythagorasDPathIterator:(id<PythagorasDPathIterator>)path
                                 withBOOL:(BOOL)connect {
  while (![((id<PythagorasDPathIterator>) nil_chk(path)) isDone]) {
    IOSDoubleArray *coords = [IOSDoubleArray arrayWithLength:6];
    switch ([((id<PythagorasDPathIterator>) nil_chk(path)) currentSegmentWithDoubleArray:coords]) {
      case PythagorasDPathIterator_SEG_MOVETO:
      if (!connect || typeSize_ == 0) {
        [self moveToWithDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:0] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:1]];
      }
      else if ([((IOSByteArray *) nil_chk(types_)) byteAtIndex:typeSize_ - 1] != PythagorasDPathIterator_SEG_CLOSE && [((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:pointSize_ - 2] == [((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:0] && [((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:pointSize_ - 1] == [((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:1]) {
      }
      else {
        [self lineToWithDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:0] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:1]];
      }
      break;
      case PythagorasDPathIterator_SEG_LINETO:
      [self lineToWithDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:0] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:1]];
      break;
      case PythagorasDPathIterator_SEG_QUADTO:
      [self quadToWithDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:0] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:1] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:2] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:3]];
      break;
      case PythagorasDPathIterator_SEG_CUBICTO:
      [self curveToWithDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:0] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:1] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:2] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:3] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:4] withDouble:[((IOSDoubleArray *) nil_chk(coords)) doubleAtIndex:5]];
      break;
      case PythagorasDPathIterator_SEG_CLOSE:
      [self closePath];
      break;
    }
    [((id<PythagorasDPathIterator>) nil_chk(path)) next];
    connect = NO;
  }
}

- (PythagorasDPoint *)currentPoint {
  if (typeSize_ == 0) {
    return nil;
  }
  int j = pointSize_ - 2;
  if ([((IOSByteArray *) nil_chk(types_)) byteAtIndex:typeSize_ - 1] == PythagorasDPathIterator_SEG_CLOSE) {
    for (int i = typeSize_ - 2; i > 0; i--) {
      int type = [((IOSByteArray *) nil_chk(types_)) byteAtIndex:i];
      if (type == PythagorasDPathIterator_SEG_MOVETO) {
        break;
      }
      j -= [((IOSIntArray *) nil_chk(PythagorasDPath_pointShift_)) intAtIndex:type];
    }
  }
  return [[PythagorasDPoint alloc] initWithDouble:[((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:j] withDouble:[((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:j + 1]];
}

- (void)reset {
  typeSize_ = 0;
  pointSize_ = 0;
}

- (void)transformWithPythagorasDTransform:(id<PythagorasDTransform>)t {
  [((id<PythagorasDTransform>) nil_chk(t)) transformWithDoubleArray:points_ withInt:0 withDoubleArray:points_ withInt:0 withInt:pointSize_ / 2];
}

- (id<PythagorasDIShape>)createTransformedShapeWithPythagorasDTransform:(id<PythagorasDTransform>)t {
  PythagorasDPath *p = [self clone];
  if (t != nil) {
    [((PythagorasDPath *) nil_chk(p)) transformWithPythagorasDTransform:t];
  }
  return p;
}

- (PythagorasDRectangle *)bounds {
  return [self boundsWithPythagorasDRectangle:[[PythagorasDRectangle alloc] init]];
}

- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target {
  double rx1, ry1, rx2, ry2;
  if (pointSize_ == 0) {
    rx1 = ry1 = rx2 = ry2 = 0.0f;
  }
  else {
    int i = pointSize_ - 1;
    ry1 = ry2 = [((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:i--];
    rx1 = rx2 = [((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:i--];
    while (i > 0) {
      double y = [((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:i--];
      double x = [((IOSDoubleArray *) nil_chk(points_)) doubleAtIndex:i--];
      if (x < rx1) {
        rx1 = x;
      }
      else if (x > rx2) {
        rx2 = x;
      }
      if (y < ry1) {
        ry1 = y;
      }
      else if (y > ry2) {
        ry2 = y;
      }
    }
  }
  [((PythagorasDRectangle *) nil_chk(target)) setBoundsWithDouble:rx1 withDouble:ry1 withDouble:rx2 - rx1 withDouble:ry2 - ry1];
  return target;
}

- (BOOL)isEmpty {
  return [((PythagorasDRectangle *) nil_chk([self bounds])) isEmpty];
}

- (BOOL)containsWithDouble:(double)px
                withDouble:(double)py {
  return [self isInsideWithInt:[PythagorasDCrossing crossShapeWithPythagorasDIShape:self withDouble:px withDouble:py]];
}

- (BOOL)containsWithDouble:(double)rx
                withDouble:(double)ry
                withDouble:(double)rw
                withDouble:(double)rh {
  int cross = [PythagorasDCrossing intersectShapeWithPythagorasDIShape:self withDouble:rx withDouble:ry withDouble:rw withDouble:rh];
  return cross != PythagorasDCrossing_CROSSING && [self isInsideWithInt:cross];
}

- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh {
  int cross = [PythagorasDCrossing intersectShapeWithPythagorasDIShape:self withDouble:rx withDouble:ry withDouble:rw withDouble:rh];
  return cross == PythagorasDCrossing_CROSSING || [self isInsideWithInt:cross];
}

- (BOOL)containsWithPythagorasDIPoint:(id<PythagorasDIPoint>)p {
  return [self containsWithDouble:[((id<PythagorasDIPoint>) nil_chk(p)) x] withDouble:[((id<PythagorasDIPoint>) nil_chk(p)) y]];
}

- (BOOL)containsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  return [self containsWithDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) x] withDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) y] withDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) width] withDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) height]];
}

- (BOOL)intersectsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  return [self intersectsWithDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) x] withDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) y] withDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) width] withDouble:[((id<PythagorasDIRectangle>) nil_chk(r)) height]];
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t {
  return [[PythagorasDPath_Iterator alloc] initWithPythagorasDPath:self withPythagorasDTransform:t];
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t
                                                         withDouble:(double)flatness {
  return [[PythagorasDFlatteningPathIterator alloc] initWithPythagorasDPathIterator:[self pathIteratorWithPythagorasDTransform:t] withDouble:flatness];
}

- (PythagorasDPath *)clone {
  return [[PythagorasDPath alloc] initWithInt:rule_ withByteArray:[PythagorasUtilPlatform cloneWithByteArray:types_] withDoubleArray:[PythagorasUtilPlatform cloneWithDoubleArray:points_] withInt:typeSize_ withInt:pointSize_];
}

- (void)checkBufWithInt:(int)pointCount
               withBOOL:(BOOL)checkMove {
  if (checkMove && typeSize_ == 0) {
    @throw [[PythagorasDIllegalPathStateException alloc] initWithNSString:@"First segment must be a SEG_MOVETO"];
  }
  if (typeSize_ == (int) [((IOSByteArray *) nil_chk(types_)) count]) {
    IOSByteArray *tmp = [IOSByteArray arrayWithLength:typeSize_ + PythagorasDPath_BUFFER_CAPACITY];
    [JavaLangSystem arraycopyWithId:types_ withInt:0 withId:tmp withInt:0 withInt:typeSize_];
    types_ = tmp;
  }
  if (pointSize_ + pointCount > (int) [((IOSDoubleArray *) nil_chk(points_)) count]) {
    IOSDoubleArray *tmp = [IOSDoubleArray arrayWithLength:pointSize_ + [JavaLangMath maxWithInt:PythagorasDPath_BUFFER_CAPACITY * 2 withInt:pointCount]];
    [JavaLangSystem arraycopyWithId:points_ withInt:0 withId:tmp withInt:0 withInt:pointSize_];
    points_ = tmp;
  }
}

- (BOOL)isInsideWithInt:(int)cross {
  return (rule_ == PythagorasDPath_WIND_NON_ZERO) ? [PythagorasDCrossing isInsideNonZeroWithInt:cross] : [PythagorasDCrossing isInsideEvenOddWithInt:cross];
}

- (id)initWithInt:(int)rule
    withByteArray:(IOSByteArray *)types
  withDoubleArray:(IOSDoubleArray *)points
          withInt:(int)typeSize
          withInt:(int)pointSize {
  if ((self = [super init])) {
    self.rule = rule;
    self.types = types;
    self.points = points;
    self.typeSize = typeSize;
    self.pointSize = pointSize;
  }
  return self;
}

+ (void)initialize {
  if (self == [PythagorasDPath class]) {
    PythagorasDPath_pointShift_ = [IOSIntArray arrayWithInts:(int[]){ 2, 2, 4, 6, 0 } count:5];
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [self clone];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDPath *typedCopy = (PythagorasDPath *) copy;
  typedCopy.types = types_;
  typedCopy.points = points_;
  typedCopy.typeSize = typeSize_;
  typedCopy.pointSize = pointSize_;
  typedCopy.rule = rule_;
}

@end
@implementation PythagorasDPath_Iterator

@synthesize typeIndex = typeIndex_;
@synthesize pointIndex = pointIndex_;
@synthesize p = p_;
@synthesize t = t_;

- (id)initWithPythagorasDPath:(PythagorasDPath *)path {
  return [self initPythagorasDPath_IteratorWithPythagorasDPath:path withPythagorasDTransform:nil];
}

- (id)initPythagorasDPath_IteratorWithPythagorasDPath:(PythagorasDPath *)path
                             withPythagorasDTransform:(id<PythagorasDTransform>)at {
  if ((self = [super init])) {
    self.p = path;
    self.t = at;
  }
  return self;
}

- (id)initWithPythagorasDPath:(PythagorasDPath *)path
     withPythagorasDTransform:(id<PythagorasDTransform>)at {
  return [self initPythagorasDPath_IteratorWithPythagorasDPath:path withPythagorasDTransform:at];
}

- (int)windingRule {
  return [((PythagorasDPath *) nil_chk(p_)) windingRule];
}

- (BOOL)isDone {
  return typeIndex_ >= ((PythagorasDPath *) nil_chk(p_)).typeSize;
}

- (void)next {
  typeIndex_++;
}

- (int)currentSegmentWithDoubleArray:(IOSDoubleArray *)coords {
  if ([self isDone]) {
    @throw [[JavaUtilNoSuchElementException alloc] initWithNSString:@"Iterator out of bounds"];
  }
  int type = [((IOSByteArray *) nil_chk(((PythagorasDPath *) nil_chk(p_)).types)) byteAtIndex:typeIndex_];
  int count = [((IOSIntArray *) nil_chk([PythagorasDPath pointShift])) intAtIndex:type];
  [JavaLangSystem arraycopyWithId:((PythagorasDPath *) nil_chk(p_)).points withInt:pointIndex_ withId:coords withInt:0 withInt:count];
  if (t_ != nil) {
    [t_ transformWithDoubleArray:coords withInt:0 withDoubleArray:coords withInt:0 withInt:count / 2];
  }
  pointIndex_ += count;
  return type;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDPath_Iterator *typedCopy = (PythagorasDPath_Iterator *) copy;
  typedCopy.typeIndex = typeIndex_;
  typedCopy.pointIndex = pointIndex_;
  typedCopy.p = p_;
  typedCopy.t = t_;
}

@end
