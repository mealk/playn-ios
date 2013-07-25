//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/peas/entities/Cloud1.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Math.h"
#include "playn/core/GroupLayer.h"
#include "playn/core/Image.h"
#include "playn/core/ImageLayer.h"
#include "playn/core/Layer.h"
#include "playn/showcase/core/peas/PeaWorld.h"
#include "playn/showcase/core/peas/entities/Cloud1.h"
#include "playn/showcase/core/peas/entities/Entity.h"

@implementation PlaynShowcaseCorePeasEntitiesCloud1

static NSString * PlaynShowcaseCorePeasEntitiesCloud1_TYPE_;
static id<PlaynCoreImage> PlaynShowcaseCorePeasEntitiesCloud1_image_;

+ (NSString *)TYPE {
  return PlaynShowcaseCorePeasEntitiesCloud1_TYPE_;
}

+ (void)setTYPE:(NSString *)TYPE {
  PlaynShowcaseCorePeasEntitiesCloud1_TYPE_ = TYPE;
}

+ (id<PlaynCoreImage>)image {
  return PlaynShowcaseCorePeasEntitiesCloud1_image_;
}

+ (void)setImage:(id<PlaynCoreImage>)image {
  PlaynShowcaseCorePeasEntitiesCloud1_image_ = image;
}

- (id)initWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld {
  if ((self = [super initWithPlaynShowcaseCorePeasPeaWorld:peaWorld withFloat:0 withFloat:0 withFloat:0])) {
    y_ = (float) ([JavaLangMath random] * [self getMaximumHeight]);
    x_ = (float) ([JavaLangMath random] * [self getMaximumWidth]);
  }
  return self;
}

- (void)updateWithFloat:(float)delta {
  x_ += delta * [self getVelocity];
  (void) [((id<PlaynCoreImageLayer>) nil_chk(layer_)) setTranslationWithFloat:x_ withFloat:y_];
  if (x_ > [self getWidth] + [self getMaximumWidth]) {
    x_ = -[self getWidth];
    y_ = (float) ([JavaLangMath random] * [self getMaximumHeight]);
  }
}

- (float)getWidth {
  return 0.3f * 26.0f;
}

- (float)getHeight {
  return 0.3f * 18.0f;
}

- (float)getMaximumWidth {
  return 24.0f;
}

- (float)getMaximumHeight {
  return 3.0f;
}

- (float)getVelocity {
  return 0.003f;
}

- (void)setPosWithFloat:(float)x
              withFloat:(float)y {
  self.x = x;
  self.y = y;
  (void) [((id<PlaynCoreImageLayer>) nil_chk(layer_)) setTranslationWithFloat:x withFloat:y];
}

- (void)initPreLoadWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld OBJC_METHOD_FAMILY_NONE {
  [((id<PlaynCoreGroupLayer>) nil_chk(((PlaynShowcaseCorePeasPeaWorld *) nil_chk(peaWorld)).dynamicLayer)) addWithPlaynCoreLayer:layer_];
}

- (void)initPostLoadWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld OBJC_METHOD_FAMILY_NONE {
}

- (id<PlaynCoreImage>)getImage {
  return PlaynShowcaseCorePeasEntitiesCloud1_image_;
}

+ (void)initialize {
  if (self == [PlaynShowcaseCorePeasEntitiesCloud1 class]) {
    PlaynShowcaseCorePeasEntitiesCloud1_TYPE_ = @"Cloud1";
    PlaynShowcaseCorePeasEntitiesCloud1_image_ = [PlaynShowcaseCorePeasEntitiesEntity loadImageWithNSString:@"Cloud1.png"];
  }
}

@end
