//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/canvas/ImageLayerCanvas.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreCanvasImageLayerCanvas_RESTRICT
#define PlaynCoreCanvasImageLayerCanvas_INCLUDE_ALL 1
#endif
#undef PlaynCoreCanvasImageLayerCanvas_RESTRICT

#if !defined (_PlaynCoreCanvasImageLayerCanvas_) && (PlaynCoreCanvasImageLayerCanvas_INCLUDE_ALL || PlaynCoreCanvasImageLayerCanvas_INCLUDE)
#define _PlaynCoreCanvasImageLayerCanvas_

@protocol PlaynCoreCanvas;
@protocol PlaynCoreImage;
@protocol PlaynCoreInternalTransform;
@protocol PlaynCorePattern;

#define PlaynCoreCanvasLayerCanvas_RESTRICT 1
#define PlaynCoreCanvasLayerCanvas_INCLUDE 1
#include "playn/core/canvas/LayerCanvas.h"

#define PlaynCoreImageLayer_RESTRICT 1
#define PlaynCoreImageLayer_INCLUDE 1
#include "playn/core/ImageLayer.h"

@interface PlaynCoreCanvasImageLayerCanvas : PlaynCoreCanvasLayerCanvas < PlaynCoreImageLayer > {
 @public
  float width__, height__;
  BOOL widthSet_, heightSet_;
  id<PlaynCoreImage> img_;
  id<PlaynCorePattern> pattern_;
  BOOL patternRepeatX_;
  BOOL patternRepeatY_;
}

@property (nonatomic, assign) float width_;
@property (nonatomic, assign) float height_;
@property (nonatomic, assign) BOOL widthSet;
@property (nonatomic, assign) BOOL heightSet;
@property (nonatomic, strong) id<PlaynCoreImage> img;
@property (nonatomic, strong) id<PlaynCorePattern> pattern;
@property (nonatomic, assign) BOOL patternRepeatX;
@property (nonatomic, assign) BOOL patternRepeatY;

- (id)initWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform;
- (id<PlaynCoreImage>)image;
- (id<PlaynCoreImageLayer>)setImageWithPlaynCoreImage:(id<PlaynCoreImage>)img;
- (float)width;
- (float)height;
- (float)scaledWidth;
- (float)scaledHeight;
- (void)setHeightWithFloat:(float)height;
- (void)setWidthWithFloat:(float)width;
- (void)setSizeWithFloat:(float)width
               withFloat:(float)height;
- (void)clearHeight;
- (void)clearWidth;
- (void)paintWithPlaynCoreCanvas:(id<PlaynCoreCanvas>)canvas
                       withFloat:(float)parentAlpha;
@end
#endif
