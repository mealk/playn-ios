//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/SurfaceLayer.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreSurfaceLayer_RESTRICT
#define PlaynCoreSurfaceLayer_INCLUDE_ALL 1
#endif
#undef PlaynCoreSurfaceLayer_RESTRICT

#if !defined (_PlaynCoreSurfaceLayer_) && (PlaynCoreSurfaceLayer_INCLUDE_ALL || PlaynCoreSurfaceLayer_INCLUDE)
#define _PlaynCoreSurfaceLayer_

@protocol PlaynCoreSurface;

#define PlaynCoreLayer_RESTRICT 1
#define PlaynCoreLayer_HasSize_INCLUDE 1
#include "playn/core/Layer.h"

@protocol PlaynCoreSurfaceLayer < PlaynCoreLayer_HasSize, NSObject, JavaObject >
- (id<PlaynCoreSurface>)surface;
@end
#endif
