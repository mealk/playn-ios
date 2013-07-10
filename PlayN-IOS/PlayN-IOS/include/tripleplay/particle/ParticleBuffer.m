//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/particle/ParticleBuffer.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "java/lang/Math.h"
#import "java/util/List.h"
#import "tripleplay/particle/Effector.h"
#import "tripleplay/particle/Initializer.h"
#import "tripleplay/particle/ParticleBuffer.h"
#import "tripleplay/particle/ParticleShader.h"

@implementation TripleplayParticleParticleBuffer

@synthesize data = data_;
@synthesize alive = alive_;
@synthesize _maxParticles = _maxParticles_;
@synthesize _live = _live_;

+ (int)BIRTH {
  return TripleplayParticleParticleBuffer_BIRTH;
}

+ (int)LIFESPAN {
  return TripleplayParticleParticleBuffer_LIFESPAN;
}

+ (int)VEL_X {
  return TripleplayParticleParticleBuffer_VEL_X;
}

+ (int)VEL_Y {
  return TripleplayParticleParticleBuffer_VEL_Y;
}

+ (int)M00 {
  return TripleplayParticleParticleBuffer_M00;
}

+ (int)M01 {
  return TripleplayParticleParticleBuffer_M01;
}

+ (int)M10 {
  return TripleplayParticleParticleBuffer_M10;
}

+ (int)M11 {
  return TripleplayParticleParticleBuffer_M11;
}

+ (int)TX {
  return TripleplayParticleParticleBuffer_TX;
}

+ (int)TY {
  return TripleplayParticleParticleBuffer_TY;
}

+ (int)RED {
  return TripleplayParticleParticleBuffer_RED;
}

+ (int)GREEN {
  return TripleplayParticleParticleBuffer_GREEN;
}

+ (int)BLUE {
  return TripleplayParticleParticleBuffer_BLUE;
}

+ (int)ALPHA {
  return TripleplayParticleParticleBuffer_ALPHA;
}

+ (int)NUM_FIELDS {
  return TripleplayParticleParticleBuffer_NUM_FIELDS;
}

- (id)initWithInt:(int)maxParticles {
  if ((self = [super init])) {
    _maxParticles_ = maxParticles;
    data_ = [[IOSFloatArray alloc] initWithLength:maxParticles * TripleplayParticleParticleBuffer_NUM_FIELDS];
    alive_ = [[IOSIntArray alloc] initWithLength:maxParticles / 32 + 1];
  }
  return self;
}

- (BOOL)isAliveWithInt:(int)partidx {
  return ([((IOSIntArray *) NIL_CHK(alive_)) intAtIndex:partidx / 32] & (1 << partidx % 32)) != 0;
}

- (void)setAliveWithInt:(int)partidx
               withBOOL:(BOOL)isAlive {
  if (isAlive) {
    [((IOSIntArray *) NIL_CHK(alive_)) replaceIntAtIndex:partidx / 32 withInt:[alive_ intAtIndex:partidx / 32] | (1 << partidx % 32)];
  }
  else {
    [((IOSIntArray *) NIL_CHK(alive_)) replaceIntAtIndex:partidx / 32 withInt:[alive_ intAtIndex:partidx / 32] & ~(1 << partidx % 32)];
  }
}

- (void)addWithInt:(int)count
         withFloat:(float)now
  withJavaUtilList:(id<JavaUtilList>)initters {
  if (_live_ >= _maxParticles_) return;
  int pp = 0, ppos = 0, icount = [((id<JavaUtilList>) NIL_CHK(initters)) size], initted = 0;
  for (int aa = 0; aa < (int) [((IOSIntArray *) NIL_CHK(alive_)) count] && initted < count; aa++) {
    int live = [((IOSIntArray *) NIL_CHK(alive_)) intAtIndex:aa], mask = 1;
    if (live == (int) 0xFFFFFFFF) {
      pp += 32;
      ppos += 32 * TripleplayParticleParticleBuffer_NUM_FIELDS;
      continue;
    }
    for (int end = [JavaLangMath minWithInt:pp + 32 withInt:_maxParticles_]; pp < end && initted < count; pp++, ppos += TripleplayParticleParticleBuffer_NUM_FIELDS, mask <<= 1) {
      if ((live & mask) != 0) continue;
      live |= mask;
      [((IOSFloatArray *) NIL_CHK(data_)) replaceFloatAtIndex:ppos + TripleplayParticleParticleBuffer_BIRTH withFloat:now];
      for (int ii = 0; ii < icount; ii++) {
        [((TripleplayParticleInitializer *) [((id<JavaUtilList>) NIL_CHK(initters)) getWithInt:ii]) init__WithInt:pp withJavaLangFloatArray:data_ withInt:ppos];
      }
      initted++;
    }
    [((IOSIntArray *) NIL_CHK(alive_)) replaceIntAtIndex:aa withInt:live];
  }
}

- (int)applyWithJavaUtilList:(id<JavaUtilList>)effectors
                   withFloat:(float)now
                   withFloat:(float)dt {
  int pp = 0, ppos = 0, ecount = [((id<JavaUtilList>) NIL_CHK(effectors)) size], living = 0;
  for (int aa = 0; aa < (int) [((IOSIntArray *) NIL_CHK(alive_)) count]; aa++) {
    int live = [((IOSIntArray *) NIL_CHK(alive_)) intAtIndex:aa], mask = 1, died = 0;
    for (int end = pp + 32; pp < end; pp++, ppos += TripleplayParticleParticleBuffer_NUM_FIELDS, mask <<= 1) {
      if ((live & mask) == 0) continue;
      if (now - [((IOSFloatArray *) NIL_CHK(data_)) floatAtIndex:ppos + TripleplayParticleParticleBuffer_BIRTH] > [((IOSFloatArray *) NIL_CHK(data_)) floatAtIndex:ppos + TripleplayParticleParticleBuffer_LIFESPAN]) {
        live &= ~mask;
        died++;
        continue;
      }
      for (int ee = 0; ee < ecount; ee++) [((TripleplayParticleEffector *) [((id<JavaUtilList>) NIL_CHK(effectors)) getWithInt:ee]) applyWithInt:pp withJavaLangFloatArray:data_ withInt:ppos withFloat:now withFloat:dt];
      living++;
    }
    if (died > 0) {
      [((IOSIntArray *) NIL_CHK(alive_)) replaceIntAtIndex:aa withInt:live];
    }
  }
  return living;
}

- (void)renderWithTripleplayParticleParticleShader:(TripleplayParticleParticleShader *)shader
                                         withFloat:(float)width
                                         withFloat:(float)height {
  float ql = -width / 2, qt = -height / 2, qr = width / 2, qb = height / 2;
  int pp = 0, ppos = 0, rendered = 0;
  for (int aa = 0; aa < (int) [((IOSIntArray *) NIL_CHK(alive_)) count]; aa++) {
    int live = [((IOSIntArray *) NIL_CHK(alive_)) intAtIndex:aa], mask = 1;
    for (int end = pp + 32; pp < end; pp++, ppos += TripleplayParticleParticleBuffer_NUM_FIELDS, mask <<= 1) {
      if ((live & mask) == 0) continue;
      [((TripleplayParticleParticleShader_ParticleCore *) NIL_CHK(shader.core)) addQuadWithFloat:ql withFloat:qt withFloat:qr withFloat:qb withJavaLangFloatArray:data_ withInt:ppos];
      rendered++;
    }
  }
  _live_ = rendered;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleParticleBuffer *typedCopy = (TripleplayParticleParticleBuffer *) copy;
  typedCopy.data = data_;
  typedCopy.alive = alive_;
  typedCopy._maxParticles = _maxParticles_;
  typedCopy._live = _live_;
}

@end