//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Quaternion.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSDoubleArray.h"
#import "java/lang/Double.h"
#import "java/lang/Math.h"
#import "java/util/Random.h"
#import "pythagoras/d/IQuaternion.h"
#import "pythagoras/d/IVector3.h"
#import "pythagoras/d/MathUtil.h"
#import "pythagoras/d/Quaternion.h"
#import "pythagoras/d/Vector3.h"
#import "pythagoras/util/Platform.h"

@implementation PythagorasDQuaternion

static id<PythagorasDIQuaternion> PythagorasDQuaternion_IDENTITY_;

@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize z_ = z__;
@synthesize w_ = w__;

+ (id<PythagorasDIQuaternion>)IDENTITY {
  return PythagorasDQuaternion_IDENTITY_;
}

- (id)initWithDouble:(double)x
          withDouble:(double)y
          withDouble:(double)z
          withDouble:(double)w {
  if ((self = [super init])) {
    (void) [self setWithDouble:x withDouble:y withDouble:z withDouble:w];
  }
  return self;
}

- (id)initWithJavaLangDoubleArray:(IOSDoubleArray *)values {
  if ((self = [super init])) {
    (void) [self setWithJavaLangDoubleArray:values];
  }
  return self;
}

- (id)initWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other {
  if ((self = [super init])) {
    (void) [self setWithPythagorasDIQuaternion:other];
  }
  return self;
}

- (id)init {
  if ((self = [super init])) {
    (void) [self setWithDouble:0.0f withDouble:0.0f withDouble:0.0f withDouble:1.0f];
  }
  return self;
}

- (PythagorasDQuaternion *)setWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other {
  return [self setWithDouble:[((id<PythagorasDIQuaternion>) NIL_CHK(other)) x] withDouble:[((id<PythagorasDIQuaternion>) NIL_CHK(other)) y] withDouble:[((id<PythagorasDIQuaternion>) NIL_CHK(other)) z] withDouble:[((id<PythagorasDIQuaternion>) NIL_CHK(other)) w]];
}

- (PythagorasDQuaternion *)setWithJavaLangDoubleArray:(IOSDoubleArray *)values {
  return [self setWithDouble:[((IOSDoubleArray *) NIL_CHK(values)) doubleAtIndex:0] withDouble:[((IOSDoubleArray *) NIL_CHK(values)) doubleAtIndex:1] withDouble:[((IOSDoubleArray *) NIL_CHK(values)) doubleAtIndex:2] withDouble:[((IOSDoubleArray *) NIL_CHK(values)) doubleAtIndex:3]];
}

- (PythagorasDQuaternion *)setWithDouble:(double)x
                              withDouble:(double)y
                              withDouble:(double)z
                              withDouble:(double)w {
  self.x_ = x;
  self.y_ = y;
  self.z_ = z;
  self.w_ = w;
  return self;
}

- (PythagorasDQuaternion *)fromVectorsWithPythagorasDIVector3:(id<PythagorasDIVector3>)from
                                      withPythagorasDIVector3:(id<PythagorasDIVector3>)to {
  double angle = [((id<PythagorasDIVector3>) NIL_CHK(from)) angleWithPythagorasDIVector3:to];
  if (angle < PythagorasDMathUtil_EPSILON) {
    return [self setWithPythagorasDIQuaternion:PythagorasDQuaternion_IDENTITY_];
  }
  if (angle <= JavaLangMath_PI - PythagorasDMathUtil_EPSILON) {
    return [self fromAngleAxisWithDouble:angle withPythagorasDIVector3:[[((id<PythagorasDIVector3>) NIL_CHK(from)) crossWithPythagorasDIVector3:to] normalizeLocal]];
  }
  PythagorasDVector3 *axis = [[PythagorasDVector3 alloc] initWithDouble:0.0f withDouble:[((id<PythagorasDIVector3>) NIL_CHK(from)) z] withDouble:-[((id<PythagorasDIVector3>) NIL_CHK(from)) y]];
  double length = [((PythagorasDVector3 *) NIL_CHK(axis)) length];
  return [self fromAngleAxisWithDouble:JavaLangMath_PI withPythagorasDIVector3:length < PythagorasDMathUtil_EPSILON ? [[((PythagorasDVector3 *) NIL_CHK(axis)) setWithDouble:-[((id<PythagorasDIVector3>) NIL_CHK(from)) z] withDouble:0.0f withDouble:[((id<PythagorasDIVector3>) NIL_CHK(from)) x]] normalizeLocal] : [((PythagorasDVector3 *) NIL_CHK(axis)) multLocalWithDouble:1.0f / length]];
}

- (PythagorasDQuaternion *)fromVectorFromNegativeZWithPythagorasDIVector3:(id<PythagorasDIVector3>)to {
  return [self fromVectorFromNegativeZWithDouble:[((id<PythagorasDIVector3>) NIL_CHK(to)) x] withDouble:[((id<PythagorasDIVector3>) NIL_CHK(to)) y] withDouble:[((id<PythagorasDIVector3>) NIL_CHK(to)) z]];
}

- (PythagorasDQuaternion *)fromVectorFromNegativeZWithDouble:(double)tx
                                                  withDouble:(double)ty
                                                  withDouble:(double)tz {
  double angle = [JavaLangMath acosWithDouble:-tz];
  if (angle < PythagorasDMathUtil_EPSILON) {
    return [self setWithPythagorasDIQuaternion:PythagorasDQuaternion_IDENTITY_];
  }
  if (angle > JavaLangMath_PI - PythagorasDMathUtil_EPSILON) {
    return [self setWithDouble:0.0f withDouble:1.0f withDouble:0.0f withDouble:0.0f];
  }
  double len = [JavaLangMath hypotWithDouble:tx withDouble:ty];
  return [self fromAngleAxisWithDouble:angle withDouble:ty / len withDouble:-tx / len withDouble:0.0f];
}

- (PythagorasDQuaternion *)fromAxesWithPythagorasDIVector3:(id<PythagorasDIVector3>)nx
                                   withPythagorasDIVector3:(id<PythagorasDIVector3>)ny
                                   withPythagorasDIVector3:(id<PythagorasDIVector3>)nz {
  double nxx = [((id<PythagorasDIVector3>) NIL_CHK(nx)) x], nyy = [((id<PythagorasDIVector3>) NIL_CHK(ny)) y], nzz = [((id<PythagorasDIVector3>) NIL_CHK(nz)) z];
  double x2 = (1.0f + nxx - nyy - nzz) / 4.0f;
  double y2 = (1.0f - nxx + nyy - nzz) / 4.0f;
  double z2 = (1.0f - nxx - nyy + nzz) / 4.0f;
  double w2 = (1.0f - x2 - y2 - z2);
  return [self setWithDouble:[JavaLangMath sqrtWithDouble:x2] * ([((id<PythagorasDIVector3>) NIL_CHK(ny)) z] >= [((id<PythagorasDIVector3>) NIL_CHK(nz)) y] ? +1.0f : -1.0f) withDouble:[JavaLangMath sqrtWithDouble:y2] * ([((id<PythagorasDIVector3>) NIL_CHK(nz)) x] >= [((id<PythagorasDIVector3>) NIL_CHK(nx)) z] ? +1.0f : -1.0f) withDouble:[JavaLangMath sqrtWithDouble:z2] * ([((id<PythagorasDIVector3>) NIL_CHK(nx)) y] >= [((id<PythagorasDIVector3>) NIL_CHK(ny)) x] ? +1.0f : -1.0f) withDouble:[JavaLangMath sqrtWithDouble:w2]];
}

- (PythagorasDQuaternion *)fromAngleAxisWithDouble:(double)angle
                           withPythagorasDIVector3:(id<PythagorasDIVector3>)axis {
  return [self fromAngleAxisWithDouble:angle withDouble:[((id<PythagorasDIVector3>) NIL_CHK(axis)) x] withDouble:[((id<PythagorasDIVector3>) NIL_CHK(axis)) y] withDouble:[((id<PythagorasDIVector3>) NIL_CHK(axis)) z]];
}

- (PythagorasDQuaternion *)fromAngleAxisWithDouble:(double)angle
                                        withDouble:(double)x
                                        withDouble:(double)y
                                        withDouble:(double)z {
  double sina = [JavaLangMath sinWithDouble:angle / 2.0f];
  return [self setWithDouble:x * sina withDouble:y * sina withDouble:z * sina withDouble:[JavaLangMath cosWithDouble:angle / 2.0f]];
}

- (PythagorasDQuaternion *)randomizeWithJavaUtilRandom:(JavaUtilRandom *)rand {
  return [self fromAnglesWithDouble:[PythagorasDMathUtil lerpWithDouble:-JavaLangMath_PI withDouble:+JavaLangMath_PI withDouble:[((JavaUtilRandom *) NIL_CHK(rand)) nextFloat]] withDouble:[JavaLangMath asinWithDouble:[PythagorasDMathUtil lerpWithDouble:-1.0f withDouble:+1.0f withDouble:[((JavaUtilRandom *) NIL_CHK(rand)) nextFloat]]] withDouble:[PythagorasDMathUtil lerpWithDouble:-JavaLangMath_PI withDouble:+JavaLangMath_PI withDouble:[((JavaUtilRandom *) NIL_CHK(rand)) nextFloat]]];
}

- (PythagorasDQuaternion *)fromAnglesXZWithDouble:(double)x
                                       withDouble:(double)z {
  double hx = x * 0.5f, hz = z * 0.5f;
  double sx = [JavaLangMath sinWithDouble:hx], cx = [JavaLangMath cosWithDouble:hx];
  double sz = [JavaLangMath sinWithDouble:hz], cz = [JavaLangMath cosWithDouble:hz];
  return [self setWithDouble:cz * sx withDouble:sz * sx withDouble:sz * cx withDouble:cz * cx];
}

- (PythagorasDQuaternion *)fromAnglesXYWithDouble:(double)x
                                       withDouble:(double)y {
  double hx = x * 0.5f, hy = y * 0.5f;
  double sx = [JavaLangMath sinWithDouble:hx], cx = [JavaLangMath cosWithDouble:hx];
  double sy = [JavaLangMath sinWithDouble:hy], cy = [JavaLangMath cosWithDouble:hy];
  return [self setWithDouble:cy * sx withDouble:sy * cx withDouble:-sy * sx withDouble:cy * cx];
}

- (PythagorasDQuaternion *)fromAnglesWithPythagorasDVector3:(PythagorasDVector3 *)angles {
  return [self fromAnglesWithDouble:((PythagorasDVector3 *) NIL_CHK(angles)).x_ withDouble:((PythagorasDVector3 *) NIL_CHK(angles)).y_ withDouble:((PythagorasDVector3 *) NIL_CHK(angles)).z_];
}

- (PythagorasDQuaternion *)fromAnglesWithDouble:(double)x
                                     withDouble:(double)y
                                     withDouble:(double)z {
  double hx = x * 0.5f, hy = y * 0.5f, hz = z * 0.5f;
  double sz = [JavaLangMath sinWithDouble:hz], cz = [JavaLangMath cosWithDouble:hz];
  double sy = [JavaLangMath sinWithDouble:hy], cy = [JavaLangMath cosWithDouble:hy];
  double sx = [JavaLangMath sinWithDouble:hx], cx = [JavaLangMath cosWithDouble:hx];
  double szsy = sz * sy, czsy = cz * sy, szcy = sz * cy, czcy = cz * cy;
  return [self setWithDouble:czcy * sx - szsy * cx withDouble:czsy * cx + szcy * sx withDouble:szcy * cx - czsy * sx withDouble:czcy * cx + szsy * sx];
}

- (PythagorasDQuaternion *)normalizeLocal {
  return [self normalizeWithPythagorasDQuaternion:self];
}

- (PythagorasDQuaternion *)invertLocal {
  return [self invertWithPythagorasDQuaternion:self];
}

- (PythagorasDQuaternion *)multLocalWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other {
  return [self multWithPythagorasDIQuaternion:other withPythagorasDQuaternion:self];
}

- (PythagorasDQuaternion *)slerpLocalWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other
                                                     withDouble:(double)t {
  return [self slerpWithPythagorasDIQuaternion:other withDouble:t withPythagorasDQuaternion:self];
}

- (PythagorasDVector3 *)transformLocalWithPythagorasDVector3:(PythagorasDVector3 *)vector {
  return [self transformWithPythagorasDIVector3:vector withPythagorasDVector3:vector];
}

- (PythagorasDQuaternion *)integrateLocalWithPythagorasDIVector3:(id<PythagorasDIVector3>)velocity
                                                      withDouble:(double)t {
  return [self integrateWithPythagorasDIVector3:velocity withDouble:t withPythagorasDQuaternion:self];
}

- (double)x {
  return x__;
}

- (double)y {
  return y__;
}

- (double)z {
  return z__;
}

- (double)w {
  return w__;
}

- (void)getWithJavaLangDoubleArray:(IOSDoubleArray *)values {
  [((IOSDoubleArray *) NIL_CHK(values)) replaceDoubleAtIndex:0 withDouble:x__];
  [((IOSDoubleArray *) NIL_CHK(values)) replaceDoubleAtIndex:1 withDouble:y__];
  [((IOSDoubleArray *) NIL_CHK(values)) replaceDoubleAtIndex:2 withDouble:z__];
  [((IOSDoubleArray *) NIL_CHK(values)) replaceDoubleAtIndex:3 withDouble:w__];
}

- (BOOL)hasNaN {
  return [JavaLangDouble isNaNWithDouble:x__] || [JavaLangDouble isNaNWithDouble:y__] || [JavaLangDouble isNaNWithDouble:z__] || [JavaLangDouble isNaNWithDouble:w__];
}

- (PythagorasDVector3 *)toAnglesWithPythagorasDVector3:(PythagorasDVector3 *)result {
  double sy = 2.0f * (y__ * w__ - x__ * z__);
  if (sy < 1.0f - PythagorasDMathUtil_EPSILON) {
    if (sy > -1 + PythagorasDMathUtil_EPSILON) {
      return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:[JavaLangMath atan2WithDouble:y__ * z__ + x__ * w__ withDouble:0.5f - (x__ * x__ + y__ * y__)] withDouble:[JavaLangMath asinWithDouble:sy] withDouble:[JavaLangMath atan2WithDouble:x__ * y__ + z__ * w__ withDouble:0.5f - (y__ * y__ + z__ * z__)]];
    }
    else {
      return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:0.0f withDouble:-PythagorasDMathUtil_HALF_PI withDouble:[JavaLangMath atan2WithDouble:x__ * w__ - y__ * z__ withDouble:0.5f - (x__ * x__ + z__ * z__)]];
    }
  }
  else {
    return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:0.0f withDouble:PythagorasDMathUtil_HALF_PI withDouble:-[JavaLangMath atan2WithDouble:x__ * w__ - y__ * z__ withDouble:0.5f - (x__ * x__ + z__ * z__)]];
  }
}

- (PythagorasDVector3 *)toAngles {
  return [self toAnglesWithPythagorasDVector3:[[PythagorasDVector3 alloc] init]];
}

- (PythagorasDQuaternion *)normalize {
  return [self normalizeWithPythagorasDQuaternion:[[PythagorasDQuaternion alloc] init]];
}

- (PythagorasDQuaternion *)normalizeWithPythagorasDQuaternion:(PythagorasDQuaternion *)result {
  double rlen = 1.0f / [JavaLangMath sqrtWithDouble:x__ * x__ + y__ * y__ + z__ * z__ + w__ * w__];
  return [((PythagorasDQuaternion *) NIL_CHK(result)) setWithDouble:x__ * rlen withDouble:y__ * rlen withDouble:z__ * rlen withDouble:w__ * rlen];
}

- (PythagorasDQuaternion *)invert {
  return [self invertWithPythagorasDQuaternion:[[PythagorasDQuaternion alloc] init]];
}

- (PythagorasDQuaternion *)invertWithPythagorasDQuaternion:(PythagorasDQuaternion *)result {
  return [((PythagorasDQuaternion *) NIL_CHK(result)) setWithDouble:-x__ withDouble:-y__ withDouble:-z__ withDouble:w__];
}

- (PythagorasDQuaternion *)multWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other {
  return [self multWithPythagorasDIQuaternion:other withPythagorasDQuaternion:[[PythagorasDQuaternion alloc] init]];
}

- (PythagorasDQuaternion *)multWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other
                                withPythagorasDQuaternion:(PythagorasDQuaternion *)result {
  double ox = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) x], oy = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) y], oz = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) z], ow = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) w];
  return [((PythagorasDQuaternion *) NIL_CHK(result)) setWithDouble:w__ * ox + x__ * ow + y__ * oz - z__ * oy withDouble:w__ * oy + y__ * ow + z__ * ox - x__ * oz withDouble:w__ * oz + z__ * ow + x__ * oy - y__ * ox withDouble:w__ * ow - x__ * ox - y__ * oy - z__ * oz];
}

- (PythagorasDQuaternion *)slerpWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other
                                                withDouble:(double)t {
  return [self slerpWithPythagorasDIQuaternion:other withDouble:t withPythagorasDQuaternion:[[PythagorasDQuaternion alloc] init]];
}

- (PythagorasDQuaternion *)slerpWithPythagorasDIQuaternion:(id<PythagorasDIQuaternion>)other
                                                withDouble:(double)t
                                 withPythagorasDQuaternion:(PythagorasDQuaternion *)result {
  double ox = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) x], oy = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) y], oz = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) z], ow = [((id<PythagorasDIQuaternion>) NIL_CHK(other)) w];
  double cosa = x__ * ox + y__ * oy + z__ * oz + w__ * ow, s0, s1;
  if (cosa < 0.0f) {
    cosa = -cosa;
    ox = -ox;
    oy = -oy;
    oz = -oz;
    ow = -ow;
  }
  if ((1.0f - cosa) > PythagorasDMathUtil_EPSILON) {
    double angle = [JavaLangMath acosWithDouble:cosa], sina = [JavaLangMath sinWithDouble:angle];
    s0 = [JavaLangMath sinWithDouble:(1.0f - t) * angle] / sina;
    s1 = [JavaLangMath sinWithDouble:t * angle] / sina;
  }
  else {
    s0 = 1.0f - t;
    s1 = t;
  }
  return [((PythagorasDQuaternion *) NIL_CHK(result)) setWithDouble:s0 * x__ + s1 * ox withDouble:s0 * y__ + s1 * oy withDouble:s0 * z__ + s1 * oz withDouble:s0 * w__ + s1 * ow];
}

- (PythagorasDVector3 *)transformWithPythagorasDIVector3:(id<PythagorasDIVector3>)vector {
  return [self transformWithPythagorasDIVector3:vector withPythagorasDVector3:[[PythagorasDVector3 alloc] init]];
}

- (PythagorasDVector3 *)transformWithPythagorasDIVector3:(id<PythagorasDIVector3>)vector
                                  withPythagorasDVector3:(PythagorasDVector3 *)result {
  double xx = x__ * x__, yy = y__ * y__, zz = z__ * z__;
  double xy = x__ * y__, xz = x__ * z__, xw = x__ * w__;
  double yz = y__ * z__, yw = y__ * w__, zw = z__ * w__;
  double vx = [((id<PythagorasDIVector3>) NIL_CHK(vector)) x], vy = [((id<PythagorasDIVector3>) NIL_CHK(vector)) y], vz = [((id<PythagorasDIVector3>) NIL_CHK(vector)) z];
  double vx2 = vx * 2.0f, vy2 = vy * 2.0f, vz2 = vz * 2.0f;
  return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:vx + vy2 * (xy - zw) + vz2 * (xz + yw) - vx2 * (yy + zz) withDouble:vy + vx2 * (xy + zw) + vz2 * (yz - xw) - vy2 * (xx + zz) withDouble:vz + vx2 * (xz - yw) + vy2 * (yz + xw) - vz2 * (xx + yy)];
}

- (PythagorasDVector3 *)transformUnitXWithPythagorasDVector3:(PythagorasDVector3 *)result {
  return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:1.0f - 2.0f * (y__ * y__ + z__ * z__) withDouble:2.0f * (x__ * y__ + z__ * w__) withDouble:2.0f * (x__ * z__ - y__ * w__)];
}

- (PythagorasDVector3 *)transformUnitYWithPythagorasDVector3:(PythagorasDVector3 *)result {
  return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:2.0f * (x__ * y__ - z__ * w__) withDouble:1.0f - 2.0f * (x__ * x__ + z__ * z__) withDouble:2.0f * (y__ * z__ + x__ * w__)];
}

- (PythagorasDVector3 *)transformUnitZWithPythagorasDVector3:(PythagorasDVector3 *)result {
  return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:2.0f * (x__ * z__ + y__ * w__) withDouble:2.0f * (y__ * z__ - x__ * w__) withDouble:1.0f - 2.0f * (x__ * x__ + y__ * y__)];
}

- (PythagorasDVector3 *)transformAndAddWithPythagorasDIVector3:(id<PythagorasDIVector3>)vector
                                       withPythagorasDIVector3:(id<PythagorasDIVector3>)add
                                        withPythagorasDVector3:(PythagorasDVector3 *)result {
  double xx = x__ * x__, yy = y__ * y__, zz = z__ * z__;
  double xy = x__ * y__, xz = x__ * z__, xw = x__ * w__;
  double yz = y__ * z__, yw = y__ * w__, zw = z__ * w__;
  double vx = [((id<PythagorasDIVector3>) NIL_CHK(vector)) x], vy = [((id<PythagorasDIVector3>) NIL_CHK(vector)) y], vz = [((id<PythagorasDIVector3>) NIL_CHK(vector)) z];
  double vx2 = vx * 2.0f, vy2 = vy * 2.0f, vz2 = vz * 2.0f;
  return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:vx + vy2 * (xy - zw) + vz2 * (xz + yw) - vx2 * (yy + zz) + [((id<PythagorasDIVector3>) NIL_CHK(add)) x] withDouble:vy + vx2 * (xy + zw) + vz2 * (yz - xw) - vy2 * (xx + zz) + [((id<PythagorasDIVector3>) NIL_CHK(add)) y] withDouble:vz + vx2 * (xz - yw) + vy2 * (yz + xw) - vz2 * (xx + yy) + [((id<PythagorasDIVector3>) NIL_CHK(add)) z]];
}

- (PythagorasDVector3 *)transformScaleAndAddWithPythagorasDIVector3:(id<PythagorasDIVector3>)vector
                                                         withDouble:(double)scale_
                                            withPythagorasDIVector3:(id<PythagorasDIVector3>)add
                                             withPythagorasDVector3:(PythagorasDVector3 *)result {
  double xx = x__ * x__, yy = y__ * y__, zz = z__ * z__;
  double xy = x__ * y__, xz = x__ * z__, xw = x__ * w__;
  double yz = y__ * z__, yw = y__ * w__, zw = z__ * w__;
  double vx = [((id<PythagorasDIVector3>) NIL_CHK(vector)) x], vy = [((id<PythagorasDIVector3>) NIL_CHK(vector)) y], vz = [((id<PythagorasDIVector3>) NIL_CHK(vector)) z];
  double vx2 = vx * 2.0f, vy2 = vy * 2.0f, vz2 = vz * 2.0f;
  return [((PythagorasDVector3 *) NIL_CHK(result)) setWithDouble:(vx + vy2 * (xy - zw) + vz2 * (xz + yw) - vx2 * (yy + zz)) * scale_ + [((id<PythagorasDIVector3>) NIL_CHK(add)) x] withDouble:(vy + vx2 * (xy + zw) + vz2 * (yz - xw) - vy2 * (xx + zz)) * scale_ + [((id<PythagorasDIVector3>) NIL_CHK(add)) y] withDouble:(vz + vx2 * (xz - yw) + vy2 * (yz + xw) - vz2 * (xx + yy)) * scale_ + [((id<PythagorasDIVector3>) NIL_CHK(add)) z]];
}

- (double)transformZWithPythagorasDIVector3:(id<PythagorasDIVector3>)vector {
  return [((id<PythagorasDIVector3>) NIL_CHK(vector)) z] + [((id<PythagorasDIVector3>) NIL_CHK(vector)) x] * 2.0f * (x__ * z__ - y__ * w__) + [((id<PythagorasDIVector3>) NIL_CHK(vector)) y] * 2.0f * (y__ * z__ + x__ * w__) - [((id<PythagorasDIVector3>) NIL_CHK(vector)) z] * 2.0f * (x__ * x__ + y__ * y__);
}

- (double)getRotationZ {
  return [JavaLangMath atan2WithDouble:2.0f * (x__ * y__ + z__ * w__) withDouble:1.0f - 2.0f * (y__ * y__ + z__ * z__)];
}

- (PythagorasDQuaternion *)integrateWithPythagorasDIVector3:(id<PythagorasDIVector3>)velocity
                                                 withDouble:(double)t {
  return [self integrateWithPythagorasDIVector3:velocity withDouble:t withPythagorasDQuaternion:[[PythagorasDQuaternion alloc] init]];
}

- (PythagorasDQuaternion *)integrateWithPythagorasDIVector3:(id<PythagorasDIVector3>)velocity
                                                 withDouble:(double)t
                                  withPythagorasDQuaternion:(PythagorasDQuaternion *)result {
  double qx = 0.5f * [((id<PythagorasDIVector3>) NIL_CHK(velocity)) x];
  double qy = 0.5f * [((id<PythagorasDIVector3>) NIL_CHK(velocity)) y];
  double qz = 0.5f * [((id<PythagorasDIVector3>) NIL_CHK(velocity)) z];
  return [[((PythagorasDQuaternion *) NIL_CHK(result)) setWithDouble:x__ + t * (qx * w__ + qy * z__ - qz * y__) withDouble:y__ + t * (qy * w__ + qz * x__ - qx * z__) withDouble:z__ + t * (qz * w__ + qx * y__ - qy * x__) withDouble:w__ + t * (-qx * x__ - qy * y__ - qz * z__)] normalizeLocal];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"[%f, %f, %f, %f]", x__, y__, z__, w__];
}

- (NSUInteger)hash {
  return [PythagorasUtilPlatform hashCodeWithDouble:x__] ^ [PythagorasUtilPlatform hashCodeWithDouble:y__] ^ [PythagorasUtilPlatform hashCodeWithDouble:z__] ^ [PythagorasUtilPlatform hashCodeWithDouble:w__];
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[PythagorasDQuaternion class]])) {
    return NO;
  }
  PythagorasDQuaternion *oquat = (PythagorasDQuaternion *) other;
  return (x__ == ((PythagorasDQuaternion *) NIL_CHK(oquat)).x_ && y__ == ((PythagorasDQuaternion *) NIL_CHK(oquat)).y_ && z__ == ((PythagorasDQuaternion *) NIL_CHK(oquat)).z_ && w__ == ((PythagorasDQuaternion *) NIL_CHK(oquat)).w_) || (x__ == -((PythagorasDQuaternion *) NIL_CHK(oquat)).x_ && y__ == -((PythagorasDQuaternion *) NIL_CHK(oquat)).y_ && z__ == -((PythagorasDQuaternion *) NIL_CHK(oquat)).z_ && w__ == -((PythagorasDQuaternion *) NIL_CHK(oquat)).x_);
}

+ (void)initialize {
  if (self == [PythagorasDQuaternion class]) {
    PythagorasDQuaternion_IDENTITY_ = [[PythagorasDQuaternion alloc] initWithDouble:0.0f withDouble:0.0f withDouble:0.0f withDouble:1.0f];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDQuaternion *typedCopy = (PythagorasDQuaternion *) copy;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.z_ = z__;
  typedCopy.w_ = w__;
}

@end
