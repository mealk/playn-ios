//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/RectangularShape.java
//
//  Created by Thomas on 7/1/13.
//

#import "FlatteningPathIterator.h"
#import "IDimension.h"
#import "IPoint.h"
#import "IRectangle.h"
#import "IRectangularShape.h"
#import "IShape.h"
#import "PathIterator.h"
#import "Point.h"
#import "Rectangle.h"
#import "Transform.h"
#import "java/lang/Math.h"
#import "RectangularShape.h"

@implementation PythagorasDRectangularShape

- (void)setFrameWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)width
                withDouble:(double)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setFrameWithPythagorasDIPoint:(id<PythagorasDIPoint>)loc
            withPythagorasDIDimension:(id<PythagorasDIDimension>)size {
  [self setFrameWithDouble:[((id<PythagorasDIPoint>) NIL_CHK(loc)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(loc)) y] withDouble:[((id<PythagorasDIDimension>) NIL_CHK(size)) width] withDouble:[((id<PythagorasDIDimension>) NIL_CHK(size)) height]];
}

- (void)setFrameWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r {
  [self setFrameWithDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) x] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) y] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) width] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(r)) height]];
}

- (void)setFrameFromDiagonalWithDouble:(double)x1
                            withDouble:(double)y1
                            withDouble:(double)x2
                            withDouble:(double)y2 {
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
  [self setFrameWithDouble:rx withDouble:ry withDouble:rw withDouble:rh];
}

- (void)setFrameFromDiagonalWithPythagorasDIPoint:(id<PythagorasDIPoint>)p1
                            withPythagorasDIPoint:(id<PythagorasDIPoint>)p2 {
  [self setFrameFromDiagonalWithDouble:[((id<PythagorasDIPoint>) NIL_CHK(p1)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p1)) y] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p2)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(p2)) y]];
}

- (void)setFrameFromCenterWithDouble:(double)centerX
                          withDouble:(double)centerY
                          withDouble:(double)cornerX
                          withDouble:(double)cornerY {
  double width = [JavaLangMath absWithDouble:cornerX - centerX];
  double height = [JavaLangMath absWithDouble:cornerY - centerY];
  [self setFrameWithDouble:centerX - width withDouble:centerY - height withDouble:width * 2 withDouble:height * 2];
}

- (void)setFrameFromCenterWithPythagorasDIPoint:(id<PythagorasDIPoint>)center
                          withPythagorasDIPoint:(id<PythagorasDIPoint>)corner {
  [self setFrameFromCenterWithDouble:[((id<PythagorasDIPoint>) NIL_CHK(center)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(center)) y] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(corner)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(corner)) y]];
}

- (PythagorasDPoint *)min {
  return [[[PythagorasDPoint alloc] initWithDouble:[self minX] withDouble:[self minY]] autorelease];
}

- (double)minX {
  return [self x];
}

- (double)minY {
  return [self y];
}

- (PythagorasDPoint *)max {
  return [[[PythagorasDPoint alloc] initWithDouble:[self maxX] withDouble:[self maxY]] autorelease];
}

- (double)maxX {
  return [self x] + [self width];
}

- (double)maxY {
  return [self y] + [self height];
}

- (PythagorasDPoint *)center {
  return [[[PythagorasDPoint alloc] initWithDouble:[self centerX] withDouble:[self centerY]] autorelease];
}

- (double)centerX {
  return [self x] + [self width] / 2;
}

- (double)centerY {
  return [self y] + [self height] / 2;
}

- (PythagorasDRectangle *)frame {
  return [self bounds];
}

- (PythagorasDRectangle *)frameWithPythagorasDRectangle:(PythagorasDRectangle *)target {
  return [self boundsWithPythagorasDRectangle:target];
}

- (BOOL)isEmpty {
  return [self width] <= 0 || [self height] <= 0;
}

- (BOOL)containsWithPythagorasDIPoint:(id<PythagorasDIPoint>)point {
  return [self containsWithDouble:[((id<PythagorasDIPoint>) NIL_CHK(point)) x] withDouble:[((id<PythagorasDIPoint>) NIL_CHK(point)) y]];
}

- (BOOL)containsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)rect {
  return [self containsWithDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) x] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) y] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) width] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) height]];
}

- (BOOL)intersectsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)rect {
  return [self intersectsWithDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) x] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) y] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) width] withDouble:[((id<PythagorasDIRectangle>) NIL_CHK(rect)) height]];
}

- (PythagorasDRectangle *)bounds {
  return [self boundsWithPythagorasDRectangle:[[[PythagorasDRectangle alloc] init] autorelease]];
}

- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target {
  [((PythagorasDRectangle *) NIL_CHK(target)) setBoundsWithDouble:[self x] withDouble:[self y] withDouble:[self width] withDouble:[self height]];
  return target;
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t
                                                         withDouble:(double)flatness {
  return [[[PythagorasDFlatteningPathIterator alloc] initWithPythagorasDPathIterator:[self pathIteratorWithPythagorasDTransform:t] withDouble:flatness] autorelease];
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

- (BOOL)containsWithDouble:(double)param0
                withDouble:(double)param1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)containsWithDouble:(double)param0
                withDouble:(double)param1
                withDouble:(double)param2
                withDouble:(double)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)intersectsWithDouble:(double)param0
                  withDouble:(double)param1
                  withDouble:(double)param2
                  withDouble:(double)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
