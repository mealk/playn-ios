//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/ImageLayerGL.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreGlImageLayerGL_RESTRICT
#define PlaynCoreGlImageLayerGL_INCLUDE_ALL 1
#endif
#undef PlaynCoreGlImageLayerGL_RESTRICT

#if !defined (_PlaynCoreGlImageLayerGL_) && (PlaynCoreGlImageLayerGL_INCLUDE_ALL || PlaynCoreGlImageLayerGL_INCLUDE)
#define _PlaynCoreGlImageLayerGL_

@class PlaynCoreGlAbstractImageGL;
@class PlaynCoreGlGLContext;
@class PlaynCoreGlGLShader;
@protocol PlaynCoreImage;
@protocol PlaynCoreInternalTransform;

#define PlaynCoreGlLayerGL_RESTRICT 1
#define PlaynCoreGlLayerGL_INCLUDE 1
#include "playn/core/gl/LayerGL.h"

#define PlaynCoreImageLayer_RESTRICT 1
#define PlaynCoreImageLayer_INCLUDE 1
#include "playn/core/ImageLayer.h"

@interface PlaynCoreGlImageLayerGL : PlaynCoreGlLayerGL < PlaynCoreImageLayer > {
 @public
  float width__, height__;
  BOOL widthSet_, heightSet_;
  PlaynCoreGlAbstractImageGL *img_;
}

@property (nonatomic, assign) float width_;
@property (nonatomic, assign) float height_;
@property (nonatomic, assign) BOOL widthSet;
@property (nonatomic, assign) BOOL heightSet;
@property (nonatomic, strong) PlaynCoreGlAbstractImageGL *img;

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx;
- (void)destroy;
- (void)clearHeight;
- (void)clearWidth;
- (id<PlaynCoreImage>)image;
- (id<PlaynCoreImageLayer>)setImageWithPlaynCoreImage:(id<PlaynCoreImage>)img;
- (void)setWidthWithFloat:(float)width;
- (void)setHeightWithFloat:(float)height;
- (void)setSizeWithFloat:(float)width
               withFloat:(float)height;
- (void)paintWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)curTransform
                                    withInt:(int)curTint
                    withPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)curShader;
- (float)width;
- (float)height;
- (float)scaledWidth;
- (float)scaledHeight;
@end
#endif
