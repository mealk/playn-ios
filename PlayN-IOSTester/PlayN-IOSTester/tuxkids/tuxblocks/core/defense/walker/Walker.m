//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/Walker.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSBooleanArray.h"
#include "IOSObjectArray.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "playn/core/Canvas.h"
#include "playn/core/CanvasImage.h"
#include "playn/core/Graphics.h"
#include "playn/core/Layer.h"
#include "playn/core/util/Clock.h"
#include "pythagoras/f/Vector.h"
#include "pythagoras/i/Point.h"
#include "tripleplay/util/Colors.h"
#include "tuxkids/tuxblocks/core/ImageLayerTintable.h"
#include "tuxkids/tuxblocks/core/PlayNObject.h"
#include "tuxkids/tuxblocks/core/defense/DiscreteGridObject.h"
#include "tuxkids/tuxblocks/core/defense/Grid.h"
#include "tuxkids/tuxblocks/core/defense/Pathing.h"
#include "tuxkids/tuxblocks/core/defense/walker/Walker.h"
#include "tuxkids/tuxblocks/core/defense/walker/buff/Buff.h"

@implementation TuxkidsTuxblocksCoreDefenseWalkerWalker

@synthesize path = path_;
@synthesize lastCoordinates = lastCoordinates_;
@synthesize destination = destination_;
@synthesize layer_ = layer__;
@synthesize hp = hp_;
@synthesize alpha = alpha_;
@synthesize walkingMs = walkingMs_;
@synthesize placed = placed_;
@synthesize position_ = position__;
@synthesize buffs = buffs_;

- (void)updateMovementWithFloat:(float)perc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (int)getMaxHp {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)walkCellTime {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)copy__ OBJC_METHOD_FAMILY_NONE {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreLayer>)layerAddable {
  return [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) layer];
}

- (TuxkidsTuxblocksCoreImageLayerTintable *)layer {
  return layer__;
}

- (PythagorasFVector *)position {
  return position__;
}

- (float)width {
  return [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize];
}

- (float)height {
  return [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize];
}

- (BOOL)isAlive {
  return hp_ > 0 && ![self destroyed];
}

- (BOOL)destroyed {
  return [((id<PlaynCoreLayer>) nil_chk([((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) layer])) destroyed];
}

- (void)setDepthWithFloat:(float)depth {
  [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) setDepthWithFloat:depth];
}

- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)placeWithTuxkidsTuxblocksCoreDefenseGrid:(TuxkidsTuxblocksCoreDefenseGrid *)grid
                                                                 withPythagorasIPoint:(PythagorasIPoint *)coordinates
                                                                 withPythagorasIPoint:(PythagorasIPoint *)desitnation
                                                                            withFloat:(float)depth {
  [self placeWithTuxkidsTuxblocksCoreDefenseGrid:grid withFloat:depth];
  self.destination = desitnation;
  self.coordinates_ = lastCoordinates_ = coordinates;
  self.walkingMs = [self walkCellTime];
  self.hp = [self getMaxHp];
  placed_ = YES;
  path_ = [[JavaUtilArrayList alloc] init];
  [((id<JavaUtilList>) nil_chk(path_)) addAllWithJavaUtilCollection:[((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid)) currentPath]];
  (void) [((id<JavaUtilList>) nil_chk(path_)) removeWithInt:0];
  [self createSprite];
  [self updateWithInt:0];
  return self;
}

- (void)createSprite {
  id<PlaynCoreCanvasImage> image = [((id<PlaynCoreGraphics>) nil_chk([TuxkidsTuxblocksCorePlayNObject graphics])) createImageWithFloat:[((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize] withFloat:[((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize]];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) setFillColorWithInt:[TripleplayUtilColors WHITE]];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) setStrokeColorWithInt:[TripleplayUtilColors BLACK]];
  int border = (int) ([((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize] * 0.1f);
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) fillRectWithFloat:border withFloat:border withFloat:[((id<PlaynCoreCanvasImage>) nil_chk(image)) width] - border * 2 withFloat:[((id<PlaynCoreCanvasImage>) nil_chk(image)) height] - border * 2];
  (void) [((id<PlaynCoreCanvas>) nil_chk([((id<PlaynCoreCanvasImage>) nil_chk(image)) canvas])) strokeRectWithFloat:border withFloat:border withFloat:[((id<PlaynCoreCanvasImage>) nil_chk(image)) width] - 1 - border * 2 withFloat:[((id<PlaynCoreCanvasImage>) nil_chk(image)) height] - 1 - border * 2];
  layer__ = [[TuxkidsTuxblocksCoreImageLayerTintable alloc] initWithPlaynCoreImage:image];
  [self updateWithInt:0];
}

- (void)refreshPath {
  path_ = [TuxkidsTuxblocksCoreDefensePathing getPathWithTuxkidsTuxblocksCoreDefenseGrid:grid_ withPythagorasIPoint:coordinates__ withPythagorasIPoint:destination_];
  (void) [((id<JavaUtilList>) nil_chk(path_)) removeWithInt:0];
}

- (float)depthRow {
  return ((PythagorasFVector *) nil_chk(position__)).y_ / [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize];
}

- (float)depthCol {
  return ((PythagorasFVector *) nil_chk(position__)).x_ / [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize];
}

- (BOOL)updateWithInt:(int)delta {
  [super updateWithInt:delta];
  if (hp_ == 0) {
    if ([((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) alpha] < 0.01f) {
      [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) destroy];
      return YES;
    }
    return NO;
  }
  if (walkingMs_ >= [self walkCellTime]) {
    walkingMs_ -= [self walkCellTime];
    if ([((id<JavaUtilList>) nil_chk(path_)) size] > 0) {
      lastCoordinates_ = coordinates__;
      PythagorasIPoint *nLoc = [((id<JavaUtilList>) nil_chk(path_)) removeWithInt:0];
      if (![((IOSBooleanArray *) nil_chk([((IOSObjectArray *) nil_chk([((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) getPassability])) objectAtIndex:((PythagorasIPoint *) nil_chk(nLoc)).x_])) booleanAtIndex:((PythagorasIPoint *) nil_chk(nLoc)).y_]) {
        [self refreshPath];
        nLoc = [((id<JavaUtilList>) nil_chk(path_)) removeWithInt:0];
      }
      coordinates__ = nLoc;
    }
    else {
      [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) destroy];
      return YES;
    }
  }
  [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) setTintWithInt:[TripleplayUtilColors WHITE] withInt:[((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) towerColor] withFloat:(float) hp_ / [self getMaxHp]];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) setAlphaWithFloat:alpha_];
  for (int i = 0; i < [((id<JavaUtilList>) nil_chk(buffs_)) size]; i++) {
    TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *buff = [((id<JavaUtilList>) nil_chk(buffs_)) getWithInt:i];
    if ([((TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *) nil_chk(buff)) updateWithInt:delta]) {
      (void) [((id<JavaUtilList>) nil_chk(buffs_)) removeWithInt:i];
      i--;
      continue;
    }
  }
  return NO;
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  float dt = [((id<PlaynCoreUtilClock>) nil_chk(clock)) dt];
  if (hp_ > 0) {
    {
      id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(buffs_)) iterator];
      while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
        TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *buff = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
        dt = [((TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *) nil_chk(buff)) modifySpeedWithFloat:dt];
      }
    }
    walkingMs_ += dt;
  }
  else {
    [((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) setAlphaWithFloat:[TuxkidsTuxblocksCorePlayNObject lerpTimeWithFloat:[((TuxkidsTuxblocksCoreImageLayerTintable *) nil_chk(layer__)) alpha] withFloat:0 withFloat:0.995f withFloat:dt]];
  }
  float perc = (float) walkingMs_ / [self walkCellTime];
  (void) [((PythagorasFVector *) nil_chk(position__)) setWithFloat:([TuxkidsTuxblocksCorePlayNObject lerpWithFloat:((PythagorasIPoint *) nil_chk(coordinates__)).y_ withFloat:((PythagorasIPoint *) nil_chk(lastCoordinates_)).y_ withFloat:1 - perc] + 0.5f) * [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize] withFloat:([TuxkidsTuxblocksCorePlayNObject lerpWithFloat:((PythagorasIPoint *) nil_chk(coordinates__)).x_ withFloat:((PythagorasIPoint *) nil_chk(lastCoordinates_)).x_ withFloat:1 - perc] + 0.5f) * [((TuxkidsTuxblocksCoreDefenseGrid *) nil_chk(grid_)) cellSize]];
  [self updateMovementWithFloat:perc];
}

- (void)damageWithFloat:(float)damage {
  hp_ -= damage;
  hp_ = [JavaLangMath maxWithFloat:hp_ withFloat:0];
}

- (void)addBuffWithTuxkidsTuxblocksCoreDefenseWalkerBuffBuff:(TuxkidsTuxblocksCoreDefenseWalkerBuffBuff *)buff
                                                    withBOOL:(BOOL)replaceIfPresent {
  if (replaceIfPresent && [((id<JavaUtilList>) nil_chk(buffs_)) containsWithId:buff]) {
    [((id<JavaUtilList>) nil_chk(buffs_)) removeWithId:buff];
  }
  [((id<JavaUtilList>) nil_chk(buffs_)) addWithId:buff];
}

- (id)init {
  if ((self = [super init])) {
    alpha_ = 1;
    position__ = [[PythagorasFVector alloc] init];
    buffs_ = [[JavaUtilArrayList alloc] init];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreDefenseWalkerWalker *typedCopy = (TuxkidsTuxblocksCoreDefenseWalkerWalker *) copy;
  typedCopy.path = path_;
  typedCopy.lastCoordinates = lastCoordinates_;
  typedCopy.destination = destination_;
  typedCopy.layer_ = layer__;
  typedCopy.hp = hp_;
  typedCopy.alpha = alpha_;
  typedCopy.walkingMs = walkingMs_;
  typedCopy.placed = placed_;
  typedCopy.position_ = position__;
  typedCopy.buffs = buffs_;
}

@end
