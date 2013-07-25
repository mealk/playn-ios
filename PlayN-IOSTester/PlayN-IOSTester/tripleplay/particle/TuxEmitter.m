//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tripleplay/particle/TuxEmitter.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/util/List.h"
#include "playn/core/Graphics.h"
#include "playn/core/Image.h"
#include "playn/core/ImmediateLayer.h"
#include "playn/core/Layer.h"
#include "playn/core/PlayN.h"
#include "playn/core/Surface.h"
#include "tripleplay/particle/CanvasParticleRenderer.h"
#include "tripleplay/particle/GLStatus.h"
#include "tripleplay/particle/ParticleBuffer.h"
#include "tripleplay/particle/Particles.h"
#include "tripleplay/particle/TuxEmitter.h"

@implementation TripleplayParticleTuxEmitter

@synthesize myLayer = myLayer_;
@synthesize renderer = renderer_;
@synthesize now = now_;

- (id)initWithTripleplayParticleParticles:(TripleplayParticleParticles *)parts
                                  withInt:(int)maxParticles
                       withPlaynCoreImage:(id<PlaynCoreImage>)image {
  if ((self = [super initWithTripleplayParticleParticles:parts withInt:maxParticles withPlaynCoreImage:image])) {
    myLayer_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createImmediateLayerWithPlaynCoreImmediateLayer_Renderer:[[TripleplayParticleTuxEmitter_$1 alloc] initWithTripleplayParticleTuxEmitter:self withPlaynCoreImage:image]];
    if (![TripleplayParticleGLStatus enabled]) {
      (void) [((id<PlaynCoreImmediateLayer>) nil_chk(layer_)) setVisibleWithBOOL:NO];
      renderer_ = [[TripleplayParticleCanvasParticleRenderer alloc] initWithPlaynCoreImage:image];
    }
    else {
      renderer_ = nil;
    }
  }
  return self;
}

- (void)updateWithFloat:(float)now
              withFloat:(float)dt {
  [super updateWithFloat:now withFloat:dt];
  (void) [((id<PlaynCoreImmediateLayer>) nil_chk(myLayer_)) setTranslationWithFloat:[((id<PlaynCoreImmediateLayer>) nil_chk(layer_)) tx] withFloat:[((id<PlaynCoreImmediateLayer>) nil_chk(layer_)) ty]];
  self.now = now;
}

- (void)destroy {
  [super destroy];
  [((id<PlaynCoreImmediateLayer>) nil_chk(myLayer_)) destroy];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleTuxEmitter *typedCopy = (TripleplayParticleTuxEmitter *) copy;
  typedCopy.myLayer = myLayer_;
  typedCopy.renderer = renderer_;
  typedCopy.now = now_;
}

@end
@implementation TripleplayParticleTuxEmitter_$1

@synthesize this$0 = this$0_;
@synthesize val$image = val$image_;

- (void)renderWithPlaynCoreSurface:(id<PlaynCoreSurface>)surface {
  if (this$0_.renderer != nil) [this$0_.renderer renderWithPlaynCoreSurface:surface withTripleplayParticleParticleBuffer:this$0_._buffer withPlaynCoreImage:val$image_ withJavaUtilList:this$0_.effectors withFloat:this$0_.now];
}

- (id)initWithTripleplayParticleTuxEmitter:(TripleplayParticleTuxEmitter *)outer$
                        withPlaynCoreImage:(id<PlaynCoreImage>)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$image_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayParticleTuxEmitter_$1 *typedCopy = (TripleplayParticleTuxEmitter_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$image = val$image_;
}

@end
