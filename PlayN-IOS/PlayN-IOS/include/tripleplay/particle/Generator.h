//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/particle/Generator.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayParticleGenerator_RESTRICT
#define TripleplayParticleGenerator_INCLUDE_ALL 1
#endif
#undef TripleplayParticleGenerator_RESTRICT
#if TripleplayParticleGenerator_$3_INCLUDE
#define TripleplayParticleGenerator_INCLUDE 1
#endif
#if TripleplayParticleGenerator_$2_INCLUDE
#define TripleplayParticleGenerator_INCLUDE 1
#endif
#if TripleplayParticleGenerator_$1_INCLUDE
#define TripleplayParticleGenerator_INCLUDE 1
#endif

#if !defined (_TripleplayParticleGenerator_) && (TripleplayParticleGenerator_INCLUDE_ALL || TripleplayParticleGenerator_INCLUDE)
#define _TripleplayParticleGenerator_

@class TripleplayParticleEmitter;

@interface TripleplayParticleGenerator : NSObject {
}

+ (TripleplayParticleGenerator *)NOOP;
+ (void)setNOOP:(TripleplayParticleGenerator *)NOOP;
+ (TripleplayParticleGenerator *)impulseWithInt:(int)particles;
+ (TripleplayParticleGenerator *)constantWithFloat:(float)particlesPerSecond;
- (BOOL)generateWithTripleplayParticleEmitter:(TripleplayParticleEmitter *)emitter
                                    withFloat:(float)now
                                    withFloat:(float)dt;
- (id)init;
@end
#endif

#if !defined (_TripleplayParticleGenerator_$1_) && (TripleplayParticleGenerator_INCLUDE_ALL || TripleplayParticleGenerator_$1_INCLUDE)
#define _TripleplayParticleGenerator_$1_

@class TripleplayParticleEmitter;

@interface TripleplayParticleGenerator_$1 : TripleplayParticleGenerator {
}

- (BOOL)generateWithTripleplayParticleEmitter:(TripleplayParticleEmitter *)emitter
                                    withFloat:(float)now
                                    withFloat:(float)dt;
- (id)init;
@end
#endif

#if !defined (_TripleplayParticleGenerator_$2_) && (TripleplayParticleGenerator_INCLUDE_ALL || TripleplayParticleGenerator_$2_INCLUDE)
#define _TripleplayParticleGenerator_$2_

@class TripleplayParticleEmitter;

@interface TripleplayParticleGenerator_$2 : TripleplayParticleGenerator {
 @public
  int val$particles_;
}

@property (nonatomic, assign) int val$particles;

- (BOOL)generateWithTripleplayParticleEmitter:(TripleplayParticleEmitter *)emitter
                                    withFloat:(float)now
                                    withFloat:(float)dt;
- (id)initWithInt:(int)capture$0;
@end
#endif

#if !defined (_TripleplayParticleGenerator_$3_) && (TripleplayParticleGenerator_INCLUDE_ALL || TripleplayParticleGenerator_$3_INCLUDE)
#define _TripleplayParticleGenerator_$3_

@class TripleplayParticleEmitter;

@interface TripleplayParticleGenerator_$3 : TripleplayParticleGenerator {
 @public
  float _secondsPerParticle_;
  float _accum_;
  float val$particlesPerSecond_;
}

@property (nonatomic, assign) float _secondsPerParticle;
@property (nonatomic, assign) float _accum;
@property (nonatomic, assign) float val$particlesPerSecond;

- (BOOL)generateWithTripleplayParticleEmitter:(TripleplayParticleEmitter *)emitter
                                    withFloat:(float)now
                                    withFloat:(float)dt;
- (id)initWithFloat:(float)capture$0;
@end
#endif
