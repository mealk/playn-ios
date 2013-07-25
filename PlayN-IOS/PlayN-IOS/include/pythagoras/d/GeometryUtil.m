//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/GeometryUtil.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSDoubleArray.h"
#include "java/lang/Math.h"
#include "pythagoras/d/Crossing.h"
#include "pythagoras/d/GeometryUtil.h"

@implementation PythagorasDGeometryUtil

static double PythagorasDGeometryUtil_EPSILON_;

+ (double)EPSILON {
  return PythagorasDGeometryUtil_EPSILON_;
}

+ (int)intersectLinesWithParamsWithDouble:(double)x1
                               withDouble:(double)y1
                               withDouble:(double)x2
                               withDouble:(double)y2
                               withDouble:(double)x3
                               withDouble:(double)y3
                               withDouble:(double)x4
                               withDouble:(double)y4
                          withDoubleArray:(IOSDoubleArray *)params {
  double dx = x4 - x3;
  double dy = y4 - y3;
  double d = dx * (y2 - y1) - dy * (x2 - x1);
  if ([JavaLangMath absWithDouble:d] < PythagorasDGeometryUtil_EPSILON_) {
    return 0;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (-dx * (y1 - y3) + dy * (x1 - x3)) / d;
  if (dx != 0) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = ([PythagorasDGeometryUtil lineWithDouble:[((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:0] withDouble:x1 withDouble:x2] - x3) / dx;
  }
  else if (dy != 0) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = ([PythagorasDGeometryUtil lineWithDouble:[((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:0] withDouble:y1 withDouble:y2] - y3) / dy;
  }
  else {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.0f;
  }
  if ([((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:1] <= 1) {
    return 1;
  }
  return 0;
}

+ (int)intersectLinesWithDouble:(double)x1
                     withDouble:(double)y1
                     withDouble:(double)x2
                     withDouble:(double)y2
                     withDouble:(double)x3
                     withDouble:(double)y3
                     withDouble:(double)x4
                     withDouble:(double)y4
                withDoubleArray:(IOSDoubleArray *)point {
  double A1 = -(y2 - y1);
  double B1 = (x2 - x1);
  double C1 = x1 * y2 - x2 * y1;
  double A2 = -(y4 - y3);
  double B2 = (x4 - x3);
  double C2 = x3 * y4 - x4 * y3;
  double coefParallel = A1 * B2 - A2 * B1;
  if (x3 == x4 && y3 == y4 && (A1 * x3 + B1 * y3 + C1 == 0) && (x3 >= [JavaLangMath minWithDouble:x1 withDouble:x2]) && (x3 <= [JavaLangMath maxWithDouble:x1 withDouble:x2]) && (y3 >= [JavaLangMath minWithDouble:y1 withDouble:y2]) && (y3 <= [JavaLangMath maxWithDouble:y1 withDouble:y2])) {
    return 1;
  }
  if ([JavaLangMath absWithDouble:coefParallel] < PythagorasDGeometryUtil_EPSILON_) {
    return 0;
  }
  (*[((IOSDoubleArray *) nil_chk(point)) doubleRefAtIndex:0]) = (B1 * C2 - B2 * C1) / coefParallel;
  (*[((IOSDoubleArray *) nil_chk(point)) doubleRefAtIndex:1]) = (A2 * C1 - A1 * C2) / coefParallel;
  if ([((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:0] >= [JavaLangMath minWithDouble:x1 withDouble:x2] && [((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:0] >= [JavaLangMath minWithDouble:x3 withDouble:x4] && [((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:0] <= [JavaLangMath maxWithDouble:x1 withDouble:x2] && [((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:0] <= [JavaLangMath maxWithDouble:x3 withDouble:x4] && [((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:1] >= [JavaLangMath minWithDouble:y1 withDouble:y2] && [((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:1] >= [JavaLangMath minWithDouble:y3 withDouble:y4] && [((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:1] <= [JavaLangMath maxWithDouble:y1 withDouble:y2] && [((IOSDoubleArray *) nil_chk(point)) doubleAtIndex:1] <= [JavaLangMath maxWithDouble:y3 withDouble:y4]) {
    return 1;
  }
  return 0;
}

+ (int)intersectLineAndQuadWithDouble:(double)x1
                           withDouble:(double)y1
                           withDouble:(double)x2
                           withDouble:(double)y2
                           withDouble:(double)qx1
                           withDouble:(double)qy1
                           withDouble:(double)qx2
                           withDouble:(double)qy2
                           withDouble:(double)qx3
                           withDouble:(double)qy3
                      withDoubleArray:(IOSDoubleArray *)params {
  IOSDoubleArray *eqn = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *t = [IOSDoubleArray arrayWithLength:2];
  IOSDoubleArray *s = [IOSDoubleArray arrayWithLength:2];
  double dy = y2 - y1;
  double dx = x2 - x1;
  int quantity = 0;
  int count = 0;
  (*[((IOSDoubleArray *) nil_chk(eqn)) doubleRefAtIndex:0]) = dy * (qx1 - x1) - dx * (qy1 - y1);
  (*[((IOSDoubleArray *) nil_chk(eqn)) doubleRefAtIndex:1]) = 2 * dy * (qx2 - qx1) - 2 * dx * (qy2 - qy1);
  (*[((IOSDoubleArray *) nil_chk(eqn)) doubleRefAtIndex:2]) = dy * (qx1 - 2 * qx2 + qx3) - dx * (qy1 - 2 * qy2 + qy3);
  if ((count = [PythagorasDCrossing solveQuadWithDoubleArray:eqn withDoubleArray:t]) == 0) {
    return 0;
  }
  for (int i = 0; i < count; i++) {
    if (dx != 0) {
      (*[((IOSDoubleArray *) nil_chk(s)) doubleRefAtIndex:i]) = ([PythagorasDGeometryUtil quadWithDouble:[((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] withDouble:qx1 withDouble:qx2 withDouble:qx3] - x1) / dx;
    }
    else if (dy != 0) {
      (*[((IOSDoubleArray *) nil_chk(s)) doubleRefAtIndex:i]) = ([PythagorasDGeometryUtil quadWithDouble:[((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] withDouble:qy1 withDouble:qy2 withDouble:qy3] - y1) / dy;
    }
    else {
      (*[((IOSDoubleArray *) nil_chk(s)) doubleRefAtIndex:i]) = 0.0f;
    }
    if ([((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] >= 0 && [((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] <= 1 && [((IOSDoubleArray *) nil_chk(s)) doubleAtIndex:i] >= 0 && [((IOSDoubleArray *) nil_chk(s)) doubleAtIndex:i] <= 1) {
      (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i];
      (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(s)) doubleAtIndex:i];
      ++quantity;
    }
  }
  return quantity;
}

+ (int)intersectLineAndCubicWithDouble:(double)x1
                            withDouble:(double)y1
                            withDouble:(double)x2
                            withDouble:(double)y2
                            withDouble:(double)cx1
                            withDouble:(double)cy1
                            withDouble:(double)cx2
                            withDouble:(double)cy2
                            withDouble:(double)cx3
                            withDouble:(double)cy3
                            withDouble:(double)cx4
                            withDouble:(double)cy4
                       withDoubleArray:(IOSDoubleArray *)params {
  IOSDoubleArray *eqn = [IOSDoubleArray arrayWithLength:4];
  IOSDoubleArray *t = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *s = [IOSDoubleArray arrayWithLength:3];
  double dy = y2 - y1;
  double dx = x2 - x1;
  int quantity = 0;
  int count = 0;
  (*[((IOSDoubleArray *) nil_chk(eqn)) doubleRefAtIndex:0]) = (cy1 - y1) * dx + (x1 - cx1) * dy;
  (*[((IOSDoubleArray *) nil_chk(eqn)) doubleRefAtIndex:1]) = -3 * (cy1 - cy2) * dx + 3 * (cx1 - cx2) * dy;
  (*[((IOSDoubleArray *) nil_chk(eqn)) doubleRefAtIndex:2]) = (3 * cy1 - 6 * cy2 + 3 * cy3) * dx - (3 * cx1 - 6 * cx2 + 3 * cx3) * dy;
  (*[((IOSDoubleArray *) nil_chk(eqn)) doubleRefAtIndex:3]) = (-3 * cy1 + 3 * cy2 - 3 * cy3 + cy4) * dx + (3 * cx1 - 3 * cx2 + 3 * cx3 - cx4) * dy;
  if ((count = [PythagorasDCrossing solveCubicWithDoubleArray:eqn withDoubleArray:t]) == 0) {
    return 0;
  }
  for (int i = 0; i < count; i++) {
    if (dx != 0) {
      (*[((IOSDoubleArray *) nil_chk(s)) doubleRefAtIndex:i]) = ([PythagorasDGeometryUtil cubicWithDouble:[((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] withDouble:cx1 withDouble:cx2 withDouble:cx3 withDouble:cx4] - x1) / dx;
    }
    else if (dy != 0) {
      (*[((IOSDoubleArray *) nil_chk(s)) doubleRefAtIndex:i]) = ([PythagorasDGeometryUtil cubicWithDouble:[((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] withDouble:cy1 withDouble:cy2 withDouble:cy3 withDouble:cy4] - y1) / dy;
    }
    else {
      (*[((IOSDoubleArray *) nil_chk(s)) doubleRefAtIndex:i]) = 0.0f;
    }
    if ([((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] >= 0 && [((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i] <= 1 && [((IOSDoubleArray *) nil_chk(s)) doubleAtIndex:i] >= 0 && [((IOSDoubleArray *) nil_chk(s)) doubleAtIndex:i] <= 1) {
      (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(t)) doubleAtIndex:i];
      (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(s)) doubleAtIndex:i];
      ++quantity;
    }
  }
  return quantity;
}

+ (int)intersectQuadsWithDouble:(double)x1
                     withDouble:(double)y1
                     withDouble:(double)x2
                     withDouble:(double)y2
                     withDouble:(double)x3
                     withDouble:(double)y3
                     withDouble:(double)qx1
                     withDouble:(double)qy1
                     withDouble:(double)qx2
                     withDouble:(double)qy2
                     withDouble:(double)qx3
                     withDouble:(double)qy3
                withDoubleArray:(IOSDoubleArray *)params {
  IOSDoubleArray *initParams = [IOSDoubleArray arrayWithLength:2];
  IOSDoubleArray *xCoefs1 = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *yCoefs1 = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *xCoefs2 = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *yCoefs2 = [IOSDoubleArray arrayWithLength:3];
  int quantity = 0;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:0]) = x1 - 2 * x2 + x3;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:1]) = -2 * x1 + 2 * x2;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:2]) = x1;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:0]) = y1 - 2 * y2 + y3;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:1]) = -2 * y1 + 2 * y2;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:2]) = y1;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:0]) = qx1 - 2 * qx2 + qx3;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:1]) = -2 * qx1 + 2 * qx2;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:2]) = qx1;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:0]) = qy1 - 2 * qy2 + qy3;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:1]) = -2 * qy1 + 2 * qy2;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:2]) = qy1;
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.25f;
  [PythagorasDGeometryUtil quadNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:initParams];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.75f;
  [PythagorasDGeometryUtil quadNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:params];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  return quantity;
}

+ (int)intersectQuadAndCubicWithDouble:(double)qx1
                            withDouble:(double)qy1
                            withDouble:(double)qx2
                            withDouble:(double)qy2
                            withDouble:(double)qx3
                            withDouble:(double)qy3
                            withDouble:(double)cx1
                            withDouble:(double)cy1
                            withDouble:(double)cx2
                            withDouble:(double)cy2
                            withDouble:(double)cx3
                            withDouble:(double)cy3
                            withDouble:(double)cx4
                            withDouble:(double)cy4
                       withDoubleArray:(IOSDoubleArray *)params {
  int quantity = 0;
  IOSDoubleArray *initParams = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *xCoefs1 = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *yCoefs1 = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *xCoefs2 = [IOSDoubleArray arrayWithLength:4];
  IOSDoubleArray *yCoefs2 = [IOSDoubleArray arrayWithLength:4];
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:0]) = qx1 - 2 * qx2 + qx3;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:1]) = 2 * qx2 - 2 * qx1;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:2]) = qx1;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:0]) = qy1 - 2 * qy2 + qy3;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:1]) = 2 * qy2 - 2 * qy1;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:2]) = qy1;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:0]) = -cx1 + 3 * cx2 - 3 * cx3 + cx4;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:1]) = 3 * cx1 - 6 * cx2 + 3 * cx3;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:2]) = -3 * cx1 + 3 * cx2;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:3]) = cx1;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:0]) = -cy1 + 3 * cy2 - 3 * cy3 + cy4;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:1]) = 3 * cy1 - 6 * cy2 + 3 * cy3;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:2]) = -3 * cy1 + 3 * cy2;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:3]) = cy1;
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.25f;
  [PythagorasDGeometryUtil quadAndCubicNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:initParams];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.5f;
  [PythagorasDGeometryUtil quadAndCubicNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:params];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.75f;
  [PythagorasDGeometryUtil quadAndCubicNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:params];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  return quantity;
}

+ (int)intersectCubicsWithDouble:(double)x1
                      withDouble:(double)y1
                      withDouble:(double)x2
                      withDouble:(double)y2
                      withDouble:(double)x3
                      withDouble:(double)y3
                      withDouble:(double)x4
                      withDouble:(double)y4
                      withDouble:(double)cx1
                      withDouble:(double)cy1
                      withDouble:(double)cx2
                      withDouble:(double)cy2
                      withDouble:(double)cx3
                      withDouble:(double)cy3
                      withDouble:(double)cx4
                      withDouble:(double)cy4
                 withDoubleArray:(IOSDoubleArray *)params {
  int quantity = 0;
  IOSDoubleArray *initParams = [IOSDoubleArray arrayWithLength:3];
  IOSDoubleArray *xCoefs1 = [IOSDoubleArray arrayWithLength:4];
  IOSDoubleArray *yCoefs1 = [IOSDoubleArray arrayWithLength:4];
  IOSDoubleArray *xCoefs2 = [IOSDoubleArray arrayWithLength:4];
  IOSDoubleArray *yCoefs2 = [IOSDoubleArray arrayWithLength:4];
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:0]) = -x1 + 3 * x2 - 3 * x3 + x4;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:1]) = 3 * x1 - 6 * x2 + 3 * x3;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:2]) = -3 * x1 + 3 * x2;
  (*[((IOSDoubleArray *) nil_chk(xCoefs1)) doubleRefAtIndex:3]) = x1;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:0]) = -y1 + 3 * y2 - 3 * y3 + y4;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:1]) = 3 * y1 - 6 * y2 + 3 * y3;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:2]) = -3 * y1 + 3 * y2;
  (*[((IOSDoubleArray *) nil_chk(yCoefs1)) doubleRefAtIndex:3]) = y1;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:0]) = -cx1 + 3 * cx2 - 3 * cx3 + cx4;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:1]) = 3 * cx1 - 6 * cx2 + 3 * cx3;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:2]) = -3 * cx1 + 3 * cx2;
  (*[((IOSDoubleArray *) nil_chk(xCoefs2)) doubleRefAtIndex:3]) = cx1;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:0]) = -cy1 + 3 * cy2 - 3 * cy3 + cy4;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:1]) = 3 * cy1 - 6 * cy2 + 3 * cy3;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:2]) = -3 * cy1 + 3 * cy2;
  (*[((IOSDoubleArray *) nil_chk(yCoefs2)) doubleRefAtIndex:3]) = cy1;
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.25f;
  [PythagorasDGeometryUtil cubicNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:initParams];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.5f;
  [PythagorasDGeometryUtil cubicNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:params];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = 0.75f;
  [PythagorasDGeometryUtil cubicNewtonWithDoubleArray:xCoefs1 withDoubleArray:yCoefs1 withDoubleArray:xCoefs2 withDoubleArray:yCoefs2 withDoubleArray:params];
  if ([((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] <= 1 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] >= 0 && [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1] <= 1) {
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:0];
    (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:2 * quantity + 1]) = [((IOSDoubleArray *) nil_chk(initParams)) doubleAtIndex:1];
    ++quantity;
  }
  return quantity;
}

+ (double)lineWithDouble:(double)t
              withDouble:(double)x1
              withDouble:(double)x2 {
  return x1 * (1.0f - t) + x2 * t;
}

+ (double)quadWithDouble:(double)t
              withDouble:(double)x1
              withDouble:(double)x2
              withDouble:(double)x3 {
  return x1 * (1.0f - t) * (1.0f - t) + 2.0f * x2 * t * (1.0f - t) + x3 * t * t;
}

+ (double)cubicWithDouble:(double)t
               withDouble:(double)x1
               withDouble:(double)x2
               withDouble:(double)x3
               withDouble:(double)x4 {
  return x1 * (1.0f - t) * (1.0f - t) * (1.0f - t) + 3.0f * x2 * (1.0f - t) * (1.0f - t) * t + 3.0f * x3 * (1.0f - t) * t * t + x4 * t * t * t;
}

+ (void)subQuadWithDoubleArray:(IOSDoubleArray *)coef
                    withDouble:(double)t0
                      withBOOL:(BOOL)left {
  if (left) {
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:2]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:0] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:2];
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:3]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:1] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:3];
  }
  else {
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:2]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:2] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:4];
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:3]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:3] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:5];
  }
}

+ (void)subCubicWithDoubleArray:(IOSDoubleArray *)coef
                     withDouble:(double)t0
                       withBOOL:(BOOL)left {
  if (left) {
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:2]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:0] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:2];
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:3]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:1] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:3];
  }
  else {
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:4]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:4] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:6];
    (*[((IOSDoubleArray *) nil_chk(coef)) doubleRefAtIndex:5]) = (1 - t0) * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:5] + t0 * [((IOSDoubleArray *) nil_chk(coef)) doubleAtIndex:7];
  }
}

+ (void)cubicNewtonWithDoubleArray:(IOSDoubleArray *)xCoefs1
                   withDoubleArray:(IOSDoubleArray *)yCoefs1
                   withDoubleArray:(IOSDoubleArray *)xCoefs2
                   withDoubleArray:(IOSDoubleArray *)yCoefs2
                   withDoubleArray:(IOSDoubleArray *)params {
  double t = 0.0f, s = 0.0f;
  double t1 = [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:0];
  double s1 = [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:1];
  double d, dt, ds;
  while ([JavaLangMath sqrtWithDouble:(t - t1) * (t - t1) + (s - s1) * (s - s1)] > PythagorasDGeometryUtil_EPSILON_) {
    d = -(3 * t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + 2 * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:2]) * (3 * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] + 2 * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2]) + (3 * t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + 2 * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2]) * (3 * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] + 2 * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2]);
    dt = (t * t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:2] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:3] - s * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:3]) * (-3 * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - 2 * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2]) + (t * t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:3] - s * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:3]) * (3 * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] + 2 * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2]);
    ds = (3 * t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + 2 * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:2]) * (t * t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:3] - s * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:3]) - (3 * t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + 2 * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2]) * (t * t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:2] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:3] - s * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:3]);
    t1 = t - dt / d;
    s1 = s - ds / d;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = t1;
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = s1;
}

+ (void)quadAndCubicNewtonWithDoubleArray:(IOSDoubleArray *)xCoefs1
                          withDoubleArray:(IOSDoubleArray *)yCoefs1
                          withDoubleArray:(IOSDoubleArray *)xCoefs2
                          withDoubleArray:(IOSDoubleArray *)yCoefs2
                          withDoubleArray:(IOSDoubleArray *)params {
  double t = 0.0f, s = 0.0f;
  double t1 = [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:0];
  double s1 = [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:1];
  double d, dt, ds;
  while ([JavaLangMath sqrtWithDouble:(t - t1) * (t - t1) + (s - s1) * (s - s1)] > PythagorasDGeometryUtil_EPSILON_) {
    d = -(2 * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1]) * (3 * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] + 2 * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2]) + (2 * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1]) * (3 * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] + 2 * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2]);
    dt = (t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:2] + -s * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:3]) * (-3 * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - 2 * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2]) + (t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2] - s * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:3]) * (3 * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] + 2 * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2]);
    ds = (2 * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1]) * (t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2] - s * s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:3]) - (2 * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1]) * (t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:2] - s * s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] - s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] - s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2] - [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:3]);
    t1 = t - dt / d;
    s1 = s - ds / d;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = t1;
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = s1;
}

+ (void)quadNewtonWithDoubleArray:(IOSDoubleArray *)xCoefs1
                  withDoubleArray:(IOSDoubleArray *)yCoefs1
                  withDoubleArray:(IOSDoubleArray *)xCoefs2
                  withDoubleArray:(IOSDoubleArray *)yCoefs2
                  withDoubleArray:(IOSDoubleArray *)params {
  double t = 0.0f, s = 0.0f;
  double t1 = [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:0];
  double s1 = [((IOSDoubleArray *) nil_chk(params)) doubleAtIndex:1];
  double d, dt, ds;
  while ([JavaLangMath sqrtWithDouble:(t - t1) * (t - t1) + (s - s1) * (s - s1)] > PythagorasDGeometryUtil_EPSILON_) {
    t = t1;
    s = s1;
    d = -(2 * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1]) * (2 * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1]) + (2 * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1]) * (2 * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1]);
    dt = -(t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] - s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] - s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] - [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2]) * (2 * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1]) + (2 * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1]) * (t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2] - s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2]);
    ds = (2 * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1]) * (t * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:2] - s * s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:0] - s * [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:1] - [((IOSDoubleArray *) nil_chk(yCoefs2)) doubleAtIndex:2]) - (2 * t * [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:0] + [((IOSDoubleArray *) nil_chk(yCoefs1)) doubleAtIndex:1]) * (t * t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:0] + t * [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:1] + [((IOSDoubleArray *) nil_chk(xCoefs1)) doubleAtIndex:2] - s * s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:0] - s * [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:1] - [((IOSDoubleArray *) nil_chk(xCoefs2)) doubleAtIndex:2]);
    t1 = t - dt / d;
    s1 = s - ds / d;
  }
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:0]) = t1;
  (*[((IOSDoubleArray *) nil_chk(params)) doubleRefAtIndex:1]) = s1;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [PythagorasDGeometryUtil class]) {
    PythagorasDGeometryUtil_EPSILON_ = [JavaLangMath powWithDouble:10 withDouble:-14];
  }
}

@end
