//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/sprites/Pea.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _PlaynShowcaseCoreSpritesPea_H_
#define _PlaynShowcaseCoreSpritesPea_H_

@class JavaLangThrowable;
@class PlaynShowcaseCoreSpritesSprite;
@protocol PlaynCoreGroupLayer;

#import "JreEmulation.h"
#include "playn/core/util/Callback.h"

@interface PlaynShowcaseCoreSpritesPea : NSObject {
 @public
  PlaynShowcaseCoreSpritesSprite *sprite_;
  int spriteIndex_;
  float angle_;
  BOOL hasLoaded_;
}

@property (nonatomic, strong) PlaynShowcaseCoreSpritesSprite *sprite;
@property (nonatomic, assign) int spriteIndex;
@property (nonatomic, assign) float angle;
@property (nonatomic, assign) BOOL hasLoaded;

+ (NSString *)IMAGE;
+ (void)setIMAGE:(NSString *)IMAGE;
+ (NSString *)JSON;
+ (void)setJSON:(NSString *)JSON;
+ (NSString *)JSON_WITH_IMAGE;
+ (void)setJSON_WITH_IMAGE:(NSString *)JSON_WITH_IMAGE;
- (id)initWithPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)peaLayer
                        withFloat:(float)x
                        withFloat:(float)y;
- (void)updateWithInt:(int)delta;
@end

@interface PlaynShowcaseCoreSpritesPea_$1 : NSObject < PlaynCoreUtilCallback > {
 @public
  PlaynShowcaseCoreSpritesPea *this$0_;
  float val$x_;
  float val$y_;
  id<PlaynCoreGroupLayer> val$peaLayer_;
}

@property (nonatomic, strong) PlaynShowcaseCoreSpritesPea *this$0;
@property (nonatomic, assign) float val$x;
@property (nonatomic, assign) float val$y;
@property (nonatomic, strong) id<PlaynCoreGroupLayer> val$peaLayer;

- (void)onSuccessWithId:(PlaynShowcaseCoreSpritesSprite *)sprite;
- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)err;
- (id)initWithPlaynShowcaseCoreSpritesPea:(PlaynShowcaseCoreSpritesPea *)outer$
                                withFloat:(float)capture$0
                                withFloat:(float)capture$1
                  withPlaynCoreGroupLayer:(id<PlaynCoreGroupLayer>)capture$2;
@end

#endif // _PlaynShowcaseCoreSpritesPea_H_
