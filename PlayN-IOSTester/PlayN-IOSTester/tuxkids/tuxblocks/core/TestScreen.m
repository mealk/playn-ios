//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/TestScreen.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Math.h"
#include "playn/core/CanvasImage.h"
#include "playn/core/Color.h"
#include "playn/core/Graphics.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Image.h"
#include "playn/core/ImageLayer.h"
#include "playn/core/Layer.h"
#include "playn/core/util/Clock.h"
#include "tripleplay/game/Screen.h"
#include "tripleplay/game/ScreenStack.h"
#include "tripleplay/util/Colors.h"
#include "tuxkids/tuxblocks/core/GameState.h"
#include "tuxkids/tuxblocks/core/ImageLayerTintable.h"
#include "tuxkids/tuxblocks/core/TestScreen.h"
#include "tuxkids/tuxblocks/core/screen/GameScreen.h"
#include "tuxkids/tuxblocks/core/utils/CanvasUtils.h"

@implementation TuxkidsTuxblocksCoreTestScreen

@synthesize tint = tint_;
@synthesize l1 = l1_;
@synthesize l2 = l2_;
@synthesize total = total_;

- (id)initWithTripleplayGameScreenStack:(TripleplayGameScreenStack *)screens
      withTuxkidsTuxblocksCoreGameState:(TuxkidsTuxblocksCoreGameState *)state {
  if ((self = [super initWithTripleplayGameScreenStack:screens withTuxkidsTuxblocksCoreGameState:state])) {
    tint_ = [PlaynCoreColor rgbWithInt:125 withInt:255 withInt:0];
  }
  return self;
}

- (void)wasAdded {
  [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) addWithPlaynCoreLayer:[((id<PlaynCoreImageLayer>) nil_chk([((id<PlaynCoreGraphics>) nil_chk([TuxkidsTuxblocksCoreScreenGameScreen graphics])) createImageLayerWithPlaynCoreImage:[TuxkidsTuxblocksCoreUtilsCanvasUtils createRectWithFloat:[self width] withFloat:[self height] withInt:[TripleplayUtilColors LIGHT_GRAY]]])) setDepthWithFloat:-1]];
  id<PlaynCoreImage> test = [TuxkidsTuxblocksCoreUtilsCanvasUtils createCircleWithFloat:50 withInt:[TripleplayUtilColors PINK] withFloat:3 withInt:[TripleplayUtilColors GREEN]];
  l1_ = [((id<PlaynCoreGraphics>) nil_chk([TuxkidsTuxblocksCoreScreenGameScreen graphics])) createImageLayerWithPlaynCoreImage:test];
  (void) [((id<PlaynCoreImageLayer>) nil_chk(l1_)) setTintWithInt:tint_];
  [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) addWithPlaynCoreLayer:l1_];
  l2_ = [[TuxkidsTuxblocksCoreImageLayerTintable alloc] initWithPlaynCoreImage:test];
  [((id<PlaynCoreGroupLayer>) nil_chk(layer_)) addWithPlaynCoreLayer:[((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(l2_)) layer]];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(l2_)) setTintWithInt:tint_];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(l2_)) setTxWithFloat:[self width] - [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(l2_)) width]];
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  total_ += [((id<PlaynCoreUtilClock>) nil_chk(clock)) dt];
  float alpha = (float) [JavaLangMath cosWithDouble:total_ / 1000.0f * JavaLangMath_PI] / 2 + 0.5f;
  (void) [((id<PlaynCoreImageLayer>) nil_chk(l1_)) setTintWithInt:[TripleplayUtilColors blendWithInt:[TripleplayUtilColors WHITE] withInt:tint_ withFloat:1 - alpha]];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(l2_)) setTintWithInt:[TripleplayUtilColors WHITE] withInt:tint_ withFloat:alpha];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreTestScreen *typedCopy = (TuxkidsTuxblocksCoreTestScreen *) copy;
  typedCopy.tint = tint_;
  typedCopy.l1 = l1_;
  typedCopy.l2 = l2_;
  typedCopy.total = total_;
}

@end
