//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/UIOverlayStub.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreUIOverlayStub_RESTRICT
#define PlaynCoreUIOverlayStub_INCLUDE_ALL 1
#endif
#undef PlaynCoreUIOverlayStub_RESTRICT

#if !defined (_PlaynCoreUIOverlayStub_) && (PlaynCoreUIOverlayStub_INCLUDE_ALL || PlaynCoreUIOverlayStub_INCLUDE)
#define _PlaynCoreUIOverlayStub_

@protocol PythagorasFIRectangle;

#define PlaynCoreUIOverlay_RESTRICT 1
#define PlaynCoreUIOverlay_INCLUDE 1
#include "playn/core/UIOverlay.h"

@interface PlaynCoreUIOverlayStub : NSObject < PlaynCoreUIOverlay > {
}

- (BOOL)hasOverlay;
- (void)hideOverlayWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)area;
- (id)init;
@end
#endif
