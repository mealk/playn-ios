//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/effect/Effect.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/util/Clock.h"
#import "pythagoras/f/Vector.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"
#import "tuxkids/tuxblocks/core/effect/Effect.h"

@implementation TuxkidsTuxblocksCoreEffectEffect

@synthesize layer_ = layer__;
@synthesize position_ = position__;

- (id<PlaynCoreLayer>)layer {
  return layer__;
}

- (PythagorasFVector *)position {
  return position__;
}

- (id)init {
  if ((self = [super init])) {
    position__ = [[PythagorasFVector alloc] init];
    layer__ = [((id<PlaynCoreGraphics>) [TuxkidsTuxblocksCorePlayNObject graphics]) createGroupLayer];
  }
  return self;
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(layer__)) setTranslationWithFloat:((PythagorasFVector *) NIL_CHK(position__)).x_ withFloat:((PythagorasFVector *) NIL_CHK(position__)).y_];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreEffectEffect *typedCopy = (TuxkidsTuxblocksCoreEffectEffect *) copy;
  typedCopy.layer_ = layer__;
  typedCopy.position_ = position__;
}

@end
