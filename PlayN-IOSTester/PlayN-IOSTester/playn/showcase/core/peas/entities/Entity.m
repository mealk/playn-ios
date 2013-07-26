//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/peas/entities/Entity.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Throwable.h"
#include "playn/core/Assets.h"
#include "playn/core/Graphics.h"
#include "playn/core/Image.h"
#include "playn/core/ImageLayer.h"
#include "playn/core/Layer.h"
#include "playn/core/Log.h"
#include "playn/core/PlayN.h"
#include "playn/showcase/core/peas/PeaWorld.h"
#include "playn/showcase/core/peas/entities/Entity.h"

@implementation PlaynShowcaseCorePeasEntitiesEntity

@synthesize layer = layer_;
@synthesize x = x_;
@synthesize y = y_;
@synthesize angle = angle_;

- (id)initWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld
                                  withFloat:(float)px
                                  withFloat:(float)py
                                  withFloat:(float)pangle {
  if ((self = [super init])) {
    self.x = px;
    self.y = py;
    self.angle = pangle;
    layer_ = [((id<PlaynCoreGraphics>) nil_chk([PlaynCorePlayN graphics])) createImageLayerWithPlaynCoreImage:[self getImage]];
    [self initPreLoadWithPlaynShowcaseCorePeasPeaWorld:peaWorld];
    [((id<PlaynCoreImage>) nil_chk([self getImage])) addCallbackWithPlaynCoreUtilCallback:[[PlaynShowcaseCorePeasEntitiesEntity_$1 alloc] initWithPlaynShowcaseCorePeasEntitiesEntity:self withPlaynShowcaseCorePeasPeaWorld:peaWorld]];
  }
  return self;
}

- (void)initPreLoadWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld OBJC_METHOD_FAMILY_NONE {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)initPostLoadWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld OBJC_METHOD_FAMILY_NONE {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)paintWithFloat:(float)alpha {
}

- (void)updateWithFloat:(float)delta {
}

- (void)setPosWithFloat:(float)x
              withFloat:(float)y {
  (void) [((id<PlaynCoreImageLayer>) nil_chk(layer_)) setTranslationWithFloat:x withFloat:y];
}

- (void)setAngleWithFloat:(float)a {
  (void) [((id<PlaynCoreImageLayer>) nil_chk(layer_)) setRotationWithFloat:a];
}

- (float)getWidth {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)getHeight {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreImage>)getImage {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (id<PlaynCoreImage>)loadImageWithNSString:(NSString *)name {
  return [((id<PlaynCoreAssets>) nil_chk([PlaynCorePlayN assets])) getImageWithNSString:[NSString stringWithFormat:@"peas/images/%@", name]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynShowcaseCorePeasEntitiesEntity *typedCopy = (PlaynShowcaseCorePeasEntitiesEntity *) copy;
  typedCopy.layer = layer_;
  typedCopy.x = x_;
  typedCopy.y = y_;
  typedCopy.angle = angle_;
}

@end
@implementation PlaynShowcaseCorePeasEntitiesEntity_$1

@synthesize this$0 = this$0_;
@synthesize val$peaWorld = val$peaWorld_;

- (void)onSuccessWithId:(id<PlaynCoreImage>)image {
  (void) [((id<PlaynCoreImageLayer>) nil_chk(this$0_.layer)) setOriginWithFloat:[((id<PlaynCoreImage>) nil_chk(image)) width] / 2.0f withFloat:[((id<PlaynCoreImage>) nil_chk(image)) height] / 2.0f];
  (void) [((id<PlaynCoreImageLayer>) nil_chk(this$0_.layer)) setScaleWithFloat:[this$0_ getWidth] / [((id<PlaynCoreImage>) nil_chk(image)) width] withFloat:[this$0_ getHeight] / [((id<PlaynCoreImage>) nil_chk(image)) height]];
  (void) [((id<PlaynCoreImageLayer>) nil_chk(this$0_.layer)) setTranslationWithFloat:this$0_.x withFloat:this$0_.y];
  (void) [((id<PlaynCoreImageLayer>) nil_chk(this$0_.layer)) setRotationWithFloat:this$0_.angle];
  [this$0_ initPostLoadWithPlaynShowcaseCorePeasPeaWorld:val$peaWorld_];
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)err {
  [((id<PlaynCoreLog>) nil_chk([PlaynCorePlayN log])) errorWithNSString:[NSString stringWithFormat:@"Error loading image: %@", [((JavaLangThrowable *) nil_chk(err)) getMessage]]];
}

- (id)initWithPlaynShowcaseCorePeasEntitiesEntity:(PlaynShowcaseCorePeasEntitiesEntity *)outer$
                withPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$peaWorld_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynShowcaseCorePeasEntitiesEntity_$1 *typedCopy = (PlaynShowcaseCorePeasEntitiesEntity_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$peaWorld = val$peaWorld_;
}

@end