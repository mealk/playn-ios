//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractVector.java
//
//  Created by Thomas on 7/10/13.
//

#import "pythagoras/f/AbstractVector.h"
#import "pythagoras/f/FloatMath.h"
#import "pythagoras/f/IVector.h"
#import "pythagoras/f/Vector.h"
#import "pythagoras/f/Vectors.h"
#import "pythagoras/f/XY.h"
#import "pythagoras/util/Platform.h"

@implementation PythagorasFAbstractVector

- (float)dotWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self x] * [((id<PythagorasFIVector>) NIL_CHK(other)) x] + [self y] * [((id<PythagorasFIVector>) NIL_CHK(other)) y];
}

- (PythagorasFVector *)crossWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self crossWithPythagorasFIVector:other withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)crossWithPythagorasFIVector:(id<PythagorasFIVector>)other
                             withPythagorasFVector:(PythagorasFVector *)result {
  float x = [self x], y = [self y], ox = [((id<PythagorasFIVector>) NIL_CHK(other)) x], oy = [((id<PythagorasFIVector>) NIL_CHK(other)) y];
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:y * ox - x * oy withFloat:x * oy - y * ox];
}

- (PythagorasFVector *)negate {
  return [self negateWithPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)negateWithPythagorasFVector:(PythagorasFVector *)result {
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:-[self x] withFloat:-[self y]];
}

- (PythagorasFVector *)normalize {
  return [self normalizeWithPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)normalizeWithPythagorasFVector:(PythagorasFVector *)result {
  return [self scale__WithFloat:1.0f / [self length] withPythagorasFVector:result];
}

- (float)length {
  return [PythagorasFFloatMath sqrtWithFloat:[self lengthSq]];
}

- (float)lengthSq {
  float x = [self x], y = [self y];
  return (x * x + y * y);
}

- (BOOL)isZero {
  return [PythagorasFVectors isZeroWithFloat:[self x] withFloat:[self y]];
}

- (float)distanceWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [PythagorasFFloatMath sqrtWithFloat:[self distanceSqWithPythagorasFIVector:other]];
}

- (float)distanceSqWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  float dx = [self x] - [((id<PythagorasFIVector>) NIL_CHK(other)) x], dy = [self y] - [((id<PythagorasFIVector>) NIL_CHK(other)) y];
  return dx * dx + dy * dy;
}

- (float)angle {
  return [PythagorasFFloatMath atan2WithFloat:[self y] withFloat:[self x]];
}

- (float)angleBetweenWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  float cos = [self dotWithPythagorasFIVector:other] / ([self length] * [((id<PythagorasFIVector>) NIL_CHK(other)) length]);
  return cos >= 1.0f ? 0.0f : [PythagorasFFloatMath acosWithFloat:cos];
}

- (PythagorasFVector *)scale__WithFloat:(float)v {
  return [self scale__WithFloat:v withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)scale__WithFloat:(float)v
                  withPythagorasFVector:(PythagorasFVector *)result {
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:[self x] * v withFloat:[self y] * v];
}

- (PythagorasFVector *)scale__WithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self scale__WithPythagorasFIVector:other withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)scale__WithPythagorasFIVector:(id<PythagorasFIVector>)other
                               withPythagorasFVector:(PythagorasFVector *)result {
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:[self x] * [((id<PythagorasFIVector>) NIL_CHK(other)) x] withFloat:[self y] * [((id<PythagorasFIVector>) NIL_CHK(other)) y]];
}

- (PythagorasFVector *)addWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self addWithPythagorasFIVector:other withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)addWithPythagorasFIVector:(id<PythagorasFIVector>)other
                           withPythagorasFVector:(PythagorasFVector *)result {
  return [self addWithFloat:[((id<PythagorasFIVector>) NIL_CHK(other)) x] withFloat:[((id<PythagorasFIVector>) NIL_CHK(other)) y] withPythagorasFVector:result];
}

- (PythagorasFVector *)subtractWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self subtractWithPythagorasFIVector:other withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)subtractWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                withPythagorasFVector:(PythagorasFVector *)result {
  return [self addWithFloat:-[((id<PythagorasFIVector>) NIL_CHK(other)) x] withFloat:-[((id<PythagorasFIVector>) NIL_CHK(other)) y] withPythagorasFVector:result];
}

- (PythagorasFVector *)addWithFloat:(float)x
                          withFloat:(float)y {
  return [self addWithFloat:x withFloat:y withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)addWithFloat:(float)x
                          withFloat:(float)y
              withPythagorasFVector:(PythagorasFVector *)result {
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:[self x] + x withFloat:[self y] + y];
}

- (PythagorasFVector *)subtractWithFloat:(float)x
                               withFloat:(float)y {
  return [self subtractWithFloat:x withFloat:y withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)subtractWithFloat:(float)x
                               withFloat:(float)y
                   withPythagorasFVector:(PythagorasFVector *)result {
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:[self x] - x withFloat:[self y] - y];
}

- (PythagorasFVector *)addScaledWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                             withFloat:(float)v {
  return [self addScaledWithPythagorasFIVector:other withFloat:v withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)addScaledWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                             withFloat:(float)v
                                 withPythagorasFVector:(PythagorasFVector *)result {
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:[self x] + [((id<PythagorasFIVector>) NIL_CHK(other)) x] * v withFloat:[self y] + [((id<PythagorasFIVector>) NIL_CHK(other)) y] * v];
}

- (PythagorasFVector *)rotateWithFloat:(float)angle {
  return [self rotateWithFloat:angle withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)rotateWithFloat:(float)angle
                 withPythagorasFVector:(PythagorasFVector *)result {
  float x = [self x], y = [self y];
  float sina = [PythagorasFFloatMath sinWithFloat:angle], cosa = [PythagorasFFloatMath cosWithFloat:angle];
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:x * cosa - y * sina withFloat:x * sina + y * cosa];
}

- (PythagorasFVector *)rotateAndAddWithFloat:(float)angle
                      withPythagorasFIVector:(id<PythagorasFIVector>)add
                       withPythagorasFVector:(PythagorasFVector *)result {
  float x = [self x], y = [self y];
  float sina = [PythagorasFFloatMath sinWithFloat:angle], cosa = [PythagorasFFloatMath cosWithFloat:angle];
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:x * cosa - y * sina + [((id<PythagorasFIVector>) NIL_CHK(add)) x] withFloat:x * sina + y * cosa + [((id<PythagorasFIVector>) NIL_CHK(add)) y]];
}

- (PythagorasFVector *)rotateScaleAndAddWithFloat:(float)angle
                                        withFloat:(float)scale_
                           withPythagorasFIVector:(id<PythagorasFIVector>)add
                            withPythagorasFVector:(PythagorasFVector *)result {
  float x = [self x], y = [self y];
  float sina = [PythagorasFFloatMath sinWithFloat:angle], cosa = [PythagorasFFloatMath cosWithFloat:angle];
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:(x * cosa - y * sina) * scale_ + [((id<PythagorasFIVector>) NIL_CHK(add)) x] withFloat:(x * sina + y * cosa) * scale_ + [((id<PythagorasFIVector>) NIL_CHK(add)) y]];
}

- (PythagorasFVector *)lerpWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                        withFloat:(float)t {
  return [self lerpWithPythagorasFIVector:other withFloat:t withPythagorasFVector:[[PythagorasFVector alloc] init]];
}

- (PythagorasFVector *)lerpWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                        withFloat:(float)t
                            withPythagorasFVector:(PythagorasFVector *)result {
  float x = [self x], y = [self y];
  float dx = [((id<PythagorasFIVector>) NIL_CHK(other)) x] - x, dy = [((id<PythagorasFIVector>) NIL_CHK(other)) y] - y;
  return [((PythagorasFVector *) NIL_CHK(result)) setWithFloat:x + t * dx withFloat:y + t * dy];
}

- (PythagorasFVector *)clone {
  return [[PythagorasFVector alloc] initWithPythagorasFIVector:self];
}

- (BOOL)isEqual:(id)obj {
  if (obj == self) {
    return YES;
  }
  if ([obj isKindOfClass:[PythagorasFAbstractVector class]]) {
    PythagorasFAbstractVector *p = (PythagorasFAbstractVector *) obj;
    return [self x] == [((PythagorasFAbstractVector *) NIL_CHK(p)) x] && [self y] == [((PythagorasFAbstractVector *) NIL_CHK(p)) y];
  }
  return NO;
}

- (NSUInteger)hash {
  return [PythagorasUtilPlatform hashCodeWithFloat:[self x]] ^ [PythagorasUtilPlatform hashCodeWithFloat:[self y]];
}

- (NSString *)description {
  return [PythagorasFVectors vectorToStringWithFloat:[self x] withFloat:[self y]];
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

@end
