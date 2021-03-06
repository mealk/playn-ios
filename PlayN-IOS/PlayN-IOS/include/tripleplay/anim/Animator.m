//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/anim/Animator.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "playn/core/util/Clock.h"
#include "tripleplay/anim/Animation.h"
#include "tripleplay/anim/Animator.h"

@implementation TripleplayAnimAnimator

@synthesize _anims = _anims_;
@synthesize _nanims = _nanims_;
@synthesize _accum = _accum_;
@synthesize _barriers = _barriers_;

+ (TripleplayAnimAnimator *)create {
  return [[TripleplayAnimAnimator alloc] init];
}

- (void)addBarrier {
  [self addBarrierWithFloat:0];
}

- (void)addBarrierWithFloat:(float)delay {
  TripleplayAnimAnimator_Barrier *barrier = [[TripleplayAnimAnimator_Barrier alloc] initWithFloat:delay];
  [((id<JavaUtilList>) nil_chk(_barriers_)) addWithId:barrier];
  _accum_ = ((TripleplayAnimAnimator_Barrier *) nil_chk(barrier)).accum;
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  float time = [((id<PlaynCoreUtilClock>) nil_chk(clock)) time];
  if (![((id<JavaUtilList>) nil_chk(_nanims_)) isEmpty]) {
    for (int ii = 0, ll = [((id<JavaUtilList>) nil_chk(_nanims_)) size]; ii < ll; ii++) {
      [((TripleplayAnimAnimation *) nil_chk([((id<JavaUtilList>) nil_chk(_nanims_)) getWithInt:ii])) init__WithFloat:time];
    }
    [((id<JavaUtilList>) nil_chk(_anims_)) addAllWithJavaUtilCollection:_nanims_];
    [((id<JavaUtilList>) nil_chk(_nanims_)) clear];
  }
  for (int ii = 0, ll = [((id<JavaUtilList>) nil_chk(_anims_)) size]; ii < ll; ii++) {
    if ([((TripleplayAnimAnimation *) nil_chk([((id<JavaUtilList>) nil_chk(_anims_)) getWithInt:ii])) applyWithTripleplayAnimAnimator:self withFloat:time] <= 0) {
      (void) [((id<JavaUtilList>) nil_chk(_anims_)) removeWithInt:ii--];
      ll -= 1;
    }
  }
  BOOL noActiveAnims = [((id<JavaUtilList>) nil_chk(_anims_)) isEmpty] && [((id<JavaUtilList>) nil_chk(_nanims_)) isEmpty];
  if (![((id<JavaUtilList>) nil_chk(_barriers_)) isEmpty] && (noActiveAnims || [((TripleplayAnimAnimator_Barrier *) nil_chk([((id<JavaUtilList>) nil_chk(_barriers_)) getWithInt:0])) expiredWithFloat:time])) {
    TripleplayAnimAnimator_Barrier *barrier = [((id<JavaUtilList>) nil_chk(_barriers_)) removeWithInt:0];
    [((id<JavaUtilList>) nil_chk(_nanims_)) addAllWithJavaUtilCollection:((TripleplayAnimAnimator_Barrier *) nil_chk(barrier)).accum];
    if ([((id<JavaUtilList>) nil_chk(_barriers_)) isEmpty]) {
      _accum_ = _nanims_;
    }
  }
}

- (void)clear {
  [((id<JavaUtilList>) nil_chk(_anims_)) clear];
  [((id<JavaUtilList>) nil_chk(_nanims_)) clear];
  [((id<JavaUtilList>) nil_chk(_barriers_)) clear];
  _accum_ = _nanims_;
}

- (id)addWithId:(TripleplayAnimAnimation *)anim {
  [((id<JavaUtilList>) nil_chk(_accum_)) addWithId:anim];
  return anim;
}

- (id)init {
  if ((self = [super init])) {
    _anims_ = [[JavaUtilArrayList alloc] init];
    _nanims_ = [[JavaUtilArrayList alloc] init];
    _accum_ = _nanims_;
    _barriers_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimator *typedCopy = (TripleplayAnimAnimator *) copy;
  typedCopy._anims = _anims_;
  typedCopy._nanims = _nanims_;
  typedCopy._accum = _accum_;
  typedCopy._barriers = _barriers_;
}

@end
@implementation TripleplayAnimAnimator_Barrier

@synthesize accum = accum_;
@synthesize expireDelay = expireDelay_;
@synthesize absoluteExpireTime = absoluteExpireTime_;

- (id)initWithFloat:(float)expireDelay {
  if ((self = [super init])) {
    accum_ = [[JavaUtilArrayList alloc] init];
    self.expireDelay = expireDelay;
  }
  return self;
}

- (BOOL)expiredWithFloat:(float)time {
  if (expireDelay_ == 0) return NO;
  if (absoluteExpireTime_ == 0) absoluteExpireTime_ = time + expireDelay_;
  return time > absoluteExpireTime_;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayAnimAnimator_Barrier *typedCopy = (TripleplayAnimAnimator_Barrier *) copy;
  typedCopy.accum = accum_;
  typedCopy.expireDelay = expireDelay_;
  typedCopy.absoluteExpireTime = absoluteExpireTime_;
}

@end
