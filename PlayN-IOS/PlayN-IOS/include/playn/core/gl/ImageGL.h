//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/ImageGL.java
//
//  Created by Thomas on 7/10/13.
//

@class PlaynCoreGlGLContext;
@class PlaynCoreGlScale;

#import "JreEmulation.h"
#import "playn/core/gl/AbstractImageGL.h"

@interface PlaynCoreGlImageGL : PlaynCoreGlAbstractImageGL {
 @public
  PlaynCoreGlScale *scale__;
  int tex_;
}

@property (nonatomic, strong) PlaynCoreGlScale *scale_;
@property (nonatomic, assign) int tex;

- (PlaynCoreGlScale *)scale__;
- (int)ensureTexture;
- (void)clearTexture;
- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx
              withPlaynCoreGlScale:(PlaynCoreGlScale *)scale_;
- (void)updateTextureWithInt:(int)tex;
- (void)dealloc;
- (int)createMainTex;
- (int)createPow2RepTexWithInt:(int)width
                       withInt:(int)height
                      withBOOL:(BOOL)repeatX
                      withBOOL:(BOOL)repeatY
                      withBOOL:(BOOL)mipmapped;
- (int)scaleTexture;
+ (int)convertToRepTexWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx
                                       withInt:(int)tex
                                       withInt:(int)width
                                       withInt:(int)height
                                      withBOOL:(BOOL)repeatX
                                      withBOOL:(BOOL)repeatY
                                      withBOOL:(BOOL)mipmapped;
@end
