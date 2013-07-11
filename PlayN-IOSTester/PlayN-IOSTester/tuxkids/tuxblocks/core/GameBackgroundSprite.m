//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/GameBackgroundSprite.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSDoubleArray.h"
#import "java/lang/Math.h"
#import "java/util/ArrayList.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "playn/core/CanvasImage.h"
#import "playn/core/Graphics.h"
#import "playn/core/GroupLayer.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Layer.h"
#import "playn/core/util/Clock.h"
#import "pythagoras/f/Vector.h"
#import "tripleplay/util/Colors.h"
#import "tuxkids/tuxblocks/core/GameBackgroundSprite.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"
#import "tuxkids/tuxblocks/core/utils/CanvasUtils.h"
#import "tuxkids/tuxblocks/core/utils/Sobol.h"

@implementation TuxkidsTuxblocksCoreGameBackgroundSprite

@synthesize groupLayer = groupLayer_;
@synthesize backgroundSprites = backgroundSprites_;
@synthesize toRemove = toRemove_;
@synthesize rectTimer = rectTimer_;
@synthesize primaryColor_ = primaryColor__;
@synthesize primaryHue = primaryHue_;
@synthesize offset = offset_;
@synthesize sobolD5 = sobolD5_;

- (float)width {
  return [((id<PlaynCoreGraphics>) [TuxkidsTuxblocksCorePlayNObject graphics]) width];
}

- (float)height {
  return [((id<PlaynCoreGraphics>) [TuxkidsTuxblocksCorePlayNObject graphics]) height];
}

- (id<PlaynCoreGroupLayer>)layer {
  return groupLayer_;
}

- (int)primaryColor {
  return primaryColor__;
}

- (void)scrollWithFloat:(float)x
              withFloat:(float)y {
  ((PythagorasFVector *) NIL_CHK(offset_)).x_ += x;
  ((PythagorasFVector *) NIL_CHK(offset_)).y_ += y;
}

- (id)init {
  if ((self = [super init])) {
    backgroundSprites_ = [[JavaUtilArrayList alloc] init];
    toRemove_ = [[JavaUtilArrayList alloc] init];
    offset_ = [[PythagorasFVector alloc] init];
//    sobolD5_ = [[TuxkidsTuxblocksCoreUtilsSobol alloc] initWithInt:5];
    groupLayer_ = [((id<PlaynCoreGraphics>) [TuxkidsTuxblocksCorePlayNObject graphics]) createGroupLayer];
    (void) [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) setDepthWithFloat:-100];
    [self newThemeColor];
    [self updateWithInt:0];
  }
  return self;
}

- (void)createBackgroundSprite {
  TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *sprite = [[TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite alloc] initWithTuxkidsTuxblocksCoreGameBackgroundSprite:self withFloat:primaryHue_ withFloat:(float) [((id<JavaUtilList>) NIL_CHK(backgroundSprites_)) size] / 20];
  [((id<JavaUtilList>) NIL_CHK(backgroundSprites_)) addWithId:sprite];
  [((id<PlaynCoreGroupLayer>) NIL_CHK(groupLayer_)) addWithPlaynCoreLayer:((TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *) NIL_CHK(sprite)).layer];
}

- (void)removeBackgroundSprite {
  [((TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *) [((id<JavaUtilList>) NIL_CHK(backgroundSprites_)) getWithInt:(int) ([JavaLangMath random] * [((id<JavaUtilList>) NIL_CHK(backgroundSprites_)) size])]) beginRemove];
}

- (void)newThemeColor OBJC_METHOD_FAMILY_NONE {
  primaryHue_ = (float) [JavaLangMath random];
  primaryColor__ = [TuxkidsTuxblocksCoreUtilsCanvasUtils hsvToRgbWithFloat:primaryHue_ withFloat:1 withFloat:1];
}

- (void)updateWithInt:(int)delta {
  rectTimer_ += delta;
  if ([((id<JavaUtilList>) NIL_CHK(backgroundSprites_)) size] < TuxkidsTuxblocksCoreGameBackgroundSprite_MAX_RECTS) {
    if (rectTimer_ >= TuxkidsTuxblocksCoreGameBackgroundSprite_CREATE_RECT_INTERVAL) {
      rectTimer_ -= TuxkidsTuxblocksCoreGameBackgroundSprite_CREATE_RECT_INTERVAL;
      [self createBackgroundSprite];
    }
  }
  else {
    if (rectTimer_ >= TuxkidsTuxblocksCoreGameBackgroundSprite_REMOVE_RECT_INTERVAL) {
      rectTimer_ -= TuxkidsTuxblocksCoreGameBackgroundSprite_REMOVE_RECT_INTERVAL;
      [self removeBackgroundSprite];
    }
  }
}

- (void)paintWithPlaynCoreUtilClock:(id<PlaynCoreUtilClock>)clock {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilList>) NIL_CHK(backgroundSprites_)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *bg = ((TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *) NIL_CHK(bg)) updateWithInt:(int) [((id<PlaynCoreUtilClock>) NIL_CHK(clock)) dt]];
    }
  }
  [((id<JavaUtilList>) NIL_CHK(backgroundSprites_)) removeAllWithJavaUtilCollection:toRemove_];
  [((id<JavaUtilList>) NIL_CHK(toRemove_)) clear];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreGameBackgroundSprite *typedCopy = (TuxkidsTuxblocksCoreGameBackgroundSprite *) copy;
  typedCopy.groupLayer = groupLayer_;
  typedCopy.backgroundSprites = backgroundSprites_;
  typedCopy.toRemove = toRemove_;
  typedCopy.rectTimer = rectTimer_;
  typedCopy.primaryColor_ = primaryColor__;
  typedCopy.primaryHue = primaryHue_;
  typedCopy.offset = offset_;
  typedCopy.sobolD5 = sobolD5_;
}

@end
@implementation TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite

@synthesize this$0 = this$0_;
@synthesize layer = layer_;
@synthesize depth = depth_;
@synthesize originalPos = originalPos_;
@synthesize maxAlpha = maxAlpha_;
@synthesize removing = removing_;

- (id)initWithTuxkidsTuxblocksCoreGameBackgroundSprite:(TuxkidsTuxblocksCoreGameBackgroundSprite *)outer$
                                             withFloat:(float)hue
                                             withFloat:(float)r {
  if ((self = [super init])) {
    this$0_ = outer$;
    //IOSDoubleArray *point = [((TuxkidsTuxblocksCoreUtilsSobol *) NIL_CHK(outer$.sobolD5)) nextPoint];
      IOSDoubleArray* point = [[IOSDoubleArray alloc] initWithLength:5];
      for (int i = 0; i < 5; i++) {
          [point replaceDoubleAtIndex:i withDouble:[JavaLangMath random]];
      }
      
    int size = (int) ([((IOSDoubleArray *) NIL_CHK(point)) doubleAtIndex:0] * 250 + 50);
    r = (float) [((IOSDoubleArray *) NIL_CHK(point)) doubleAtIndex:4];
    float h = hue;
    if (r < 1.0f / 3) {
      h = h + 0.7f;
    }
    else if (r < 2.0f / 3) {
      h = h + 0.3f;
    }
    float s = (float) [JavaLangMath random] * 0.5f + 0.5f;
    float v = (float) [JavaLangMath random] * 0.3f + 0.4f;
    id<PlaynCoreCanvasImage> image = [TuxkidsTuxblocksCoreUtilsCanvasUtils createRectWithFloat:size withFloat:size withInt:[TuxkidsTuxblocksCoreUtilsCanvasUtils hsvToRgbWithFloat:h withFloat:s withFloat:v] withFloat:1 withInt:[TripleplayUtilColors DARK_GRAY]];
    layer_ = [((id<PlaynCoreGraphics>) [TuxkidsTuxblocksCorePlayNObject graphics]) createImageLayerWithPlaynCoreImage:image];
    maxAlpha_ = (float) [JavaLangMath random] * 0.4f + 0.4f;
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) setAlphaWithFloat:0];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) setOriginWithFloat:[((id<PlaynCoreCanvasImage>) NIL_CHK(image)) width] / 2 withFloat:[((id<PlaynCoreCanvasImage>) NIL_CHK(image)) height] / 2];
    originalPos_ = [[PythagorasFVector alloc] initWithFloat:[outer$ width] * ((float) [((IOSDoubleArray *) NIL_CHK(point)) doubleAtIndex:1] * 1.6f - 0.3f) withFloat:((float) [((IOSDoubleArray *) NIL_CHK(point)) doubleAtIndex:2] * 1.6f - 0.3f) * [outer$ height]];
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) setTranslationWithFloat:((PythagorasFVector *) NIL_CHK(originalPos_)).x_ withFloat:((PythagorasFVector *) NIL_CHK(originalPos_)).y_];
    depth_ = (float) [((IOSDoubleArray *) NIL_CHK(point)) doubleAtIndex:3] * 15 + 5;
    (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) setDepthWithFloat:-depth_];
  }
  return self;
}

- (void)updateWithInt:(int)delta {
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) setTranslationWithFloat:((PythagorasFVector *) NIL_CHK(originalPos_)).x_ + ((PythagorasFVector *) NIL_CHK(this$0_.offset)).x_ / depth_ withFloat:((PythagorasFVector *) NIL_CHK(originalPos_)).y_ + ((PythagorasFVector *) NIL_CHK(this$0_.offset)).y_ / depth_];
  float targetAlpha = removing_ ? 0 : maxAlpha_;
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) setAlphaWithFloat:[TuxkidsTuxblocksCorePlayNObject lerpTimeWithFloat:[((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) alpha] withFloat:targetAlpha withFloat:0.999f withFloat:delta]];
  if (removing_ && [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) alpha] < 0.01f) {
    [((id<PlaynCoreImageLayer>) NIL_CHK(layer_)) destroy];
    [((id<JavaUtilList>) NIL_CHK(this$0_.toRemove)) addWithId:self];
  }
}

- (void)beginRemove {
  removing_ = YES;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *typedCopy = (TuxkidsTuxblocksCoreGameBackgroundSprite_BackgroundSprite *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.layer = layer_;
  typedCopy.depth = depth_;
  typedCopy.originalPos = originalPos_;
  typedCopy.maxAlpha = maxAlpha_;
  typedCopy.removing = removing_;
}

@end