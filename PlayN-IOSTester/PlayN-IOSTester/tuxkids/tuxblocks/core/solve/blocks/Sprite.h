//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/solve/blocks/Sprite.java
//
//  Created by Thomas on 7/26/13.
//

#ifndef _TuxkidsTuxblocksCoreSolveBlocksSprite_H_
#define _TuxkidsTuxblocksCoreSolveBlocksSprite_H_

@class TuxkidsTuxblocksCoreSolveBlocksBlock;
@class TuxkidsTuxblocksCoreSolveMarkupRenderer;
@protocol PlaynCoreLayer;
@protocol PlaynCorePointer_Event;
@protocol PlaynCoreUtilClock;
@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_Action;
@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener;
@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_SimplifyListener;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"

#define TuxkidsTuxblocksCoreSolveBlocksSprite_SIMPLIFY_DEPTH 1

@interface TuxkidsTuxblocksCoreSolveBlocksSprite : TuxkidsTuxblocksCorePlayNObject {
 @public
  BOOL hasSprite__, previewAdd__, destoryed_;
  id<TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener> blockListener_;
}

@property (nonatomic, assign) BOOL hasSprite_;
@property (nonatomic, assign) BOOL previewAdd_;
@property (nonatomic, assign) BOOL destoryed;
@property (nonatomic, strong) id<TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener> blockListener;

+ (int)SIMPLIFY_DEPTH;
- (TuxkidsTuxblocksCoreSolveBlocksSprite *)copyChild OBJC_METHOD_FAMILY_NONE;
- (void)addBlockListenerWithTuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener:(id<TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener>)blockListener;
- (void)updateWithInt:(int)delta;
- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock;
- (id<PlaynCoreLayer>)layer;
- (float)width;
- (float)height;
- (void)destroy;
- (BOOL)destroyed;
- (void)performActionWithTuxkidsTuxblocksCoreSolveBlocksSprite_Action:(id<TuxkidsTuxblocksCoreSolveBlocksSprite_Action>)action;
- (void)setPreviewAddWithBOOL:(BOOL)previewAdd;
- (BOOL)previewAdd;
- (BOOL)hasSprite;
+ (int)baseSize;
+ (int)modSize;
+ (int)wrapSize;
+ (float)lerpBase;
- (float)x;
- (float)y;
- (float)top;
- (float)left;
- (float)right;
- (float)bottom;
- (float)centerX;
- (float)centerY;
- (BOOL)containsWithFloat:(float)x
                withFloat:(float)y;
- (void)initSprite OBJC_METHOD_FAMILY_NONE;
- (void)initSpriteImpl OBJC_METHOD_FAMILY_NONE;
- (TuxkidsTuxblocksCoreSolveBlocksSprite *)copy__ OBJC_METHOD_FAMILY_NONE;
- (void)copyFieldsWithTuxkidsTuxblocksCoreSolveBlocksSprite:(TuxkidsTuxblocksCoreSolveBlocksSprite *)castMe OBJC_METHOD_FAMILY_NONE;
- (TuxkidsTuxblocksCoreSolveBlocksSprite *)copy__WithBOOL:(BOOL)init_ OBJC_METHOD_FAMILY_NONE;
- (id)init;
@end

@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_BlockListener < NSObject, JavaObject >
- (void)wasGrabbedWithTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)sprite
                                withPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)wasReleasedWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)wasMovedWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)wasDoubleClickedWithTuxkidsTuxblocksCoreSolveBlocksBlock:(TuxkidsTuxblocksCoreSolveBlocksBlock *)sprite
                                      withPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)wasSimplified;
- (void)wasReducedWithTuxkidsTuxblocksCoreSolveMarkupRenderer:(TuxkidsTuxblocksCoreSolveMarkupRenderer *)problem
                                                      withInt:(int)answer
                                                      withInt:(int)startNumber
   withTuxkidsTuxblocksCoreSolveBlocksSprite_SimplifyListener:(id<TuxkidsTuxblocksCoreSolveBlocksSprite_SimplifyListener>)callback;
- (void)wasCanceled;
@end

@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_Action < NSObject, JavaObject >
- (void)runWithTuxkidsTuxblocksCoreSolveBlocksSprite:(TuxkidsTuxblocksCoreSolveBlocksSprite *)sprite;
@end

@protocol TuxkidsTuxblocksCoreSolveBlocksSprite_SimplifyListener < NSObject, JavaObject >
- (void)wasSimplifiedWithBOOL:(BOOL)success;
@end

#endif // _TuxkidsTuxblocksCoreSolveBlocksSprite_H_