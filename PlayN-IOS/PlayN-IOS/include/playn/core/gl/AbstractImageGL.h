//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/AbstractImageGL.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreGlAbstractImageGL_RESTRICT
#define PlaynCoreGlAbstractImageGL_INCLUDE_ALL 1
#endif
#undef PlaynCoreGlAbstractImageGL_RESTRICT

#if !defined (_PlaynCoreGlAbstractImageGL_) && (PlaynCoreGlAbstractImageGL_INCLUDE_ALL || PlaynCoreGlAbstractImageGL_INCLUDE)
#define _PlaynCoreGlAbstractImageGL_

@class IOSIntArray;
@class PlaynCoreGlGLContext;
@class PlaynCoreGlGLShader;
@class PlaynCoreGlScale;
@protocol PlaynCoreImage_BitmapTransformer;
@protocol PlaynCoreImage_Region;
@protocol PlaynCoreInternalTransform;
@protocol PlaynCorePattern;
@protocol PlaynCoreUtilCallback;

#define PlaynCoreImage_RESTRICT 1
#define PlaynCoreImage_INCLUDE 1
#include "playn/core/Image.h"

@interface PlaynCoreGlAbstractImageGL : NSObject < PlaynCoreImage > {
 @public
  PlaynCoreGlGLContext *ctx_;
  int refs_;
  BOOL repeatX__, repeatY__;
  BOOL mipmapped_;
}

@property (nonatomic, strong) PlaynCoreGlGLContext *ctx;
@property (nonatomic, assign) int refs;
@property (nonatomic, assign) BOOL repeatX_;
@property (nonatomic, assign) BOOL repeatY_;
@property (nonatomic, assign) BOOL mipmapped;

- (void)reference;
- (void)release__;
- (void)drawWithId:(id)gc
         withFloat:(float)dx
         withFloat:(float)dy
         withFloat:(float)dw
         withFloat:(float)dh;
- (void)drawWithId:(id)gc
         withFloat:(float)dx
         withFloat:(float)dy
         withFloat:(float)dw
         withFloat:(float)dh
         withFloat:(float)sx
         withFloat:(float)sy
         withFloat:(float)sw
         withFloat:(float)sh;
- (void)drawWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
     withPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                            withInt:(int)tint
                          withFloat:(float)dx
                          withFloat:(float)dy
                          withFloat:(float)dw
                          withFloat:(float)dh;
- (void)drawWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
     withPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                            withInt:(int)tint
                          withFloat:(float)dx
                          withFloat:(float)dy
                          withFloat:(float)dw
                          withFloat:(float)dh
                          withFloat:(float)sx
                          withFloat:(float)sy
                          withFloat:(float)sw
                          withFloat:(float)sh;
- (void)drawImplWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
         withPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                                withInt:(int)tex
                                withInt:(int)tint
                              withFloat:(float)dx
                              withFloat:(float)dy
                              withFloat:(float)dw
                              withFloat:(float)dh
                              withFloat:(float)sl
                              withFloat:(float)st
                              withFloat:(float)sr
                              withFloat:(float)sb;
- (BOOL)repeatX;
- (BOOL)repeatY;
- (void)setRepeatWithBOOL:(BOOL)repeatX
                 withBOOL:(BOOL)repeatY;
- (void)setMipmappedWithBOOL:(BOOL)mipmapped;
- (id<PlaynCoreImage_Region>)subImageWithFloat:(float)sx
                                     withFloat:(float)sy
                                     withFloat:(float)swidth
                                     withFloat:(float)sheight;
- (id<PlaynCorePattern>)toPattern;
- (void)getRgbWithInt:(int)startX
              withInt:(int)startY
              withInt:(int)width
              withInt:(int)height
         withIntArray:(IOSIntArray *)rgbArray
              withInt:(int)offset
              withInt:(int)scanSize;
- (id<PlaynCoreImage>)transformWithPlaynCoreImage_BitmapTransformer:(id<PlaynCoreImage_BitmapTransformer>)xform;
- (id<PlaynCorePattern>)toSubPatternWithPlaynCoreGlAbstractImageGL:(PlaynCoreGlAbstractImageGL *)image
                                                          withBOOL:(BOOL)repeatX
                                                          withBOOL:(BOOL)repeatY
                                                         withFloat:(float)x
                                                         withFloat:(float)y
                                                         withFloat:(float)width
                                                         withFloat:(float)height;
- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx;
- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)param0;
- (void)clearTexture;
- (int)ensureTexture;
- (float)height;
- (BOOL)isReady;
- (PlaynCoreGlScale *)scale__;
- (float)width;
@end
#endif

#if !defined (_PlaynCoreGlAbstractImageGL_$1_) && (PlaynCoreGlAbstractImageGL_INCLUDE_ALL || PlaynCoreGlAbstractImageGL_$1_INCLUDE)
#define _PlaynCoreGlAbstractImageGL_$1_

@class PlaynCoreGlAbstractImageGL;

#define PlaynCoreGlGLPattern_RESTRICT 1
#define PlaynCoreGlGLPattern_INCLUDE 1
#include "playn/core/gl/GLPattern.h"

@interface PlaynCoreGlAbstractImageGL_$1 : NSObject < PlaynCoreGlGLPattern > {
 @public
  PlaynCoreGlAbstractImageGL *this$0_;
}

@property (nonatomic, strong) PlaynCoreGlAbstractImageGL *this$0;

- (BOOL)repeatX;
- (BOOL)repeatY;
- (PlaynCoreGlAbstractImageGL *)image;
- (id)initWithPlaynCoreGlAbstractImageGL:(PlaynCoreGlAbstractImageGL *)outer$;
@end
#endif
