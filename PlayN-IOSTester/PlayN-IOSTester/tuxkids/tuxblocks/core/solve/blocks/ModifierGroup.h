//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/ModifierGroup.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveBlocksModifierGroup_H_
#define _TuxkidsTuxblocksCoreSolveBlocksModifierGroup_H_

@class PythagorasFRectangle;
@class TuxkidsTuxblocksCoreSolveBlocksModifierBlock;
@class TuxkidsTuxblocksCoreSolveBlocksNumberBlock;
@class TuxkidsTuxblocksCoreSolveBlocksSimplifyLayer;
@class TuxkidsTuxblocksCoreSolveMarkupRenderer;
@class TuxkidsTuxblocksCoreUtilsHashCode;
@protocol JavaUtilList;
@protocol PlaynCoreGroupLayer;
@protocol PlaynCoreLayer;
@protocol PlaynCoreUtilClock;
@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_Action;
@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/solve/blocks/SimplifyLayer.h"
#include "tuxkids/tuxblocks/core/solve/blocks/Sprite.h"
#include "tuxkids/tuxblocks/core/utils/HashCode.h"

#define TuxkidsTuxblocksCoreSolveBlocksModifierGroup_CHILD_START_DEPTH -1
#define TuxkidsTuxblocksCoreSolveBlocksModifierGroup_MODIFIERS_DEPTH 0

@interface TuxkidsTuxblocksCoreSolveBlocksModifierGroup : TuxkidsTuxblocksCoreSolveBlocksSprite < TuxkidsTuxblocksCoreUtilsHashCode_Hashable, TuxkidsTuxblocksCoreSolveBlocksSimplifyLayer_Simplifiable > {
 @public
  id<PlaynCoreGroupLayer> layer__;
  PythagorasFRectangle *rect_;
  PythagorasFRectangle *parentRect_;
  BOOL multiExpression_;
  TuxkidsTuxblocksCoreSolveBlocksSimplifyLayer *simplifyLayer_;
  id<JavaUtilList> toRemove_;
  id<JavaUtilList> children_, destroying_;
  TuxkidsTuxblocksCoreSolveBlocksModifierGroup *modifiers_;
}

@property (nonatomic, strong) id<PlaynCoreGroupLayer> layer_;
@property (nonatomic, strong) PythagorasFRectangle *rect;
@property (nonatomic, strong) PythagorasFRectangle *parentRect;
@property (nonatomic, assign) BOOL multiExpression;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksSimplifyLayer *simplifyLayer;
@property (nonatomic, strong) id<JavaUtilList> toRemove;
@property (nonatomic, strong) id<JavaUtilList> children;
@property (nonatomic, strong) id<JavaUtilList> destroying;
@property (nonatomic, strong) TuxkidsTuxblocksCoreSolveBlocksModifierGroup *modifiers;

+ (int)MODIFIERS_DEPTH;
+ (int)CHILD_START_DEPTH;
- (void)updateChildrenWithFloat:(float)base
                      withFloat:(float)dt;
- (void)updateRect;
- (TuxkidsTuxblocksCoreSolveBlocksModifierGroup *)createModifiers;
- (BOOL)canAddWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)sprite;
- (TuxkidsTuxblocksCoreSolveMarkupRenderer *)createRendererWithTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)base;
- (void)addNegative;
- (id<PlaynCoreLayer>)layer;
- (float)x;
- (float)y;
- (float)width;
- (float)height;
- (float)totalWidth;
- (float)offsetX;
- (void)initSpriteImpl OBJC_METHOD_FAMILY_NONE;
- (void)destroy;
- (void)addNewModifiers;
- (TuxkidsTuxblocksCoreSolveBlocksModifierGroup *)removeModifiers;
- (void)setModifiersWithTuxkidsTuxblocksCoreSolveBlocksModifierGroup:(TuxkidsTuxblocksCoreSolveBlocksModifierGroup *)mods;
- (void)addModifiersSprite;
- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)removeChildWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)sprite;
- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)removeChildWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)sprite
                                                                                                     withBOOL:(BOOL)destroy;
- (void)addChildWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)child;
- (void)addChildSpriteWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)child
                                                               withInt:(int)index;
- (BOOL)isModifiedHorizontally;
- (BOOL)isModifiedVertically;
- (void)addVerticalModifiersToWithJavaUtilList:(id<JavaUtilList>)mods;
- (BOOL)containsWithFloat:(float)x
                withFloat:(float)y;
- (void)updateParentRectWithTuxkidsTuxblocksCoreSolveBlocksSprite:(TuxkidsTuxblocksCoreSolveBlocksSprite *)parent;
- (void)updateParentRectWithFloat:(float)x
                        withFloat:(float)y
                        withFloat:(float)width
                        withFloat:(float)height;
- (void)snapChildren;
- (void)addBlockListenerWithTuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener:(id<TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener>)listener;
- (TuxkidsTuxblocksCoreSolveBlocksModifierGroup *)updateParentModifiers;
- (void)updateModifiers;
- (void)releaseLayers;
- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)addModifierWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)sprite
                                                                                                     withBOOL:(BOOL)snap;
- (TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)addExpressionWithTuxkidsTuxblocksCoreSolveBlocksNumberBlock:(TuxkidsTuxblocksCoreSolveBlocksNumberBlock *)sprite
                                                                                                     withBOOL:(BOOL)snap;
- (BOOL)canAddExpressionWithTuxkidsTuxblocksCoreSolveBlocksNumberBlock:(TuxkidsTuxblocksCoreSolveBlocksNumberBlock *)sprite;
- (void)updateWithInt:(int)delta;
- (void)updateWithInt:(int)delta
             withBOOL:(BOOL)multiExpression;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
- (void)performActionWithTuxkidsTuxblocksCoreSolveBlocksSprite_Action:(id<TuxkidsTuxblocksCoreSolveBlocksSprite_Action>)action;
- (NSString *)hierarchyWithInt:(int)tab;
- (void)addFieldsWithTuxkidsTuxblocksCoreUtilsHashCode:(TuxkidsTuxblocksCoreUtilsHashCode *)hashCode;
- (void)copyFieldsWithTuxkidsTuxblocksCoreSolveBlocksSprite:(TuxkidsTuxblocksCoreSolveBlocksSprite *)castMe OBJC_METHOD_FAMILY_NONE;
- (void)simplifyWithTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)param0
                withTuxkidsTuxblocksCoreSolveBlocksModifierBlock:(TuxkidsTuxblocksCoreSolveBlocksModifierBlock *)param1;
- (void)updateSimplify;
- (id)init;
@end

#endif // _TuxkidsTuxblocksCoreSolveBlocksModifierGroup_H_