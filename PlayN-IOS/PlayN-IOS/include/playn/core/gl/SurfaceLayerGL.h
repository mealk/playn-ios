//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/SurfaceLayerGL.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreGlSurfaceLayerGL_RESTRICT
#define PlaynCoreGlSurfaceLayerGL_INCLUDE_ALL 1
#endif
#undef PlaynCoreGlSurfaceLayerGL_RESTRICT

#if !defined (_PlaynCoreGlSurfaceLayerGL_) && (PlaynCoreGlSurfaceLayerGL_INCLUDE_ALL || PlaynCoreGlSurfaceLayerGL_INCLUDE)
#define _PlaynCoreGlSurfaceLayerGL_

@class PlaynCoreGlGLContext;
@class PlaynCoreGlGLShader;
@class PlaynCoreGlSurfaceGL;
@protocol PlaynCoreInternalTransform;
@protocol PlaynCoreSurface;

#define PlaynCoreGlLayerGL_RESTRICT 1
#define PlaynCoreGlLayerGL_INCLUDE 1
#include "playn/core/gl/LayerGL.h"

#define PlaynCoreSurfaceLayer_RESTRICT 1
#define PlaynCoreSurfaceLayer_INCLUDE 1
#include "playn/core/SurfaceLayer.h"

@interface PlaynCoreGlSurfaceLayerGL : PlaynCoreGlLayerGL < PlaynCoreSurfaceLayer > {
 @public
  PlaynCoreGlSurfaceGL *surface__;
}

@property (nonatomic, strong) PlaynCoreGlSurfaceGL *surface_;

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx
          withPlaynCoreGlSurfaceGL:(PlaynCoreGlSurfaceGL *)surface;
- (void)destroy;
- (id<PlaynCoreSurface>)surface;
- (void)paintWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)parentTransform
                                    withInt:(int)curTint
                    withPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)curShader;
- (float)width;
- (float)height;
- (float)scaledWidth;
- (float)scaledHeight;
@end
#endif
