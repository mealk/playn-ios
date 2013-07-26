//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/playn/showcase/core/peas/entities/Cloud1.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _PlaynShowcaseCorePeasEntitiesCloud1_H_
#define _PlaynShowcaseCorePeasEntitiesCloud1_H_

@class PlaynShowcaseCorePeasPeaWorld;
@protocol PlaynCoreImage;

#import "JreEmulation.h"
#include "playn/showcase/core/peas/entities/Entity.h"

@interface PlaynShowcaseCorePeasEntitiesCloud1 : PlaynShowcaseCorePeasEntitiesEntity {
}

+ (NSString *)TYPE;
+ (void)setTYPE:(NSString *)TYPE;
+ (id<PlaynCoreImage>)image;
+ (void)setImage:(id<PlaynCoreImage>)image;
- (id)initWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld;
- (void)updateWithFloat:(float)delta;
- (float)getWidth;
- (float)getHeight;
- (float)getMaximumWidth;
- (float)getMaximumHeight;
- (float)getVelocity;
- (void)setPosWithFloat:(float)x
              withFloat:(float)y;
- (void)initPreLoadWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld OBJC_METHOD_FAMILY_NONE;
- (void)initPostLoadWithPlaynShowcaseCorePeasPeaWorld:(PlaynShowcaseCorePeasPeaWorld *)peaWorld OBJC_METHOD_FAMILY_NONE;
- (id<PlaynCoreImage>)getImage;
@end

#endif // _PlaynShowcaseCorePeasEntitiesCloud1_H_