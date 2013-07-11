//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/projectile/Snow.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Throwable.h"
#import "playn/core/Assets.h"
#import "playn/core/Color.h"
#import "playn/core/Image.h"
#import "playn/core/ImageLayer.h"
#import "playn/core/Layer.h"
#import "tuxkids/tuxblocks/core/Constant.h"
#import "tuxkids/tuxblocks/core/PlayNObject.h"
#import "tuxkids/tuxblocks/core/defense/Grid.h"
#import "tuxkids/tuxblocks/core/defense/projectile/Snow.h"
#import "tuxkids/tuxblocks/core/defense/tower/Tower.h"
#import "tuxkids/tuxblocks/core/defense/walker/Walker.h"
#import "tuxkids/tuxblocks/core/utils/CanvasUtils.h"

@implementation TuxkidsTuxblocksCoreDefenseProjectileSnow

static id<PlaynCoreImage> TuxkidsTuxblocksCoreDefenseProjectileSnow_image_;

+ (id<PlaynCoreImage>)image {
  return TuxkidsTuxblocksCoreDefenseProjectileSnow_image_;
}

+ (void)setImage:(id<PlaynCoreImage>)image {
  TuxkidsTuxblocksCoreDefenseProjectileSnow_image_ = image;
}

- (void)placeWithTuxkidsTuxblocksCoreDefenseGrid:(TuxkidsTuxblocksCoreDefenseGrid *)grid
     withTuxkidsTuxblocksCoreDefenseWalkerWalker:(TuxkidsTuxblocksCoreDefenseWalkerWalker *)target
       withTuxkidsTuxblocksCoreDefenseTowerTower:(TuxkidsTuxblocksCoreDefenseTowerTower *)source {
  [super placeWithTuxkidsTuxblocksCoreDefenseGrid:grid withTuxkidsTuxblocksCoreDefenseWalkerWalker:target withTuxkidsTuxblocksCoreDefenseTowerTower:source];
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) setScaleWithFloat:0.7f];
  (void) [((id<PlaynCoreImageLayer>) NIL_CHK(layer__)) setAlphaWithFloat:0.5f];
}

- (float)maxSpeed {
  return 0.08f;
}

- (float)acceleration {
  return 0.01f;
}

- (id<PlaynCoreImage>)createImage {
  if (TuxkidsTuxblocksCoreDefenseProjectileSnow_image_ == nil) {
    TuxkidsTuxblocksCoreDefenseProjectileSnow_image_ = [((id<PlaynCoreAssets>) [TuxkidsTuxblocksCorePlayNObject assets]) getImageWithNSString:@"images/puff.png"];
    [TuxkidsTuxblocksCoreDefenseProjectileSnow_image_ addCallbackWithPlaynCoreUtilCallback:[[TuxkidsTuxblocksCoreDefenseProjectileSnow_$1 alloc] init]];
  }
  return TuxkidsTuxblocksCoreDefenseProjectileSnow_image_;
}

- (id)init {
  return [super init];
}

@end
@implementation TuxkidsTuxblocksCoreDefenseProjectileSnow_$1

- (void)onSuccessWithId:(id<PlaynCoreImage>)result {
  [TuxkidsTuxblocksCoreDefenseProjectileSnow setImage:[TuxkidsTuxblocksCoreUtilsCanvasUtils tintImageWithPlaynCoreImage:[TuxkidsTuxblocksCoreDefenseProjectileSnow image] withInt:[PlaynCoreColor rgbWithInt:150 withInt:150 withInt:255]]];
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
}

- (id)init {
  return [super init];
}

@end
