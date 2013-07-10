//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/SurfaceGL.java
//
//  Created by Thomas on 7/10/13.
//

@class PlaynCoreGlGLContext;
@class PlaynCoreGlGLShader;
@protocol PlaynCoreInternalTransform;

#import "JreEmulation.h"
#import "playn/core/gl/AbstractSurfaceGL.h"

@interface PlaynCoreGlSurfaceGL : PlaynCoreGlAbstractSurfaceGL {
 @public
  float width__, height__;
  int texWidth_, texHeight_;
  int tex_, fbuf_;
}

@property (nonatomic, assign) float width_;
@property (nonatomic, assign) float height_;
@property (nonatomic, assign) int texWidth;
@property (nonatomic, assign) int texHeight;
@property (nonatomic, assign) int tex;
@property (nonatomic, assign) int fbuf;

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx
                         withFloat:(float)width
                         withFloat:(float)height;
- (void)destroy;
- (float)width;
- (float)height;
- (void)drawWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
     withPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                            withInt:(int)curTint;
- (void)createTexture;
- (void)clearTexture;
- (void)bindFramebuffer;
- (void)dealloc;
@end
