//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/BlockHolder.java
//
//  Created by Thomas on 7/26/13.
//

#include "playn/core/GroupLayer.h"
#include "playn/core/Layer.h"
#include "tripleplay/util/Colors.h"
#include "tuxkids/tuxblocks/core/layers/ImageLayerLike.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Block.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BlockHolder.h"
#include "tuxkids/tuxblocks/core/solve/blocks/HorizontalModifierBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/NumberBlockProxy.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Sprite.h"
#include "tuxkids/tuxblocks/core/solve/blocks/layer/EmptyBlockLayer.h"
#include "tuxkids/tuxblocks/core/solve/markup/Renderer.h"
#include "tuxkids/tuxblocks/core/utils/HashCode.h"

@implementation TuxkidsTuxblocksCoreSolveBlocksBlockHolder

- (void)initSpriteImpl OBJC_METHOD_FAMILY_NONE {
  [super initSpriteImpl];
  [self clearPreview];
}

- (void)clearPreview {
  (void) [((id<PlaynCoreGroupLayer>) nil_chk(groupLayer_)) setAlphaWithFloat:0.5f];
}

- (NSString *)text {
  return @" ";
}

- (int)color {
  return [TripleplayUtilColors WHITE];
}

- (BOOL)canReleaseWithBOOL:(BOOL)open {
  return NO;
}

- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode {
}

- (id<TuxkidsTuxblocksCoreLayersImageLayerLike>)generateNinepatchWithNSString:(NSString *)text {
  return [[TuxkidsTuxblocksCoreSolveBlocksLayerEmptyBlockLayer alloc] initWithFloat:10 withFloat:10];
}

- (BOOL)canAcceptWithTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)sprite {
  if ([sprite isKindOfClass:[TuxkidsTuxblocksCoreSolveBlocksBaseBlock class]]) {
    return YES;
  }
  else if ([sprite isKindOfClass:[TuxkidsTuxblocksCoreSolveBlocksHorizontalModifierBlock class]]) {
    return YES;
  }
  return NO;
}

- (void)addBlockListenerWithTuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener:(id<TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener>)listener {
}

- (TuxkidsTuxblocksCoreSolveBlocksBlock *)inverse {
  return nil;
}

- (TuxkidsTuxblocksCoreSolveMarkupRenderer *)createRendererWithWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)myCopy
                                                                   withTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)spriteCopy {
  [((TuxkidsTuxblocksCoreSolveBlocksBlock *) nil_chk(spriteCopy)) performActionWithTuxkidsTuxblocksCoreSolveBlocksSprite_Action:[[TuxkidsTuxblocksCoreSolveBlocksBlockHolder_$1 alloc] init]];
  if ([spriteCopy isKindOfClass:[TuxkidsTuxblocksCoreSolveBlocksHorizontalModifierBlock class]]) {
    return [((TuxkidsTuxblocksCoreSolveBlocksNumberBlockProxy *) nil_chk([((TuxkidsTuxblocksCoreSolveBlocksHorizontalModifierBlock *) spriteCopy) getProxyWithBOOL:NO])) createRenderer];
  }
  else if ([spriteCopy isKindOfClass:[TuxkidsTuxblocksCoreSolveBlocksBaseBlock class]]) {
    return [((TuxkidsTuxblocksCoreSolveBlocksBaseBlock *) spriteCopy) createRenderer];
  }
  return nil;
}

- (TuxkidsTuxblocksCoreSolveBlocksSprite *)copyChild OBJC_METHOD_FAMILY_NONE {
  return [[TuxkidsTuxblocksCoreSolveBlocksBlockHolder alloc] init];
}

- (id)init {
  return [super init];
}

@end
@implementation TuxkidsTuxblocksCoreSolveBlocksBlockHolder_$1

- (void)runWithTuxkidsTuxblocksCoreSolveBlocksSprite:(TuxkidsTuxblocksCoreSolveBlocksSprite *)sprite {
  [((TuxkidsTuxblocksCoreSolveBlocksSprite *) nil_chk(sprite)) setPreviewAddWithBOOL:YES];
}

- (id)init {
  return [super init];
}

@end