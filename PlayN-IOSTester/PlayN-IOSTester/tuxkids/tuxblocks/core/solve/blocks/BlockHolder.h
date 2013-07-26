//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/BlockHolder.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveBlocksBlockHolder_H_
#define _TuxkidsTuxblocksCoreSolveBlocksBlockHolder_H_

@class TuxkidsTuxblocksCoreSolveBlocksBlock;
@class TuxkidsTuxblocksCoreSolveBlocksSprite;
@class TuxkidsTuxblocksCoreSolveMarkupRenderer;
@class TuxkidsTuxblocksCoreUtilsHashCode;
@protocol TuxkidsTuxblocksCoreLayersImageLayerLike;
@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/BaseBlock.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Sprite.h"

@interface TuxkidsTuxblocksCoreSolveBlocksBlockHolder : TuxkidsTuxblocksCoreSolveBlocksBaseBlock {
}

- (void)initSpriteImpl OBJC_METHOD_FAMILY_NONE;
- (void)clearPreview;
- (NSString *)text;
- (int)color;
- (BOOL)canReleaseWithBOOL:(BOOL)open;
- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode;
- (id<TuxkidsTuxblocksCoreLayersImageLayerLike>)generateNinepatchWithNSString:(NSString *)text;
- (BOOL)canAcceptWithTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)sprite;
- (void)addBlockListenerWithTuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener:(id<TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener>)listener;
- (TuxkidsTuxblocksCoreSolveBlocksBlock *)inverse;
- (TuxkidsTuxblocksCoreSolveMarkupRenderer *)createRendererWithWithTuxkidsTuxblocksCoreSolveBlocksBaseBlock:(TuxkidsTuxblocksCoreSolveBlocksBaseBlock *)myCopy
                                                                   withTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)spriteCopy;
- (TuxkidsTuxblocksCoreSolveBlocksSprite *)copyChild OBJC_METHOD_FAMILY_NONE;
- (id)init;
@end

@interface TuxkidsTuxblocksCoreSolveBlocksBlockHolder_$1 : NSObject < TuxkidsTuxblocksCoreSolveBlocksSprite_Action > {
}

- (void)runWithTuxkidsTuxblocksCoreSolveBlocksSprite:(TuxkidsTuxblocksCoreSolveBlocksSprite *)sprite;
- (id)init;
@end

#endif // _TuxkidsTuxblocksCoreSolveBlocksBlockHolder_H_