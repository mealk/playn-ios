//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Matrix3.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSFloatArray.h"
#include "java/lang/ArrayIndexOutOfBoundsException.h"
#include "java/lang/Math.h"
#include "java/nio/FloatBuffer.h"
#include "pythagoras/f/FloatMath.h"
#include "pythagoras/f/IMatrix3.h"
#include "pythagoras/f/IQuaternion.h"
#include "pythagoras/f/IVector.h"
#include "pythagoras/f/IVector3.h"
#include "pythagoras/f/MathUtil.h"
#include "pythagoras/f/Matrix3.h"
#include "pythagoras/f/Vector.h"
#include "pythagoras/f/Vector3.h"
#include "pythagoras/util/Platform.h"
#include "pythagoras/util/SingularMatrixException.h"

@implementation PythagorasFMatrix3

static PythagorasFMatrix3 * PythagorasFMatrix3_IDENTITY_;

@synthesize m00_ = m00__;
@synthesize m10_ = m10__;
@synthesize m20_ = m20__;
@synthesize m01_ = m01__;
@synthesize m11_ = m11__;
@synthesize m21_ = m21__;
@synthesize m02_ = m02__;
@synthesize m12_ = m12__;
@synthesize m22_ = m22__;

+ (PythagorasFMatrix3 *)IDENTITY {
  return PythagorasFMatrix3_IDENTITY_;
}

- (id)initWithFloat:(float)m00
          withFloat:(float)m10
          withFloat:(float)m20
          withFloat:(float)m01
          withFloat:(float)m11
          withFloat:(float)m21
          withFloat:(float)m02
          withFloat:(float)m12
          withFloat:(float)m22 {
  if ((self = [super init])) {
    (void) [self setWithFloat:m00 withFloat:m10 withFloat:m20 withFloat:m01 withFloat:m11 withFloat:m21 withFloat:m02 withFloat:m12 withFloat:m22];
  }
  return self;
}

- (id)initWithFloatArray:(IOSFloatArray *)values {
  if ((self = [super init])) {
    (void) [self setWithFloatArray:values];
  }
  return self;
}

- (id)initWithPythagorasFMatrix3:(PythagorasFMatrix3 *)other {
  if ((self = [super init])) {
    (void) [self setWithPythagorasFIMatrix3:other];
  }
  return self;
}

- (id)init {
  if ((self = [super init])) {
    (void) [self setToIdentity];
  }
  return self;
}

- (void)setElementWithInt:(int)row
                  withInt:(int)col
                withFloat:(float)value {
  switch (col) {
    case 0:
    switch (row) {
      case 0:
      m00__ = value;
      return;
      case 1:
      m01__ = value;
      return;
      case 2:
      m02__ = value;
      return;
    }
    break;
    case 1:
    switch (row) {
      case 0:
      m10__ = value;
      return;
      case 1:
      m11__ = value;
      return;
      case 2:
      m12__ = value;
      return;
    }
    break;
    case 2:
    switch (row) {
      case 0:
      m20__ = value;
      return;
      case 1:
      m21__ = value;
      return;
      case 2:
      m22__ = value;
      return;
    }
    break;
  }
  @throw [[JavaLangArrayIndexOutOfBoundsException alloc] init];
}

- (void)setRowWithInt:(int)row
            withFloat:(float)x
            withFloat:(float)y
            withFloat:(float)z {
  switch (row) {
    case 0:
    m00__ = x;
    m10__ = y;
    m20__ = z;
    break;
    case 1:
    m01__ = x;
    m11__ = y;
    m21__ = z;
    break;
    case 2:
    m02__ = x;
    m12__ = y;
    m22__ = z;
    break;
    default:
    @throw [[JavaLangArrayIndexOutOfBoundsException alloc] init];
  }
}

- (void)setRowWithInt:(int)row
withPythagorasFVector3:(PythagorasFVector3 *)v {
  [self setRowWithInt:row withFloat:[((PythagorasFVector3 *) nil_chk(v)) x] withFloat:[((PythagorasFVector3 *) nil_chk(v)) y] withFloat:[((PythagorasFVector3 *) nil_chk(v)) z]];
}

- (void)setColumnWithInt:(int)col
               withFloat:(float)x
               withFloat:(float)y
               withFloat:(float)z {
  switch (col) {
    case 0:
    m00__ = x;
    m01__ = y;
    m02__ = z;
    break;
    case 1:
    m10__ = x;
    m11__ = y;
    m12__ = z;
    break;
    case 2:
    m20__ = x;
    m21__ = y;
    m22__ = z;
    break;
    default:
    @throw [[JavaLangArrayIndexOutOfBoundsException alloc] init];
  }
}

- (void)setColumnWithInt:(int)col
  withPythagorasFVector3:(PythagorasFVector3 *)v {
  [self setColumnWithInt:col withFloat:[((PythagorasFVector3 *) nil_chk(v)) x] withFloat:[((PythagorasFVector3 *) nil_chk(v)) y] withFloat:[((PythagorasFVector3 *) nil_chk(v)) z]];
}

- (PythagorasFMatrix3 *)setToIdentity {
  return [self setWithFloat:1.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:1.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (PythagorasFMatrix3 *)setToZero {
  return [self setWithFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:0.0f];
}

- (PythagorasFMatrix3 *)setToRotationWithPythagorasFIVector3:(id<PythagorasFIVector3>)from
                                     withPythagorasFIVector3:(id<PythagorasFIVector3>)to {
  float angle = [((id<PythagorasFIVector3>) nil_chk(from)) angleWithPythagorasFIVector3:to];
  return (angle < 0.0001f) ? [self setToIdentity] : [self setToRotationWithFloat:angle withPythagorasFIVector3:[((PythagorasFVector3 *) nil_chk([((id<PythagorasFIVector3>) nil_chk(from)) crossWithPythagorasFIVector3:to])) normalizeLocal]];
}

- (PythagorasFMatrix3 *)setToRotationWithFloat:(float)angle
                       withPythagorasFIVector3:(id<PythagorasFIVector3>)axis {
  return [self setToRotationWithFloat:angle withFloat:[((id<PythagorasFIVector3>) nil_chk(axis)) x] withFloat:[((id<PythagorasFIVector3>) nil_chk(axis)) y] withFloat:[((id<PythagorasFIVector3>) nil_chk(axis)) z]];
}

- (PythagorasFMatrix3 *)setToRotationWithFloat:(float)angle
                                     withFloat:(float)x
                                     withFloat:(float)y
                                     withFloat:(float)z {
  float c = [PythagorasFFloatMath cosWithFloat:angle], s = [PythagorasFFloatMath sinWithFloat:angle], omc = 1.0f - c;
  float xs = x * s, ys = y * s, zs = z * s, xy = x * y, xz = x * z, yz = y * z;
  return [self setWithFloat:x * x * omc + c withFloat:xy * omc - zs withFloat:xz * omc + ys withFloat:xy * omc + zs withFloat:y * y * omc + c withFloat:yz * omc - xs withFloat:xz * omc - ys withFloat:yz * omc + xs withFloat:z * z * omc + c];
}

- (PythagorasFMatrix3 *)setToRotationWithPythagorasFIQuaternion:(id<PythagorasFIQuaternion>)quat {
  float qx = [((id<PythagorasFIQuaternion>) nil_chk(quat)) x], qy = [((id<PythagorasFIQuaternion>) nil_chk(quat)) y], qz = [((id<PythagorasFIQuaternion>) nil_chk(quat)) z], qw = [((id<PythagorasFIQuaternion>) nil_chk(quat)) w];
  float xx = qx * qx, yy = qy * qy, zz = qz * qz;
  float xy = qx * qy, xz = qx * qz, xw = qx * qw;
  float yz = qy * qz, yw = qy * qw, zw = qz * qw;
  return [self setWithFloat:1.0f - 2.0f * (yy + zz) withFloat:2.0f * (xy - zw) withFloat:2.0f * (xz + yw) withFloat:2.0f * (xy + zw) withFloat:1.0f - 2.0f * (xx + zz) withFloat:2.0f * (yz - xw) withFloat:2.0f * (xz - yw) withFloat:2.0f * (yz + xw) withFloat:1.0f - 2.0f * (xx + yy)];
}

- (PythagorasFMatrix3 *)setToScaleWithPythagorasFIVector3:(id<PythagorasFIVector3>)scale_ {
  return [self setToScaleWithFloat:[((id<PythagorasFIVector3>) nil_chk(scale_)) x] withFloat:[((id<PythagorasFIVector3>) nil_chk(scale_)) y] withFloat:[((id<PythagorasFIVector3>) nil_chk(scale_)) z]];
}

- (PythagorasFMatrix3 *)setToScaleWithFloat:(float)s {
  return [self setToScaleWithFloat:s withFloat:s withFloat:s];
}

- (PythagorasFMatrix3 *)setToScaleWithFloat:(float)x
                                  withFloat:(float)y
                                  withFloat:(float)z {
  return [self setWithFloat:x withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:y withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:z];
}

- (PythagorasFMatrix3 *)setToReflectionWithPythagorasFIVector3:(id<PythagorasFIVector3>)normal {
  return [self setToReflectionWithFloat:[((id<PythagorasFIVector3>) nil_chk(normal)) x] withFloat:[((id<PythagorasFIVector3>) nil_chk(normal)) y] withFloat:[((id<PythagorasFIVector3>) nil_chk(normal)) z]];
}

- (PythagorasFMatrix3 *)setToReflectionWithFloat:(float)x
                                       withFloat:(float)y
                                       withFloat:(float)z {
  float x2 = -2.0f * x, y2 = -2.0f * y, z2 = -2.0f * z;
  float xy2 = x2 * y, xz2 = x2 * z, yz2 = y2 * z;
  return [self setWithFloat:1.0f + x2 * x withFloat:xy2 withFloat:xz2 withFloat:xy2 withFloat:1.0f + y2 * y withFloat:yz2 withFloat:xz2 withFloat:yz2 withFloat:1.0f + z2 * z];
}

- (PythagorasFMatrix3 *)setToTransformWithPythagorasFIVector:(id<PythagorasFIVector>)translation
                                                   withFloat:(float)rotation {
  return [((PythagorasFMatrix3 *) nil_chk([self setToRotationWithFloat:rotation])) setTranslationWithPythagorasFIVector:translation];
}

- (PythagorasFMatrix3 *)setToTransformWithPythagorasFIVector:(id<PythagorasFIVector>)translation
                                                   withFloat:(float)rotation
                                                   withFloat:(float)scale_ {
  return [((PythagorasFMatrix3 *) nil_chk([self setToRotationWithFloat:rotation])) setWithFloat:m00__ * scale_ withFloat:m10__ * scale_ withFloat:[((id<PythagorasFIVector>) nil_chk(translation)) x] withFloat:m01__ * scale_ withFloat:m11__ * scale_ withFloat:[((id<PythagorasFIVector>) nil_chk(translation)) y] withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (PythagorasFMatrix3 *)setToTransformWithPythagorasFIVector:(id<PythagorasFIVector>)translation
                                                   withFloat:(float)rotation
                                      withPythagorasFIVector:(id<PythagorasFIVector>)scale_ {
  float sx = [((id<PythagorasFIVector>) nil_chk(scale_)) x], sy = [((id<PythagorasFIVector>) nil_chk(scale_)) y];
  return [((PythagorasFMatrix3 *) nil_chk([self setToRotationWithFloat:rotation])) setWithFloat:m00__ * sx withFloat:m10__ * sy withFloat:[((id<PythagorasFIVector>) nil_chk(translation)) x] withFloat:m01__ * sx withFloat:m11__ * sy withFloat:[((id<PythagorasFIVector>) nil_chk(translation)) y] withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (PythagorasFMatrix3 *)setToTranslationWithPythagorasFIVector:(id<PythagorasFIVector>)translation {
  return [self setToTranslationWithFloat:[((id<PythagorasFIVector>) nil_chk(translation)) x] withFloat:[((id<PythagorasFIVector>) nil_chk(translation)) y]];
}

- (PythagorasFMatrix3 *)setToTranslationWithFloat:(float)x
                                        withFloat:(float)y {
  return [self setWithFloat:1.0f withFloat:0.0f withFloat:x withFloat:0.0f withFloat:1.0f withFloat:y withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (PythagorasFMatrix3 *)setTranslationWithPythagorasFIVector:(id<PythagorasFIVector>)translation {
  return [self setTranslationWithFloat:[((id<PythagorasFIVector>) nil_chk(translation)) x] withFloat:[((id<PythagorasFIVector>) nil_chk(translation)) y]];
}

- (PythagorasFMatrix3 *)setTranslationWithFloat:(float)x
                                      withFloat:(float)y {
  m20__ = x;
  m21__ = y;
  return self;
}

- (PythagorasFMatrix3 *)setToRotationWithFloat:(float)angle {
  float sina = [PythagorasFFloatMath sinWithFloat:angle], cosa = [PythagorasFFloatMath cosWithFloat:angle];
  return [self setWithFloat:cosa withFloat:-sina withFloat:0.0f withFloat:sina withFloat:cosa withFloat:0.0f withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (PythagorasFMatrix3 *)transposeLocal {
  return [self transposeWithPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)multLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other {
  return [self multWithPythagorasFIMatrix3:other withPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)addLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other {
  return [self addWithPythagorasFIMatrix3:other withPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)multAffineLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other {
  return [self multAffineWithPythagorasFIMatrix3:other withPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)invertLocal {
  return [self invertWithPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)invertAffineLocal {
  return [self invertAffineWithPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)lerpLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                               withFloat:(float)t {
  return [self lerpWithPythagorasFIMatrix3:other withFloat:t withPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)lerpAffineLocalWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                     withFloat:(float)t {
  return [self lerpAffineWithPythagorasFIMatrix3:other withFloat:t withPythagorasFMatrix3:self];
}

- (PythagorasFMatrix3 *)setWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other {
  return [self setWithFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m00] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m10] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m20] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m01] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m11] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m21] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m02] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m12] withFloat:[((id<PythagorasFIMatrix3>) nil_chk(other)) m22]];
}

- (PythagorasFMatrix3 *)setWithFloatArray:(IOSFloatArray *)values {
  return [self setWithFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:0] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:1] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:2] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:3] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:4] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:5] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:6] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:7] withFloat:[((IOSFloatArray *) nil_chk(values)) floatAtIndex:8]];
}

- (PythagorasFMatrix3 *)setWithFloat:(float)m00
                           withFloat:(float)m10
                           withFloat:(float)m20
                           withFloat:(float)m01
                           withFloat:(float)m11
                           withFloat:(float)m21
                           withFloat:(float)m02
                           withFloat:(float)m12
                           withFloat:(float)m22 {
  self.m00_ = m00;
  self.m01_ = m01;
  self.m02_ = m02;
  self.m10_ = m10;
  self.m11_ = m11;
  self.m12_ = m12;
  self.m20_ = m20;
  self.m21_ = m21;
  self.m22_ = m22;
  return self;
}

- (float)m00 {
  return m00__;
}

- (float)m10 {
  return m10__;
}

- (float)m20 {
  return m20__;
}

- (float)m01 {
  return m01__;
}

- (float)m11 {
  return m11__;
}

- (float)m21 {
  return m21__;
}

- (float)m02 {
  return m02__;
}

- (float)m12 {
  return m12__;
}

- (float)m22 {
  return m22__;
}

- (float)elementWithInt:(int)row
                withInt:(int)col {
  switch (col) {
    case 0:
    switch (row) {
      case 0:
      return m00__;
      case 1:
      return m01__;
      case 2:
      return m02__;
    }
    break;
    case 1:
    switch (row) {
      case 0:
      return m10__;
      case 1:
      return m11__;
      case 2:
      return m12__;
    }
    break;
    case 2:
    switch (row) {
      case 0:
      return m20__;
      case 1:
      return m21__;
      case 2:
      return m22__;
    }
    break;
  }
  @throw [[JavaLangArrayIndexOutOfBoundsException alloc] init];
}

- (void)getRowWithInt:(int)row
withPythagorasFVector3:(PythagorasFVector3 *)result {
  switch (row) {
    case 0:
    ((PythagorasFVector3 *) nil_chk(result)).x_ = m00__;
    ((PythagorasFVector3 *) nil_chk(result)).y_ = m10__;
    ((PythagorasFVector3 *) nil_chk(result)).z_ = m20__;
    break;
    case 1:
    ((PythagorasFVector3 *) nil_chk(result)).x_ = m01__;
    ((PythagorasFVector3 *) nil_chk(result)).y_ = m11__;
    ((PythagorasFVector3 *) nil_chk(result)).z_ = m21__;
    break;
    case 2:
    ((PythagorasFVector3 *) nil_chk(result)).x_ = m02__;
    ((PythagorasFVector3 *) nil_chk(result)).y_ = m12__;
    ((PythagorasFVector3 *) nil_chk(result)).z_ = m22__;
    break;
    default:
    @throw [[JavaLangArrayIndexOutOfBoundsException alloc] init];
  }
}

- (void)getColumnWithInt:(int)col
  withPythagorasFVector3:(PythagorasFVector3 *)result {
  switch (col) {
    case 0:
    ((PythagorasFVector3 *) nil_chk(result)).x_ = m00__;
    ((PythagorasFVector3 *) nil_chk(result)).y_ = m01__;
    ((PythagorasFVector3 *) nil_chk(result)).z_ = m02__;
    break;
    case 1:
    ((PythagorasFVector3 *) nil_chk(result)).x_ = m10__;
    ((PythagorasFVector3 *) nil_chk(result)).y_ = m11__;
    ((PythagorasFVector3 *) nil_chk(result)).z_ = m12__;
    break;
    case 2:
    ((PythagorasFVector3 *) nil_chk(result)).x_ = m20__;
    ((PythagorasFVector3 *) nil_chk(result)).y_ = m21__;
    ((PythagorasFVector3 *) nil_chk(result)).z_ = m22__;
    break;
    default:
    @throw [[JavaLangArrayIndexOutOfBoundsException alloc] init];
  }
}

- (PythagorasFMatrix3 *)transpose {
  return [self transposeWithPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)transposeWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:m00__ withFloat:m01__ withFloat:m02__ withFloat:m10__ withFloat:m11__ withFloat:m12__ withFloat:m20__ withFloat:m21__ withFloat:m22__];
}

- (PythagorasFMatrix3 *)multWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other {
  return [self multWithPythagorasFIMatrix3:other withPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)multWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                             withPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  float m00 = self.m00_, m01 = self.m01_, m02 = self.m02_;
  float m10 = self.m10_, m11 = self.m11_, m12 = self.m12_;
  float m20 = self.m20_, m21 = self.m21_, m22 = self.m22_;
  float om00 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m00], om01 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m01], om02 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m02];
  float om10 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m10], om11 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m11], om12 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m12];
  float om20 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m20], om21 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m21], om22 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m22];
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:m00 * om00 + m10 * om01 + m20 * om02 withFloat:m00 * om10 + m10 * om11 + m20 * om12 withFloat:m00 * om20 + m10 * om21 + m20 * om22 withFloat:m01 * om00 + m11 * om01 + m21 * om02 withFloat:m01 * om10 + m11 * om11 + m21 * om12 withFloat:m01 * om20 + m11 * om21 + m21 * om22 withFloat:m02 * om00 + m12 * om01 + m22 * om02 withFloat:m02 * om10 + m12 * om11 + m22 * om12 withFloat:m02 * om20 + m12 * om21 + m22 * om22];
}

- (PythagorasFMatrix3 *)addWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other {
  return [self addWithPythagorasFIMatrix3:other withPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)addWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                            withPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:m00__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m00] withFloat:m01__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m01] withFloat:m02__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m02] withFloat:m10__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m10] withFloat:m11__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m11] withFloat:m12__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m12] withFloat:m20__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m20] withFloat:m21__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m21] withFloat:m22__ + [((id<PythagorasFIMatrix3>) nil_chk(other)) m22]];
}

- (BOOL)isAffine {
  return (m02__ == 0.0f && m12__ == 0.0f && m22__ == 1.0f);
}

- (PythagorasFMatrix3 *)multAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other {
  return [self multAffineWithPythagorasFIMatrix3:other withPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)multAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                   withPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  float m00 = self.m00_, m01 = self.m01_;
  float m10 = self.m10_, m11 = self.m11_;
  float m20 = self.m20_, m21 = self.m21_;
  float om00 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m00], om01 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m01];
  float om10 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m10], om11 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m11];
  float om20 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m20], om21 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m21];
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:m00 * om00 + m10 * om01 withFloat:m00 * om10 + m10 * om11 withFloat:m00 * om20 + m10 * om21 + m20 withFloat:m01 * om00 + m11 * om01 withFloat:m01 * om10 + m11 * om11 withFloat:m01 * om20 + m11 * om21 + m21 withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (PythagorasFMatrix3 *)invert {
  return [self invertWithPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)invertWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  float m00 = self.m00_, m01 = self.m01_, m02 = self.m02_;
  float m10 = self.m10_, m11 = self.m11_, m12 = self.m12_;
  float m20 = self.m20_, m21 = self.m21_, m22 = self.m22_;
  float sd00 = m11 * m22 - m21 * m12;
  float sd10 = m01 * m22 - m21 * m02;
  float sd20 = m01 * m12 - m11 * m02;
  float det = m00 * sd00 + m20 * sd20 - m10 * sd10;
  if ([JavaLangMath absWithFloat:det] == 0.0f) {
    @throw [[PythagorasUtilSingularMatrixException alloc] initWithNSString:[self description]];
  }
  float rdet = 1.0f / det;
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:+sd00 * rdet withFloat:-(m10 * m22 - m20 * m12) * rdet withFloat:+(m10 * m21 - m20 * m11) * rdet withFloat:-sd10 * rdet withFloat:+(m00 * m22 - m20 * m02) * rdet withFloat:-(m00 * m21 - m20 * m01) * rdet withFloat:+sd20 * rdet withFloat:-(m00 * m12 - m10 * m02) * rdet withFloat:+(m00 * m11 - m10 * m01) * rdet];
}

- (PythagorasFMatrix3 *)invertAffine {
  return [self invertAffineWithPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)invertAffineWithPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  float m00 = self.m00_, m01 = self.m01_;
  float m10 = self.m10_, m11 = self.m11_;
  float m20 = self.m20_, m21 = self.m21_;
  float det = m00 * m11 - m10 * m01;
  if ([JavaLangMath absWithFloat:det] == 0.0f) {
    @throw [[PythagorasUtilSingularMatrixException alloc] initWithNSString:[self description]];
  }
  float rdet = 1.0f / det;
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:+m11 * rdet withFloat:-m10 * rdet withFloat:+(m10 * m21 - m20 * m11) * rdet withFloat:-m01 * rdet withFloat:+m00 * rdet withFloat:-(m00 * m21 - m20 * m01) * rdet withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (PythagorasFMatrix3 *)lerpWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                          withFloat:(float)t {
  return [self lerpWithPythagorasFIMatrix3:other withFloat:t withPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)lerpWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                          withFloat:(float)t
                             withPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  float m00 = self.m00_, m01 = self.m01_, m02 = self.m02_;
  float m10 = self.m10_, m11 = self.m11_, m12 = self.m12_;
  float m20 = self.m20_, m21 = self.m21_, m22 = self.m22_;
  float om00 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m00], om01 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m01], om02 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m02];
  float om10 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m10], om11 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m11], om12 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m12];
  float om20 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m20], om21 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m21], om22 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m22];
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:m00 + t * (om00 - m00) withFloat:m10 + t * (om10 - m10) withFloat:m20 + t * (om20 - m20) withFloat:m01 + t * (om01 - m01) withFloat:m11 + t * (om11 - m11) withFloat:m21 + t * (om21 - m21) withFloat:m02 + t * (om02 - m02) withFloat:m12 + t * (om12 - m12) withFloat:m22 + t * (om22 - m22)];
}

- (PythagorasFMatrix3 *)lerpAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                withFloat:(float)t {
  return [self lerpAffineWithPythagorasFIMatrix3:other withFloat:t withPythagorasFMatrix3:[[PythagorasFMatrix3 alloc] init]];
}

- (PythagorasFMatrix3 *)lerpAffineWithPythagorasFIMatrix3:(id<PythagorasFIMatrix3>)other
                                                withFloat:(float)t
                                   withPythagorasFMatrix3:(PythagorasFMatrix3 *)result {
  float m00 = self.m00_, m01 = self.m01_;
  float m10 = self.m10_, m11 = self.m11_;
  float m20 = self.m20_, m21 = self.m21_;
  float om00 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m00], om01 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m01];
  float om10 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m10], om11 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m11];
  float om20 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m20], om21 = [((id<PythagorasFIMatrix3>) nil_chk(other)) m21];
  return [((PythagorasFMatrix3 *) nil_chk(result)) setWithFloat:m00 + t * (om00 - m00) withFloat:m10 + t * (om10 - m10) withFloat:m20 + t * (om20 - m20) withFloat:m01 + t * (om01 - m01) withFloat:m11 + t * (om11 - m11) withFloat:m21 + t * (om21 - m21) withFloat:0.0f withFloat:0.0f withFloat:1.0f];
}

- (JavaNioFloatBuffer *)getWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf {
  (void) [((JavaNioFloatBuffer *) nil_chk([((JavaNioFloatBuffer *) nil_chk([((JavaNioFloatBuffer *) nil_chk(buf)) putWithFloat:m00__])) putWithFloat:m01__])) putWithFloat:m02__];
  (void) [((JavaNioFloatBuffer *) nil_chk([((JavaNioFloatBuffer *) nil_chk([((JavaNioFloatBuffer *) nil_chk(buf)) putWithFloat:m10__])) putWithFloat:m11__])) putWithFloat:m12__];
  (void) [((JavaNioFloatBuffer *) nil_chk([((JavaNioFloatBuffer *) nil_chk([((JavaNioFloatBuffer *) nil_chk(buf)) putWithFloat:m20__])) putWithFloat:m21__])) putWithFloat:m22__];
  return buf;
}

- (PythagorasFVector3 *)transformLocalWithPythagorasFVector3:(PythagorasFVector3 *)vector {
  return [self transformWithPythagorasFIVector3:vector withPythagorasFVector3:vector];
}

- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector {
  return [self transformWithPythagorasFIVector3:vector withPythagorasFVector3:[[PythagorasFVector3 alloc] init]];
}

- (PythagorasFVector3 *)transformWithPythagorasFIVector3:(id<PythagorasFIVector3>)vector
                                  withPythagorasFVector3:(PythagorasFVector3 *)result {
  float vx = [((id<PythagorasFIVector3>) nil_chk(vector)) x], vy = [((id<PythagorasFIVector3>) nil_chk(vector)) y], vz = [((id<PythagorasFIVector3>) nil_chk(vector)) z];
  return [((PythagorasFVector3 *) nil_chk(result)) setWithFloat:m00__ * vx + m10__ * vy + m20__ * vz withFloat:m01__ * vx + m11__ * vy + m21__ * vz withFloat:m02__ * vx + m12__ * vy + m22__ * vz];
}

- (PythagorasFVector *)transformPointLocalWithPythagorasFVector:(PythagorasFVector *)point {
  return [self transformPointWithPythagorasFIVector:point withPythagorasFVector:point];
}

- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)point {
  return [self transformPointWithPythagorasFIVector:point withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)transformPointWithPythagorasFIVector:(id<PythagorasFIVector>)point
                                      withPythagorasFVector:(PythagorasFVector *)result {
  float px = [((id<PythagorasFIVector>) nil_chk(point)) x], py = [((id<PythagorasFIVector>) nil_chk(point)) y];
  return [((PythagorasFVector *) nil_chk(result)) setWithFloat:m00__ * px + m10__ * py + m20__ withFloat:m01__ * px + m11__ * py + m21__];
}

- (PythagorasFVector *)transformVectorLocalWithPythagorasFVector:(PythagorasFVector *)vector {
  return [self transformVectorWithPythagorasFIVector:vector withPythagorasFVector:vector];
}

- (PythagorasFVector *)transformVectorWithPythagorasFIVector:(id<PythagorasFIVector>)vector {
  return [self transformVectorWithPythagorasFIVector:vector withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)transformVectorWithPythagorasFIVector:(id<PythagorasFIVector>)vector
                                       withPythagorasFVector:(PythagorasFVector *)result {
  float vx = [((id<PythagorasFIVector>) nil_chk(vector)) x], vy = [((id<PythagorasFIVector>) nil_chk(vector)) y];
  return [((PythagorasFVector *) nil_chk(result)) setWithFloat:m00__ * vx + m10__ * vy withFloat:m01__ * vx + m11__ * vy];
}

- (float)extractRotation {
  float n00 = m00__, n10 = m10__;
  float n01 = m01__, n11 = m11__;
  for (int ii = 0; ii < 10; ii++) {
    float o00 = n00, o10 = n10;
    float o01 = n01, o11 = n11;
    float det = o00 * o11 - o10 * o01;
    if ([JavaLangMath absWithFloat:det] == 0.0f) {
      @throw [[PythagorasUtilSingularMatrixException alloc] initWithNSString:[self description]];
    }
    float hrdet = 0.5f / det;
    n00 = +o11 * hrdet + o00 * 0.5f;
    n10 = -o01 * hrdet + o10 * 0.5f;
    n01 = -o10 * hrdet + o01 * 0.5f;
    n11 = +o00 * hrdet + o11 * 0.5f;
    float d00 = n00 - o00, d10 = n10 - o10;
    float d01 = n01 - o01, d11 = n11 - o11;
    if (d00 * d00 + d10 * d10 + d01 * d01 + d11 * d11 < PythagorasFMathUtil_EPSILON) {
      break;
    }
  }
  return [PythagorasFFloatMath atan2WithFloat:n01 withFloat:n00];
}

- (PythagorasFVector *)extractScale {
  return [self extractScaleWithPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)extractScaleWithPythagorasFVector:(PythagorasFVector *)result {
  float m00 = self.m00_, m01 = self.m01_, m10 = self.m10_, m11 = self.m11_;
  return [((PythagorasFVector *) nil_chk(result)) setWithFloat:[PythagorasFFloatMath sqrtWithFloat:m00 * m00 + m01 * m01] withFloat:[PythagorasFFloatMath sqrtWithFloat:m10 * m10 + m11 * m11]];
}

- (float)approximateUniformScale {
  float cp = m00__ * m11__ - m01__ * m10__;
  return (cp < 0.0f) ? -[PythagorasFFloatMath sqrtWithFloat:-cp] : [PythagorasFFloatMath sqrtWithFloat:cp];
}

- (NSString *)description {
  return ([NSString stringWithFormat:@"[[%f, %f, %f], [%f, %f, %f], [%f, %f, %f]]", m00__, m10__, m20__, m01__, m11__, m21__, m02__, m12__, m22__]);
}

- (NSUInteger)hash {
  return [PythagorasUtilPlatform hashCodeWithFloat:m00__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m10__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m20__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m01__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m11__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m21__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m02__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m12__] ^ [PythagorasUtilPlatform hashCodeWithFloat:m22__];
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[PythagorasFMatrix3 class]])) {
    return NO;
  }
  PythagorasFMatrix3 *omat = (PythagorasFMatrix3 *) other;
  return (m00__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m00_ && m10__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m10_ && m20__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m20_ && m01__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m01_ && m11__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m11_ && m21__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m21_ && m02__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m02_ && m12__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m12_ && m22__ == ((PythagorasFMatrix3 *) nil_chk(omat)).m22_);
}

+ (void)initialize {
  if (self == [PythagorasFMatrix3 class]) {
    PythagorasFMatrix3_IDENTITY_ = [[PythagorasFMatrix3 alloc] init];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFMatrix3 *typedCopy = (PythagorasFMatrix3 *) copy;
  typedCopy.m00_ = m00__;
  typedCopy.m10_ = m10__;
  typedCopy.m20_ = m20__;
  typedCopy.m01_ = m01__;
  typedCopy.m11_ = m11__;
  typedCopy.m21_ = m21__;
  typedCopy.m02_ = m02__;
  typedCopy.m12_ = m12__;
  typedCopy.m22_ = m22__;
}

@end
