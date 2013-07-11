//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tripleplay/particle/init/Angle.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSFloatArray.h"
#import "pythagoras/f/FloatMath.h"
#import "tripleplay/particle/Initializer.h"
#import "tripleplay/particle/ParticleBuffer.h"
#import "tripleplay/particle/init/Angle.h"

@implementation TripleplayParticleInitAngle

+ (TripleplayParticleInitializer *)byVelocity {
  return [TripleplayParticleInitAngle byVelocityWithFloat:0];
}

+ (TripleplayParticleInitializer *)byVelocityWithFloat:(float)angleOffset {
  return [[TripleplayParticleInitAngle_$1 alloc] initWithFloat:angleOffset];
}

+ (void)setWithJavaLangFloatArray:(IOSFloatArray *)data
                          withInt:(int)start
                        withFloat:(float)angle {
  float m00 = [((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_M00];
  float m01 = [((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_M01];
  float m10 = [((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_M10];
  float m11 = [((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_M11];
  float cosT = [PythagorasFFloatMath cosWithFloat:angle];
  float sinT = [PythagorasFFloatMath sinWithFloat:angle];
  [((IOSFloatArray *) NIL_CHK(data)) replaceFloatAtIndex:start + TripleplayParticleParticleBuffer_M00 withFloat:m00 * cosT - m10 * sinT];
  [((IOSFloatArray *) NIL_CHK(data)) replaceFloatAtIndex:start + TripleplayParticleParticleBuffer_M01 withFloat:m00 * sinT + m10 * cosT];
  [((IOSFloatArray *) NIL_CHK(data)) replaceFloatAtIndex:start + TripleplayParticleParticleBuffer_M10 withFloat:m01 * cosT - m11 * sinT];
  [((IOSFloatArray *) NIL_CHK(data)) replaceFloatAtIndex:start + TripleplayParticleParticleBuffer_M11 withFloat:m01 * sinT + m11 * cosT];
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayParticleInitAngle_$1

@synthesize val$angleOffset = val$angleOffset_;

- (void)init__WithInt:(int)index
withJavaLangFloatArray:(IOSFloatArray *)data
              withInt:(int)start OBJC_METHOD_FAMILY_NONE {
  float angle = [PythagorasFFloatMath atan2WithFloat:[((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_VEL_Y] withFloat:[((IOSFloatArray *) NIL_CHK(data)) floatAtIndex:start + TripleplayParticleParticleBuffer_VEL_X]] + val$angleOffset_;
  [TripleplayParticleInitAngle setWithJavaLangFloatArray:data withInt:start withFloat:angle];
}

- (id)initWithFloat:(float)capture$0 {
  if ((self = [super init])) {
    val$angleOffset_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleInitAngle_$1 *typedCopy = (TripleplayParticleInitAngle_$1 *) copy;
  typedCopy.val$angleOffset = val$angleOffset_;
}

@end
