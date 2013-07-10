//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Arc.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Math.h"
#import "pythagoras/f/AbstractArc.h"
#import "pythagoras/f/Arc.h"
#import "pythagoras/f/FloatMath.h"
#import "pythagoras/f/IArc.h"
#import "pythagoras/f/IDimension.h"
#import "pythagoras/f/IPoint.h"
#import "pythagoras/f/IRectangle.h"
#import "pythagoras/f/RectangularShape.h"

@implementation PythagorasFArc

@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize width_ = width__;
@synthesize height_ = height__;
@synthesize start = start_;
@synthesize extent = extent_;
@synthesize type = type_;

- (id)init {
  return [self initPythagorasFArcWithInt:PythagorasFIArc_OPEN];
}

- (id)initPythagorasFArcWithInt:(int)type {
  if ((self = [super init])) {
    [self setArcTypeWithInt:type];
  }
  return self;
}

- (id)initWithInt:(int)type {
  return [self initPythagorasFArcWithInt:type];
}

- (id)initWithFloat:(float)x
          withFloat:(float)y
          withFloat:(float)width
          withFloat:(float)height
          withFloat:(float)start
          withFloat:(float)extent
            withInt:(int)type {
  if ((self = [super init])) {
    [self setArcWithFloat:x withFloat:y withFloat:width withFloat:height withFloat:start withFloat:extent withInt:type];
  }
  return self;
}

- (id)initWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)bounds
                          withFloat:(float)start
                          withFloat:(float)extent
                            withInt:(int)type {
  if ((self = [super init])) {
    [self setArcWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(bounds)) x] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(bounds)) y] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(bounds)) width] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(bounds)) height] withFloat:start withFloat:extent withInt:type];
  }
  return self;
}

- (int)arcType {
  return type_;
}

- (float)x {
  return x__;
}

- (float)y {
  return y__;
}

- (float)width {
  return width__;
}

- (float)height {
  return height__;
}

- (float)angleStart {
  return start_;
}

- (float)angleExtent {
  return extent_;
}

- (void)setArcTypeWithInt:(int)type {
  if (type != PythagorasFIArc_OPEN && type != PythagorasFIArc_CHORD && type != PythagorasFIArc_PIE) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Invalid Arc type: %d", type]];
  }
  self.type = type;
}

- (void)setAngleStartWithFloat:(float)start {
  self.start = start;
}

- (void)setAngleExtentWithFloat:(float)extent {
  self.extent = extent;
}

- (void)setArcWithFloat:(float)x
              withFloat:(float)y
              withFloat:(float)width
              withFloat:(float)height
              withFloat:(float)start
              withFloat:(float)extent
                withInt:(int)type {
  [self setArcTypeWithInt:type];
  self.x_ = x;
  self.y_ = y;
  self.width_ = width;
  self.height_ = height;
  self.start = start;
  self.extent = extent;
}

- (void)setArcWithPythagorasFIPoint:(id<PythagorasFIPoint>)point
          withPythagorasFIDimension:(id<PythagorasFIDimension>)size
                          withFloat:(float)start
                          withFloat:(float)extent
                            withInt:(int)type {
  [self setArcWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(point)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(point)) y] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(size)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(size)) height] withFloat:start withFloat:extent withInt:type];
}

- (void)setArcWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)rect
                              withFloat:(float)start
                              withFloat:(float)extent
                                withInt:(int)type {
  [self setArcWithFloat:[((id<PythagorasFIRectangle>) NIL_CHK(rect)) x] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(rect)) y] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(rect)) width] withFloat:[((id<PythagorasFIRectangle>) NIL_CHK(rect)) height] withFloat:start withFloat:extent withInt:type];
}

- (void)setArcWithPythagorasFIArc:(id<PythagorasFIArc>)arc {
  [self setArcWithFloat:[((id<PythagorasFIArc>) NIL_CHK(arc)) x] withFloat:[((id<PythagorasFIArc>) NIL_CHK(arc)) y] withFloat:[((id<PythagorasFIArc>) NIL_CHK(arc)) width] withFloat:[((id<PythagorasFIArc>) NIL_CHK(arc)) height] withFloat:[((id<PythagorasFIArc>) NIL_CHK(arc)) angleStart] withFloat:[((id<PythagorasFIArc>) NIL_CHK(arc)) angleExtent] withInt:[((id<PythagorasFIArc>) NIL_CHK(arc)) arcType]];
}

- (void)setArcByCenterWithFloat:(float)x
                      withFloat:(float)y
                      withFloat:(float)radius
                      withFloat:(float)start
                      withFloat:(float)extent
                        withInt:(int)type {
  [self setArcWithFloat:x - radius withFloat:y - radius withFloat:radius * 2.0f withFloat:radius * 2.0f withFloat:start withFloat:extent withInt:type];
}

- (void)setArcByTangentWithPythagorasFIPoint:(id<PythagorasFIPoint>)p1
                       withPythagorasFIPoint:(id<PythagorasFIPoint>)p2
                       withPythagorasFIPoint:(id<PythagorasFIPoint>)p3
                                   withFloat:(float)radius {
  float a1 = -[PythagorasFFloatMath atan2WithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p1)) y] - [((id<PythagorasFIPoint>) NIL_CHK(p2)) y] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p1)) x] - [((id<PythagorasFIPoint>) NIL_CHK(p2)) x]];
  float a2 = -[PythagorasFFloatMath atan2WithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p3)) y] - [((id<PythagorasFIPoint>) NIL_CHK(p2)) y] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p3)) x] - [((id<PythagorasFIPoint>) NIL_CHK(p2)) x]];
  float am = (a1 + a2) / 2.0f;
  float ah = a1 - am;
  float d = radius / [JavaLangMath absWithFloat:[PythagorasFFloatMath sinWithFloat:ah]];
  float x = [((id<PythagorasFIPoint>) NIL_CHK(p2)) x] + d * [PythagorasFFloatMath cosWithFloat:am];
  float y = [((id<PythagorasFIPoint>) NIL_CHK(p2)) y] - d * [PythagorasFFloatMath sinWithFloat:am];
  ah = ah >= 0.0f ? PythagorasFFloatMath_PI * 1.5f - ah : PythagorasFFloatMath_PI * 0.5f - ah;
  a1 = [self normAngleWithFloat:[PythagorasFFloatMath toDegreesWithFloat:am - ah]];
  a2 = [self normAngleWithFloat:[PythagorasFFloatMath toDegreesWithFloat:am + ah]];
  float delta = a2 - a1;
  if (delta <= 0.0f) {
    delta += 360.0f;
  }
  [self setArcByCenterWithFloat:x withFloat:y withFloat:radius withFloat:a1 withFloat:delta withInt:type_];
}

- (void)setAngleStartWithPythagorasFIPoint:(id<PythagorasFIPoint>)point {
  float angle = [PythagorasFFloatMath atan2WithFloat:[((id<PythagorasFIPoint>) NIL_CHK(point)) y] - [self centerY] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(point)) x] - [self centerX]];
  [self setAngleStartWithFloat:[self normAngleWithFloat:-[PythagorasFFloatMath toDegreesWithFloat:angle]]];
}

- (void)setAnglesWithFloat:(float)x1
                 withFloat:(float)y1
                 withFloat:(float)x2
                 withFloat:(float)y2 {
  float cx = [self centerX];
  float cy = [self centerY];
  float a1 = [self normAngleWithFloat:-[PythagorasFFloatMath toDegreesWithFloat:[PythagorasFFloatMath atan2WithFloat:y1 - cy withFloat:x1 - cx]]];
  float a2 = [self normAngleWithFloat:-[PythagorasFFloatMath toDegreesWithFloat:[PythagorasFFloatMath atan2WithFloat:y2 - cy withFloat:x2 - cx]]];
  a2 -= a1;
  if (a2 <= 0.0f) {
    a2 += 360.0f;
  }
  [self setAngleStartWithFloat:a1];
  [self setAngleExtentWithFloat:a2];
}

- (void)setAnglesWithPythagorasFIPoint:(id<PythagorasFIPoint>)p1
                 withPythagorasFIPoint:(id<PythagorasFIPoint>)p2 {
  [self setAnglesWithFloat:[((id<PythagorasFIPoint>) NIL_CHK(p1)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p1)) y] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p2)) x] withFloat:[((id<PythagorasFIPoint>) NIL_CHK(p2)) y]];
}

- (void)setFrameWithFloat:(float)x
                withFloat:(float)y
                withFloat:(float)width
                withFloat:(float)height {
  [self setArcWithFloat:x withFloat:y withFloat:width withFloat:height withFloat:[self angleStart] withFloat:[self angleExtent] withInt:type_];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFArc *typedCopy = (PythagorasFArc *) copy;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.width_ = width__;
  typedCopy.height_ = height__;
  typedCopy.start = start_;
  typedCopy.extent = extent_;
  typedCopy.type = type_;
}

@end
