//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/Inventory.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseInventory_H_
#define _TuxkidsTuxblocksCoreDefenseInventory_H_

@class IOSIntArray;
@class IOSObjectArray;
@class PlaynCoreTextFormat;
@class TuxkidsTuxblocksCoreButton;
@class TuxkidsTuxblocksCoreDefenseDefenseScreen;
@class TuxkidsTuxblocksCoreDefenseGrid;
@class TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum;
@protocol PlaynCoreGroupLayer;
@protocol PlaynCorePointer_Event;

#import "JreEmulation.h"
#include "playn/core/Pointer.h"
#include "tuxkids/tuxblocks/core/GameState.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"

#define TuxkidsTuxblocksCoreDefenseInventory_COLS 2
#define TuxkidsTuxblocksCoreDefenseInventory_ITEM_SPRITE_MARGIN 5

@interface TuxkidsTuxblocksCoreDefenseInventory : TuxkidsTuxblocksCorePlayNObject {
 @public
  TuxkidsTuxblocksCoreDefenseGrid *grid_;
  id<PlaynCoreGroupLayer> groupLayer_;
  int width_, height_;
  IOSObjectArray *countSprites_;
  IOSObjectArray *itemButtons_;
  PlaynCoreTextFormat *textFormat_;
  TuxkidsTuxblocksCoreDefenseDefenseScreen *screen_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseGrid *grid;
@property (nonatomic, strong) id<PlaynCoreGroupLayer> groupLayer;
@property (nonatomic, assign) int width;
@property (nonatomic, assign) int height;
@property (nonatomic, strong) IOSObjectArray *countSprites;
@property (nonatomic, strong) IOSObjectArray *itemButtons;
@property (nonatomic, strong) PlaynCoreTextFormat *textFormat;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseDefenseScreen *screen;

- (id<PlaynCoreGroupLayer>)layer;
- (int)getItemSpriteSize;
- (int)getItemCaptionHeight;
- (float)getItemSpriteXWithInt:(int)index;
- (int)rows;
- (float)getItemSpriteYWithInt:(int)index;
- (IOSIntArray *)towerCounts;
- (id)initWithTuxkidsTuxblocksCoreDefenseDefenseScreen:(TuxkidsTuxblocksCoreDefenseDefenseScreen *)screen
                   withTuxkidsTuxblocksCoreDefenseGrid:(TuxkidsTuxblocksCoreDefenseGrid *)grid
                                               withInt:(int)width
                                               withInt:(int)height;
- (void)createCountSprites;
- (void)refreshCountSprites;
- (void)refreshCountSpriteWithInt:(int)index;
- (void)createSelectionSprites;
- (void)createBackgroundSprite;
@end

@interface TuxkidsTuxblocksCoreDefenseInventory_$1 : NSObject < TuxkidsTuxblocksCoreGameState_InventoryChangedListener > {
 @public
  TuxkidsTuxblocksCoreDefenseInventory *this$0_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseInventory *this$0;

- (void)onInventoryChangedWithInt:(int)index
                          withInt:(int)count;
- (id)initWithTuxkidsTuxblocksCoreDefenseInventory:(TuxkidsTuxblocksCoreDefenseInventory *)outer$;
@end

@interface TuxkidsTuxblocksCoreDefenseInventory_$2 : NSObject < PlaynCorePointer_Listener > {
 @public
  TuxkidsTuxblocksCoreDefenseInventory *this$0_;
  TuxkidsTuxblocksCoreButton *val$button_;
  TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *val$towerType_;
  int val$fi_;
}

@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseInventory *this$0;
@property (nonatomic, strong) TuxkidsTuxblocksCoreButton *val$button;
@property (nonatomic, strong) TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *val$towerType;
@property (nonatomic, assign) int val$fi;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (id)initWithTuxkidsTuxblocksCoreDefenseInventory:(TuxkidsTuxblocksCoreDefenseInventory *)outer$
                    withTuxkidsTuxblocksCoreButton:(TuxkidsTuxblocksCoreButton *)capture$0
 withTuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum:(TuxkidsTuxblocksCoreDefenseTowerTowerTypeEnum *)capture$1
                                           withInt:(int)capture$2;
@end

#endif // _TuxkidsTuxblocksCoreDefenseInventory_H_
