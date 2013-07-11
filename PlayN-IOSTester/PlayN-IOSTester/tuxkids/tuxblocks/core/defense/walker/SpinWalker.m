//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/SpinWalker.java
//
//  Created by Thomas on 7/10/13.
//

#import "pythagoras/f/FloatMath.h"
#import "tuxkids/tuxblocks/core/ImageLayerTintable.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"
#import "tuxkids/tuxblocks/core/defense/Grid.h"
#import "tuxkids/tuxblocks/core/defense/walker/SpinWalker.h"
#import "tuxkids/tuxblocks/core/defense/walker/Walker.h"
#import "pythagoras/i/Point.h"

@implementation TuxkidsTuxblocksCoreDefenseWalkerSpinWalker

- (id)initWithInt:(int)maxHp
          withInt:(int)walkCellTime {
  return [super initWithInt:maxHp withInt:walkCellTime];
}

- (void)updateMovementWithFloat:(float)perc {
  float x = [TuxkidsTuxblocksCorePlayNObject lerpWithFloat:((PythagorasIPoint *) NIL_CHK(lastCoordinates_)).y_ * [((TuxkidsTuxblocksCoreDefenseGrid *) NIL_CHK(grid_)) cellSize] withFloat:((PythagorasIPoint *) NIL_CHK(coordinates__)).y_ * [((TuxkidsTuxblocksCoreDefenseGrid *) NIL_CHK(grid_)) cellSize] withFloat:perc];
  float y = [TuxkidsTuxblocksCorePlayNObject lerpWithFloat:((PythagorasIPoint *) NIL_CHK(lastCoordinates_)).x_ * [((TuxkidsTuxblocksCoreDefenseGrid *) NIL_CHK(grid_)) cellSize] withFloat:((PythagorasIPoint *) NIL_CHK(coordinates__)).x_ * [((TuxkidsTuxblocksCoreDefenseGrid *) NIL_CHK(grid_)) cellSize] withFloat:perc];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(layer__)) setOriginWithFloat:[((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(layer__)) width] / 2 withFloat:[((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(layer__)) height] / 2];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(layer__)) setTranslationWithFloat:x + [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(layer__)) originX] withFloat:y + [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(layer__)) originY]];
  [((TuxkidsTuxblocksCoreImageLayerTintable *) NIL_CHK(layer__)) setRotationWithFloat:perc * PythagorasFFloatMath_PI];
}

- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)copy__ OBJC_METHOD_FAMILY_NONE {
  return [[TuxkidsTuxblocksCoreDefenseWalkerSpinWalker alloc] initWithInt:maxHp_ withInt:walkCellTime__];
}

@end
