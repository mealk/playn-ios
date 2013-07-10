//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/anim/Animator.java
//
//  Created by Thomas on 7/10/13.
//

@class TripleplayAnimAnimation;
@protocol JavaUtilList;
@protocol PlaynCoreUtilClock;

#import "JreEmulation.h"
#import "tripleplay/anim/AnimBuilder.h"
#import "tripleplay/util/Paintable.h"

@interface TripleplayAnimAnimator : TripleplayAnimAnimBuilder < TripleplayUtilPaintable > {
 @public
  id<JavaUtilList> _anims_;
  id<JavaUtilList> _nanims_;
  id<JavaUtilList> _accum_;
  id<JavaUtilList> _barriers_;
}

@property (nonatomic, strong) id<JavaUtilList> _anims;
@property (nonatomic, strong) id<JavaUtilList> _nanims;
@property (nonatomic, strong) id<JavaUtilList> _accum;
@property (nonatomic, strong) id<JavaUtilList> _barriers;

+ (TripleplayAnimAnimator *)create;
- (void)addBarrier;
- (void)addBarrierWithFloat:(float)delay;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
- (void)clear;
- (id)addWithId:(TripleplayAnimAnimation *)anim;
- (id)init;
@end

@interface TripleplayAnimAnimator_Barrier : NSObject {
 @public
  id<JavaUtilList> accum_;
  float expireDelay_;
  float absoluteExpireTime_;
}

@property (nonatomic, strong) id<JavaUtilList> accum;
@property (nonatomic, assign) float expireDelay;
@property (nonatomic, assign) float absoluteExpireTime;

- (id)initWithFloat:(float)expireDelay;
- (BOOL)expiredWithFloat:(float)time;
@end