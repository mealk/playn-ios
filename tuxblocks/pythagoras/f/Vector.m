//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Vector.java
//
//  Created by Thomas on 7/1/13.
//

#import "AbstractVector.h"
#import "FloatMath.h"
#import "IOSFloatArray.h"
#import "IVector.h"
#import "Vector.h"

@implementation PythagorasFVector

@synthesize x_ = x__;
@synthesize y_ = y__;

- (id)initWithFloat:(float)x
          withFloat:(float)y {
  if ((self = [super init])) {
    (void) [self setWithFloat:x withFloat:y];
  }
  return self;
}

- (id)initWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  if ((self = [super init])) {
    (void) [self setWithPythagorasFIVector:other];
  }
  return self;
}

- (id)init {
  return [super init];
}

- (PythagorasFVector *)crossLocalWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self crossWithPythagorasFIVector:other withPythagorasFVector:self];
}

- (PythagorasFVector *)negateLocal {
  return [self negateWithPythagorasFVector:self];
}

- (PythagorasFVector *)normalizeLocal {
  return [self normalizeWithPythagorasFVector:self];
}

- (PythagorasFVector *)scaleLocalWithFloat:(float)v {
  return [self scale__WithFloat:v withPythagorasFVector:self];
}

- (PythagorasFVector *)scaleLocalWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self scale__WithPythagorasFIVector:other withPythagorasFVector:self];
}

- (PythagorasFVector *)addLocalWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self addWithPythagorasFIVector:other withPythagorasFVector:self];
}

- (PythagorasFVector *)subtractLocalWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self subtractWithPythagorasFIVector:other withPythagorasFVector:self];
}

- (PythagorasFVector *)addLocalWithFloat:(float)x
                               withFloat:(float)y {
  return [self addWithFloat:x withFloat:y withPythagorasFVector:self];
}

- (PythagorasFVector *)subtractLocalWithFloat:(float)x
                                    withFloat:(float)y {
  return [self subtractWithFloat:x withFloat:y withPythagorasFVector:self];
}

- (PythagorasFVector *)addScaledLocalWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                                  withFloat:(float)v {
  return [self addScaledWithPythagorasFIVector:other withFloat:v withPythagorasFVector:self];
}

- (PythagorasFVector *)rotateLocalWithFloat:(float)angle {
  return [self rotateWithFloat:angle withPythagorasFVector:self];
}

- (PythagorasFVector *)lerpLocalWithPythagorasFIVector:(id<PythagorasFIVector>)other
                                             withFloat:(float)t {
  return [self lerpWithPythagorasFIVector:other withFloat:t withPythagorasFVector:self];
}

- (PythagorasFVector *)setWithPythagorasFIVector:(id<PythagorasFIVector>)other {
  return [self setWithFloat:[((id<PythagorasFIVector>) NIL_CHK(other)) x] withFloat:[((id<PythagorasFIVector>) NIL_CHK(other)) y]];
}

- (PythagorasFVector *)setWithJavaLangFloatArray:(IOSFloatArray *)values {
  return [self setWithFloat:[((IOSFloatArray *) NIL_CHK(values)) floatAtIndex:0] withFloat:[((IOSFloatArray *) NIL_CHK(values)) floatAtIndex:1]];
}

- (PythagorasFVector *)setWithFloat:(float)x
                          withFloat:(float)y {
  self.x_ = x;
  self.y_ = y;
  return self;
}

- (PythagorasFVector *)setAngleWithFloat:(float)angle {
  float l = [self length];
  return [self setWithFloat:l * [PythagorasFFloatMath cosWithFloat:angle] withFloat:l * [PythagorasFFloatMath sinWithFloat:angle]];
}

- (PythagorasFVector *)setLengthWithFloat:(float)length {
  return [[self normalizeLocal] scaleLocalWithFloat:length];
}

- (float)x {
  return x__;
}

- (float)y {
  return y__;
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasFVector *typedCopy = (PythagorasFVector *) copy;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
}

@end
