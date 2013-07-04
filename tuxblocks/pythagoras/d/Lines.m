//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Lines.java
//
//  Created by Thomas on 7/1/13.
//

#import "java/lang/Math.h"
#import "Lines.h"

@implementation PythagorasDLines

+ (BOOL)linesIntersectWithDouble:(double)x1
                      withDouble:(double)y1
                      withDouble:(double)x2
                      withDouble:(double)y2
                      withDouble:(double)x3
                      withDouble:(double)y3
                      withDouble:(double)x4
                      withDouble:(double)y4 {
  x2 -= x1;
  y2 -= y1;
  x3 -= x1;
  y3 -= y1;
  x4 -= x1;
  y4 -= y1;
  double AvB = x2 * y3 - x3 * y2;
  double AvC = x2 * y4 - x4 * y2;
  if (AvB == 0 && AvC == 0) {
    if (x2 != 0) {
      return (x4 * x3 <= 0) || ((x3 * x2 >= 0) && (x2 > 0 ? x3 <= x2 || x4 <= x2 : x3 >= x2 || x4 >= x2));
    }
    if (y2 != 0) {
      return (y4 * y3 <= 0) || ((y3 * y2 >= 0) && (y2 > 0 ? y3 <= y2 || y4 <= y2 : y3 >= y2 || y4 >= y2));
    }
    return NO;
  }
  double BvC = x3 * y4 - x4 * y3;
  return (AvB * AvC <= 0) && (BvC * (AvB + BvC - AvC) <= 0);
}

+ (BOOL)lineIntersectsRectWithDouble:(double)x1
                          withDouble:(double)y1
                          withDouble:(double)x2
                          withDouble:(double)y2
                          withDouble:(double)rx
                          withDouble:(double)ry
                          withDouble:(double)rw
                          withDouble:(double)rh {
  double rr = rx + rw, rb = ry + rh;
  return (rx <= x1 && x1 <= rr && ry <= y1 && y1 <= rb) || (rx <= x2 && x2 <= rr && ry <= y2 && y2 <= rb) || [PythagorasDLines linesIntersectWithDouble:rx withDouble:ry withDouble:rr withDouble:rb withDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2] || [PythagorasDLines linesIntersectWithDouble:rr withDouble:ry withDouble:rx withDouble:rb withDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2];
}

+ (double)pointLineDistSqWithDouble:(double)px
                         withDouble:(double)py
                         withDouble:(double)x1
                         withDouble:(double)y1
                         withDouble:(double)x2
                         withDouble:(double)y2 {
  x2 -= x1;
  y2 -= y1;
  px -= x1;
  py -= y1;
  double s = px * y2 - py * x2;
  return (s * s) / (x2 * x2 + y2 * y2);
}

+ (double)pointLineDistWithDouble:(double)px
                       withDouble:(double)py
                       withDouble:(double)x1
                       withDouble:(double)y1
                       withDouble:(double)x2
                       withDouble:(double)y2 {
  return [JavaLangMath sqrtWithDouble:[PythagorasDLines pointLineDistSqWithDouble:px withDouble:py withDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2]];
}

+ (double)pointSegDistSqWithDouble:(double)px
                        withDouble:(double)py
                        withDouble:(double)x1
                        withDouble:(double)y1
                        withDouble:(double)x2
                        withDouble:(double)y2 {
  x2 -= x1;
  y2 -= y1;
  px -= x1;
  py -= y1;
  double dist;
  if (px * x2 + py * y2 <= 0.0) {
    dist = px * px + py * py;
  }
  else {
    px = x2 - px;
    py = y2 - py;
    if (px * x2 + py * y2 <= 0.0) {
      dist = px * px + py * py;
    }
    else {
      dist = px * y2 - py * x2;
      dist = dist * dist / (x2 * x2 + y2 * y2);
    }
  }
  if (dist < 0) {
    dist = 0;
  }
  return dist;
}

+ (double)pointSegDistWithDouble:(double)px
                      withDouble:(double)py
                      withDouble:(double)x1
                      withDouble:(double)y1
                      withDouble:(double)x2
                      withDouble:(double)y2 {
  return [JavaLangMath sqrtWithDouble:[PythagorasDLines pointSegDistSqWithDouble:px withDouble:py withDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2]];
}

+ (int)relativeCCWWithDouble:(double)px
                  withDouble:(double)py
                  withDouble:(double)x1
                  withDouble:(double)y1
                  withDouble:(double)x2
                  withDouble:(double)y2 {
  x2 -= x1;
  y2 -= y1;
  px -= x1;
  py -= y1;
  double t = px * y2 - py * x2;
  if (t == 0.0f) {
    t = px * x2 + py * y2;
    if (t > 0.0f) {
      px -= x2;
      py -= y2;
      t = px * x2 + py * y2;
      if (t < 0.0f) {
        t = 0.0f;
      }
    }
  }
  return (t < 0.0f) ? -1 : (t > 0.0f ? 1 : 0);
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end
