//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Quaternion.java
//
//  Created by Thomas on 7/1/13.
//

#import "FloatMath.h"
#import "IOSFloatArray.h"
#import "IQuaternion.h"
#import "IVector3.h"
#import "MathUtil.h"
#import "Platform.h"
#import "Vector3.h"
#import "java/lang/Float.h"
#import "java/util/Random.h"
#import "Quaternion.h"

@implementation PythagorasFQuaternion

static id<PythagorasFIQuaternion> PythagorasFQuaternion_IDENTITY_;

@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize z_ = z__;
@synthesize w_ = w__;

+ (id<PythagorasFIQuaternion>)IDENTITY {
  return PythagorasFQuaternion_IDENTITY_;
}

- (id)initWithFloat:(float)x
          withFloat:(float)y
          withFloat:(float)z
          withFloat:(float)w {
  if ((self = [super init])) {
    (void) [self setWithFloat:x withFloat:y withFloat:z withFloat:w];
  }
  return self;
}

- (id)initWithJavaLangFloatArray:(IOSFloatArray *)values {
  if ((self = [super init])) {
    (void) [self setWithJavaLangFloatArray:values];
  }
  return self;
}

- (id)initWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other {
  if ((self = [super init])) {
    (void) [self setWithPythagorasFIQuaternion:other];
  }
  return self;
}

- (id)init {
  if ((self = [super init])) {
    (void) [self setWithFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:1.0f];
  }
  return self;
}

- (PythagorasFQuaternion *)setWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other {
  return [self setWithFloat:[((id<PythagorasFIQuaternion>) NIL_CHK(other)) x] withFloat:[((id<PythagorasFIQuaternion>) NIL_CHK(other)) y] withFloat:[((id<PythagorasFIQuaternion>) NIL_CHK(other)) z] withFloat:[((id<PythagorasFIQuaternion>) NIL_CHK(other)) w]];
}

- (PythagorasFQuaternion *)setWithJavaLangFloatArray:(IOSFloatArray *)values {
  return [self setWithFloat:[((IOSFloatArray *) NIL_CHK(values)) floatAtIndex:0] withFloat:[((IOSFloatArray *) NIL_CHK(values)) floatAtIndex:1] withFloat:[((IOSFloatArray *) NIL_CHK(values)) floatAtIndex:2] withFloat:[((IOSFloatArray *) NIL_CHK(values)) floatAtIndex:3]];
}

- (PythagorasFQuaternion *)setWithFloat:(float)x
                              withFloat:(float)y
                              withFloat:(float)z
                              withFloat:(float)w {
  self.x_ = x;
  self.y_ = y;
  self.z_ = z;
  self.w_ = w;
  return self;
}

- (PythagorasFQuaternion *)fromVectorsWithPythagorasFIVector3:(id<PythagorasFIVector3>)from
                                      withPythagorasFIVector3:(id<PythagorasFIVector3>)to {
  float angle = [((id<PythagorasFIVector3>) NIL_CHK(from)) angleWithPythagorasFIVector3:to];
  if (angle < PythagorasFMathUtil_EPSILON) {
    return [self setWithPythagorasFIQuaternion:PythagorasFQuaternion_IDENTITY_];
  }
  if (angle <= PythagorasFFloatMath_PI - PythagorasFMathUtil_EPSILON) {
    return [self fromAngleAxisWithFloat:angle withPythagorasFIVector3:[[((id<PythagorasFIVector3>) NIL_CHK(from)) crossWithPythagorasFIVector3:to] normalizeLocal]];
  }
  PythagorasFVector3 *axis = [[[PythagorasFVector3 alloc] initWithFloat:0.0f withFloat:[((id<PythagorasFIVector3>) NIL_CHK(from)) z] withFloat:-[((id<PythagorasFIVector3>) NIL_CHK(from)) y]] autorelease];
  float length = [((PythagorasFVector3 *) NIL_CHK(axis)) length];
  return [self fromAngleAxisWithFloat:PythagorasFFloatMath_PI withPythagorasFIVector3:length < PythagorasFMathUtil_EPSILON ? [[((PythagorasFVector3 *) NIL_CHK(axis)) setWithFloat:-[((id<PythagorasFIVector3>) NIL_CHK(from)) z] withFloat:0.0f withFloat:[((id<PythagorasFIVector3>) NIL_CHK(from)) x]] normalizeLocal] : [((PythagorasFVector3 *) NIL_CHK(axis)) multLocalWithFloat:1.0f / length]];
}

- (PythagorasFQuaternion *)fromVectorFromNegativeZWithPythagorasFIVector3:(id<PythagorasFIVector3>)to {
  return [self fromVectorFromNegativeZWithFloat:[((id<PythagorasFIVector3>) NIL_CHK(to)) x] withFloat:[((id<PythagorasFIVector3>) NIL_CHK(to)) y] withFloat:[((id<PythagorasFIVector3>) NIL_CHK(to)) z]];
}

- (PythagorasFQuaternion *)fromVectorFromNegativeZWithFloat:(float)tx
                                                  withFloat:(float)ty
                                                  withFloat:(float)tz {
  float angle = [PythagorasFFloatMath acosWithFloat:-tz];
  if (angle < PythagorasFMathUtil_EPSILON) {
    return [self setWithPythagorasFIQuaternion:PythagorasFQuaternion_IDENTITY_];
  }
  if (angle > PythagorasFFloatMath_PI - PythagorasFMathUtil_EPSILON) {
    return [self setWithFloat:0.0f withFloat:1.0f withFloat:0.0f withFloat:0.0f];
  }
  float len = [PythagorasFFloatMath hypotWithFloat:tx withFloat:ty];
  return [self fromAngleAxisWithFloat:angle withFloat:ty / len withFloat:-tx / len withFloat:0.0f];
}

- (PythagorasFQuaternion *)fromAxesWithPythagorasFIVector3:(id<PythagorasFIVector3>)nx
                                   withPythagorasFIVector3:(id<PythagorasFIVector3>)ny
                                   withPythagorasFIVector3:(id<PythagorasFIVector3>)nz {
  float nxx = [((id<PythagorasFIVector3>) NIL_CHK(nx)) x], nyy = [((id<PythagorasFIVector3>) NIL_CHK(ny)) y], nzz = [((id<PythagorasFIVector3>) NIL_CHK(nz)) z];
  float x2 = (1.0f + nxx - nyy - nzz) / 4.0f;
  float y2 = (1.0f - nxx + nyy - nzz) / 4.0f;
  float z2 = (1.0f - nxx - nyy + nzz) / 4.0f;
  float w2 = (1.0f - x2 - y2 - z2);
  return [self setWithFloat:[PythagorasFFloatMath sqrtWithFloat:x2] * ([((id<PythagorasFIVector3>) NIL_CHK(ny)) z] >= [((id<PythagorasFIVector3>) NIL_CHK(nz)) y] ? +1.0f : -1.0f) withFloat:[PythagorasFFloatMath sqrtWithFloat:y2] * ([((id<PythagorasFIVector3>) NIL_CHK(nz)) x] >= [((id<PythagorasFIVector3>) NIL_CHK(nx)) z] ? +1.0f : -1.0f) withFloat:[PythagorasFFloatMath sqrtWithFloat:z2] * ([((id<PythagorasFIVector3>) NIL_CHK(nx)) y] >= [((id<PythagorasFIVector3>) NIL_CHK(ny)) x] ? +1.0f : -1.0f) withFloat:[PythagorasFFloatMath sqrtWithFloat:w2]];
}

- (PythagorasFQuaternion *)fromAngleAxisWithFloat:(float)angle
                          withPythagorasFIVector3:(id<PythagorasFIVector3>)axis {
  return [self fromAngleAxisWithFloat:angle withFloat:[((id<PythagorasFIVector3>) NIL_CHK(axis)) x] withFloat:[((id<PythagorasFIVector3>) NIL_CHK(axis)) y] withFloat:[((id<PythagorasFIVector3>) NIL_CHK(axis)) z]];
}

- (PythagorasFQuaternion *)fromAngleAxisWithFloat:(float)angle
                                        withFloat:(float)x
                                        withFloat:(float)y
                                        withFloat:(float)z {
  float sina = [PythagorasFFloatMath sinWithFloat:angle / 2.0f];
  return [self setWithFloat:x * sina withFloat:y * sina withFloat:z * sina withFloat:[PythagorasFFloatMath cosWithFloat:angle / 2.0f]];
}

- (PythagorasFQuaternion *)randomizeWithJavaUtilRandom:(JavaUtilRandom *)rand {
  return [self fromAnglesWithFloat:[PythagorasFMathUtil lerpWithFloat:-PythagorasFFloatMath_PI withFloat:+PythagorasFFloatMath_PI withFloat:[((JavaUtilRandom *) NIL_CHK(rand)) nextFloat]] withFloat:[PythagorasFFloatMath asinWithFloat:[PythagorasFMathUtil lerpWithFloat:-1.0f withFloat:+1.0f withFloat:[((JavaUtilRandom *) NIL_CHK(rand)) nextFloat]]] withFloat:[PythagorasFMathUtil lerpWithFloat:-PythagorasFFloatMath_PI withFloat:+PythagorasFFloatMath_PI withFloat:[((JavaUtilRandom *) NIL_CHK(rand)) nextFloat]]];
}

- (PythagorasFQuaternion *)fromAnglesXZWithFloat:(float)x
                                       withFloat:(float)z {
  float hx = x * 0.5f, hz = z * 0.5f;
  float sx = [PythagorasFFloatMath sinWithFloat:hx], cx = [PythagorasFFloatMath cosWithFloat:hx];
  float sz = [PythagorasFFloatMath sinWithFloat:hz], cz = [PythagorasFFloatMath cosWithFloat:hz];
  return [self setWithFloat:cz * sx withFloat:sz * sx withFloat:sz * cx withFloat:cz * cx];
}

- (PythagorasFQuaternion *)fromAnglesXYWithFloat:(float)x
                                       withFloat:(float)y {
  float hx = x * 0.5f, hy = y * 0.5f;
  float sx = [PythagorasFFloatMath sinWithFloat:hx], cx = [PythagorasFFloatMath cosWithFloat:hx];
  float sy = [PythagorasFFloatMath sinWithFloat:hy], cy = [PythagorasFFloatMath cosWithFloat:hy];
  return [self setWithFloat:cy * sx withFloat:sy * cx withFloat:-sy * sx withFloat:cy * cx];
}

- (PythagorasFQuaternion *)fromAnglesWithPythagorasFVector3:(PythagorasFVector3 *)angles {
  return [self fromAnglesWithFloat:((PythagorasFVector3 *) NIL_CHK(angles)).x_ withFloat:((PythagorasFVector3 *) NIL_CHK(angles)).y_ withFloat:((PythagorasFVector3 *) NIL_CHK(angles)).z_];
}

- (PythagorasFQuaternion *)fromAnglesWithFloat:(float)x
                                     withFloat:(float)y
                                     withFloat:(float)z {
  float hx = x * 0.5f, hy = y * 0.5f, hz = z * 0.5f;
  float sz = [PythagorasFFloatMath sinWithFloat:hz], cz = [PythagorasFFloatMath cosWithFloat:hz];
  float sy = [PythagorasFFloatMath sinWithFloat:hy], cy = [PythagorasFFloatMath cosWithFloat:hy];
  float sx = [PythagorasFFloatMath sinWithFloat:hx], cx = [PythagorasFFloatMath cosWithFloat:hx];
  float szsy = sz * sy, czsy = cz * sy, szcy = sz * cy, czcy = cz * cy;
  return [self setWithFloat:czcy * sx - szsy * cx withFloat:czsy * cx + szcy * sx withFloat:szcy * cx - czsy * sx withFloat:czcy * cx + szsy * sx];
}

- (PythagorasFQuaternion *)normalizeLocal {
  return [self normalizeWithPythagorasFQuaternion:self];
}

- (PythagorasFQuaternion *)invertLocal {
  return [self invertWithPythagorasFQuaternion:self];
}

- (PythagorasFQuaternion *)multLocalWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other {
  return [self multWithPythagorasFIQuaternion:other withPythagorasFQuaternion:self];
}

- (PythagorasFQuaternion *)slerpLocalWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                                      withFloat:(float)t {
  return [self slerpWithPythagorasFIQuaternion:other withFloat:t withPythagorasFQuaternion:self];
}

- (PythagorasFVector3 *)transformLocalWithPythagorasFVector3:(PythagorasFVector3 *)vector {
  return [self transformWithPythagorasFIVector3:vector withPythagorasFVector3:vector];
}

- (PythagorasFQuaternion *)integrateLocalWithPythagorasFIVector3:(id<PythagorasFIVector3>)velocity
                                                       withFloat:(float)t {
  return [self integrateWithPythagorasFIVector3:velocity withFloat:t withPythagorasFQuaternion:self];
}

- (float)x {
  return x__;
}

- (float)y {
  return y__;
}

- (float)z {
  return z__;
}

- (float)w {
  return w__;
}

- (void)getWithJavaLangFloatArray:(IOSFloatArray *)values {
  [((IOSFloatArray *) NIL_CHK(values)) replaceFloatAtIndex:0 withFloat:x__];
  [((IOSFloatArray *) NIL_CHK(values)) replaceFloatAtIndex:1 withFloat:y__];
  [((IOSFloatArray *) NIL_CHK(values)) replaceFloatAtIndex:2 withFloat:z__];
  [((IOSFloatArray *) NIL_CHK(values)) replaceFloatAtIndex:3 withFloat:w__];
}

- (BOOL)hasNaN {
  return [JavaLangFloat isNaNWithFloat:x__] || [JavaLangFloat isNaNWithFloat:y__] || [JavaLangFloat isNaNWithFloat:z__] || [JavaLangFloat isNaNWithFloat:w__];
}

- (PythagorasFVector3 *)toAnglesWithPythagorasFVector3:(PythagorasFVector3 *)result {
  float sy = 2.0f * (y__ * w__ - x__ * z__);
  if (sy < 1.0f - PythagorasFMathUtil_EPSILON) {
    if (sy > -1 + PythagorasFMathUtil_EPSILON) {
      return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:[PythagorasFFloatMath atan2WithFloat:y__ * z__ + x__ * w__ withFloat:0.5f - (x__ * x__ + y__ * y__)] withFloat:[PythagorasFFloatMath asinWithFloat:sy] withFloat:[PythagorasFFloatMath atan2WithFloat:x__ * y__ + z__ * w__ withFloat:0.5f - (y__ * y__ + z__ * z__)]];
    }
    else {
      return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:0.0f withFloat:-PythagorasFMathUtil_HALF_PI withFloat:[PythagorasFFloatMath atan2WithFloat:x__ * w__ - y__ * z__ withFloat:0.5f - (x__ * x__ + z__ * z__)]];
    }
  }
  else {
    return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:0.0f withFloat:PythagorasFMathUtil_HALF_PI withFloat:-[PythagorasFFloatMath atan2WithFloat:x__ * w__ - y__ * z__ withFloat:0.5f - (x__ * x__ + z__ * z__)]];
  }
}

- (PythagorasFVector3 *)toAngles {
  return [self toAnglesWithPythagorasFVector3:[[[PythagorasFVector3 alloc] init] autorelease]];
}

- (PythagorasFQuaternion *)normalize {
  return [self normalizeWithPythagorasFQuaternion:[[[PythagorasFQuaternion alloc] init] autorelease]];
}

- (PythagorasFQuaternion *)normalizeWithPythagorasFQuaternion:(PythagorasFQuaternion *)result {
  float rlen = 1.0f / [PythagorasFFloatMath sqrtWithFloat:x__ * x__ + y__ * y__ + z__ * z__ + w__ * w__];
  return [((PythagorasFQuaternion *) NIL_CHK(result)) setWithFloat:x__ * rlen withFloat:y__ * rlen withFloat:z__ * rlen withFloat:w__ * rlen];
}

- (PythagorasFQuaternion *)invert {
  return [self invertWithPythagorasFQuaternion:[[[PythagorasFQuaternion alloc] init] autorelease]];
}

- (PythagorasFQuaternion *)invertWithPythagorasFQuaternion:(PythagorasFQuaternion *)result {
  return [((PythagorasFQuaternion *) NIL_CHK(result)) setWithFloat:-x__ withFloat:-y__ withFloat:-z__ withFloat:w__];
}

- (PythagorasFQuaternion *)multWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other {
  return [self multWithPythagorasFIQuaternion:other withPythagorasFQuaternion:[[[PythagorasFQuaternion alloc] init] autorelease]];
}

- (PythagorasFQuaternion *)multWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                withPythagorasFQuaternion:(PythagorasFQuaternion *)result {
  float ox = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) x], oy = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) y], oz = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) z], ow = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) w];
  return [((PythagorasFQuaternion *) NIL_CHK(result)) setWithFloat:w__ * ox + x__ * ow + y__ * oz - z__ * oy withFloat:w__ * oy + y__ * ow + z__ * ox - x__ * oz withFloat:w__ * oz + z__ * ow + x__ * oy - y__ * ox withFloat:w__ * ow - x__ * ox - y__ * oy - z__ * oz];
}

- (PythagorasFQuaternion *)slerpWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                                 withFloat:(float)t {
  return [self slerpWithPythagorasFIQuaternion:other withFloat:t withPythagorasFQuaternion:[[[PythagorasFQuaternion alloc] init] autorelease]];
}

- (PythagorasFQuaternion *)slerpWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)other
                                                 withFloat:(float)t
                                 withPythagorasFQuaternion:(PythagorasFQuaternion *)result {
  float ox = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) x], oy = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) y], oz = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) z], ow = [((id<PythagorasFIQuaternion>) NIL_CHK(other)) w];
  float cosa = x__ * ox + y__ * oy + z__ * oz + w__ * ow, s0, s1;
  if (cosa < 0.0f) {
    cosa = -cosa;
    ox = -ox;
    oy = -oy;
    oz = -oz;
    ow = -ow;
  }
  if ((1.0f - cosa) > PythagorasFMathUtil_EPSILON) {
    float angle = [PythagorasFFloatMath acosWithFloat:cosa], sina = [PythagorasFFloatMath sinWithFloat:angle];
    s0 = [PythagorasFFloatMath sinWithFloat:(1.0f - t) * angle] / sina;
    s1 = [PythagorasFFloatMath sinWithFloat:t * angle] / sina;
  }
  else {
    s0 = 1.0f - t;
    s1 = t;
  }
  return [((PythagorasFQuaternion *) NIL_CHK(result)) setWithFloat:s0 * x__ + s1 * ox withFloat:s0 * y__ + s1 * oy withFloat:s0 * z__ + s1 * oz withFloat:s0 * w__ + s1 * ow];
}

- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector {
  return [self transformWithPythagorasFIVector3:vector withPythagorasFVector3:[[[PythagorasFVector3 alloc] init] autorelease]];
}

- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                  withPythagorasFVector3:(PythagorasFVector3 *)result {
  float xx = x__ * x__, yy = y__ * y__, zz = z__ * z__;
  float xy = x__ * y__, xz = x__ * z__, xw = x__ * w__;
  float yz = y__ * z__, yw = y__ * w__, zw = z__ * w__;
  float vx = [((id<PythagorasFIVector3>) NIL_CHK(vector)) x], vy = [((id<PythagorasFIVector3>) NIL_CHK(vector)) y], vz = [((id<PythagorasFIVector3>) NIL_CHK(vector)) z];
  float vx2 = vx * 2.0f, vy2 = vy * 2.0f, vz2 = vz * 2.0f;
  return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:vx + vy2 * (xy - zw) + vz2 * (xz + yw) - vx2 * (yy + zz) withFloat:vy + vx2 * (xy + zw) + vz2 * (yz - xw) - vy2 * (xx + zz) withFloat:vz + vx2 * (xz - yw) + vy2 * (yz + xw) - vz2 * (xx + yy)];
}

- (PythagorasFVector3 *)transformUnitXWithPythagorasFVector3:(PythagorasFVector3 *)result {
  return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:1.0f - 2.0f * (y__ * y__ + z__ * z__) withFloat:2.0f * (x__ * y__ + z__ * w__) withFloat:2.0f * (x__ * z__ - y__ * w__)];
}

- (PythagorasFVector3 *)transformUnitYWithPythagorasFVector3:(PythagorasFVector3 *)result {
  return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:2.0f * (x__ * y__ - z__ * w__) withFloat:1.0f - 2.0f * (x__ * x__ + z__ * z__) withFloat:2.0f * (y__ * z__ + x__ * w__)];
}

- (PythagorasFVector3 *)transformUnitZWithPythagorasFVector3:(PythagorasFVector3 *)result {
  return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:2.0f * (x__ * z__ + y__ * w__) withFloat:2.0f * (y__ * z__ - x__ * w__) withFloat:1.0f - 2.0f * (x__ * x__ + y__ * y__)];
}

- (PythagorasFVector3 *)transformAndAddWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                       withPythagorasFIVector3:(id<PythagorasFIVector3>)add
                                        withPythagorasFVector3:(PythagorasFVector3 *)result {
  float xx = x__ * x__, yy = y__ * y__, zz = z__ * z__;
  float xy = x__ * y__, xz = x__ * z__, xw = x__ * w__;
  float yz = y__ * z__, yw = y__ * w__, zw = z__ * w__;
  float vx = [((id<PythagorasFIVector3>) NIL_CHK(vector)) x], vy = [((id<PythagorasFIVector3>) NIL_CHK(vector)) y], vz = [((id<PythagorasFIVector3>) NIL_CHK(vector)) z];
  float vx2 = vx * 2.0f, vy2 = vy * 2.0f, vz2 = vz * 2.0f;
  return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:vx + vy2 * (xy - zw) + vz2 * (xz + yw) - vx2 * (yy + zz) + [((id<PythagorasFIVector3>) NIL_CHK(add)) x] withFloat:vy + vx2 * (xy + zw) + vz2 * (yz - xw) - vy2 * (xx + zz) + [((id<PythagorasFIVector3>) NIL_CHK(add)) y] withFloat:vz + vx2 * (xz - yw) + vy2 * (yz + xw) - vz2 * (xx + yy) + [((id<PythagorasFIVector3>) NIL_CHK(add)) z]];
}

- (PythagorasFVector3 *)transformScaleAndAddWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                                          withFloat:(float)scale_
                                            withPythagorasFIVector3:(id<PythagorasFIVector3>)add
                                             withPythagorasFVector3:(PythagorasFVector3 *)result {
  float xx = x__ * x__, yy = y__ * y__, zz = z__ * z__;
  float xy = x__ * y__, xz = x__ * z__, xw = x__ * w__;
  float yz = y__ * z__, yw = y__ * w__, zw = z__ * w__;
  float vx = [((id<PythagorasFIVector3>) NIL_CHK(vector)) x], vy = [((id<PythagorasFIVector3>) NIL_CHK(vector)) y], vz = [((id<PythagorasFIVector3>) NIL_CHK(vector)) z];
  float vx2 = vx * 2.0f, vy2 = vy * 2.0f, vz2 = vz * 2.0f;
  return [((PythagorasFVector3 *) NIL_CHK(result)) setWithFloat:(vx + vy2 * (xy - zw) + vz2 * (xz + yw) - vx2 * (yy + zz)) * scale_ + [((id<PythagorasFIVector3>) NIL_CHK(add)) x] withFloat:(vy + vx2 * (xy + zw) + vz2 * (yz - xw) - vy2 * (xx + zz)) * scale_ + [((id<PythagorasFIVector3>) NIL_CHK(add)) y] withFloat:(vz + vx2 * (xz - yw) + vy2 * (yz + xw) - vz2 * (xx + yy)) * scale_ + [((id<PythagorasFIVector3>) NIL_CHK(add)) z]];
}

- (float)transformZWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector {
  return [((id<PythagorasFIVector3>) NIL_CHK(vector)) z] + [((id<PythagorasFIVector3>) NIL_CHK(vector)) x] * 2.0f * (x__ * z__ - y__ * w__) + [((id<PythagorasFIVector3>) NIL_CHK(vector)) y] * 2.0f * (y__ * z__ + x__ * w__) - [((id<PythagorasFIVector3>) NIL_CHK(vector)) z] * 2.0f * (x__ * x__ + y__ * y__);
}

- (float)getRotationZ {
  return [PythagorasFFloatMath atan2WithFloat:2.0f * (x__ * y__ + z__ * w__) withFloat:1.0f - 2.0f * (y__ * y__ + z__ * z__)];
}

- (PythagorasFQuaternion *)integrateWithPythagorasFIVector3:(id<PythagorasFIVector3>)velocity
                                                  withFloat:(float)t {
  return [self integrateWithPythagorasFIVector3:velocity withFloat:t withPythagorasFQuaternion:[[[PythagorasFQuaternion alloc] init] autorelease]];
}

- (PythagorasFQuaternion *)integrateWithPythagorasFIVector3:(id<PythagorasFIVector3>)velocity
                                                  withFloat:(float)t
                                  withPythagorasFQuaternion:(PythagorasFQuaternion *)result {
  float qx = 0.5f * [((id<PythagorasFIVector3>) NIL_CHK(velocity)) x];
  float qy = 0.5f * [((id<PythagorasFIVector3>) NIL_CHK(velocity)) y];
  float qz = 0.5f * [((id<PythagorasFIVector3>) NIL_CHK(velocity)) z];
  return [[((PythagorasFQuaternion *) NIL_CHK(result)) setWithFloat:x__ + t * (qx * w__ + qy * z__ - qz * y__) withFloat:y__ + t * (qy * w__ + qz * x__ - qx * z__) withFloat:z__ + t * (qz * w__ + qx * y__ - qy * x__) withFloat:w__ + t * (-qx * x__ - qy * y__ - qz * z__)] normalizeLocal];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"[%f, %f, %f, %f]", x__, y__, z__, w__];
}

- (NSUInteger)hash {
  return [PythagorasUtilPlatform hashCodeWithFloat:x__] ^ [PythagorasUtilPlatform hashCodeWithFloat:y__] ^ [PythagorasUtilPlatform hashCodeWithFloat:z__] ^ [PythagorasUtilPlatform hashCodeWithFloat:w__];
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[PythagorasFQuaternion class]])) {
    return NO;
  }
  PythagorasFQuaternion *oquat = (PythagorasFQuaternion *) other;
  return (x__ == ((PythagorasFQuaternion *) NIL_CHK(oquat)).x_ && y__ == ((PythagorasFQuaternion *) NIL_CHK(oquat)).y_ && z__ == ((PythagorasFQuaternion *) NIL_CHK(oquat)).z_ && w__ == ((PythagorasFQuaternion *) NIL_CHK(oquat)).w_) || (x__ == -((PythagorasFQuaternion *) NIL_CHK(oquat)).x_ && y__ == -((PythagorasFQuaternion *) NIL_CHK(oquat)).y_ && z__ == -((PythagorasFQuaternion *) NIL_CHK(oquat)).z_ && w__ == -((PythagorasFQuaternion *) NIL_CHK(oquat)).x_);
}

+ (void)initialize {
  if (self == [PythagorasFQuaternion class]) {
    JreOperatorRetainedAssign(&PythagorasFQuaternion_IDENTITY_, self, [[[PythagorasFQuaternion alloc] initWithFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:1.0f] autorelease]);
  }
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFQuaternion *typedCopy = (PythagorasFQuaternion *) copy;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.z_ = z__;
  typedCopy.w_ = w__;
}

@end
