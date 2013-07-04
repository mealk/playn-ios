//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GLShader.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSFloatArray;
@class IOSIntArray;
@class PlaynCoreGlGLContext;
@class PlaynCoreGlGLShader_Core;
@class PlaynCoreGlGLShader_Extras;
@protocol PlaynCoreGlGLBuffer_Float;
@protocol PlaynCoreGlGLProgram;
@protocol PlaynCoreInternalTransform;

#import "JreEmulation.h"

@interface PlaynCoreGlGLShader : NSObject {
 @public
  PlaynCoreGlGLContext *ctx_;
  int refs_;
  PlaynCoreGlGLShader_Core *texCore_, *colorCore_, *curCore_;
  PlaynCoreGlGLShader_Extras *texExtras_, *colorExtras_, *curExtras_;
  int texEpoch_, colorEpoch_;
}

@property (nonatomic, retain) PlaynCoreGlGLContext *ctx;
@property (nonatomic, assign) int refs;
@property (nonatomic, retain) PlaynCoreGlGLShader_Core *texCore;
@property (nonatomic, retain) PlaynCoreGlGLShader_Core *colorCore;
@property (nonatomic, retain) PlaynCoreGlGLShader_Core *curCore;
@property (nonatomic, retain) PlaynCoreGlGLShader_Extras *texExtras;
@property (nonatomic, retain) PlaynCoreGlGLShader_Extras *colorExtras;
@property (nonatomic, retain) PlaynCoreGlGLShader_Extras *curExtras;
@property (nonatomic, assign) int texEpoch;
@property (nonatomic, assign) int colorEpoch;

- (PlaynCoreGlGLShader *)prepareTextureWithInt:(int)tex
                                       withInt:(int)tint;
- (PlaynCoreGlGLShader *)prepareColorWithInt:(int)tint;
- (void)flush;
- (void)addQuadWithFloat:(float)m00
               withFloat:(float)m01
               withFloat:(float)m10
               withFloat:(float)m11
               withFloat:(float)tx
               withFloat:(float)ty
               withFloat:(float)left
               withFloat:(float)top
               withFloat:(float)right
               withFloat:(float)bottom
               withFloat:(float)sl
               withFloat:(float)st
               withFloat:(float)sr
               withFloat:(float)sb;
- (void)addQuadWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)local
                                    withFloat:(float)left
                                    withFloat:(float)top
                                    withFloat:(float)right
                                    withFloat:(float)bottom
                                    withFloat:(float)sl
                                    withFloat:(float)st
                                    withFloat:(float)sr
                                    withFloat:(float)sb;
- (void)addTrianglesWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)local
                            withJavaLangFloatArray:(IOSFloatArray *)xys
                                         withFloat:(float)tw
                                         withFloat:(float)th
                          withJavaLangIntegerArray:(IOSIntArray *)indices;
- (void)addTrianglesWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)local
                            withJavaLangFloatArray:(IOSFloatArray *)xys
                            withJavaLangFloatArray:(IOSFloatArray *)sxys
                          withJavaLangIntegerArray:(IOSIntArray *)indices;
- (void)reference;
- (void)release__;
- (void)clearProgram;
- (void)createCores;
- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx;
- (void)dealloc;
- (PlaynCoreGlGLShader_Core *)createTextureCore;
- (PlaynCoreGlGLShader_Core *)createColorCore;
- (NSString *)textureFragmentShader;
- (PlaynCoreGlGLShader_Extras *)createTextureExtrasWithPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog;
- (NSString *)colorFragmentShader;
- (PlaynCoreGlGLShader_Extras *)createColorExtrasWithPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog;
@end

@protocol PlaynCoreGlGLShader_Uniform1f < NSObject >
- (void)bindWithFloat:(float)a;
@end

@protocol PlaynCoreGlGLShader_Uniform2f < NSObject >
- (void)bindWithFloat:(float)a
            withFloat:(float)b;
@end

@protocol PlaynCoreGlGLShader_Uniform3f < NSObject >
- (void)bindWithFloat:(float)a
            withFloat:(float)b
            withFloat:(float)c;
@end

@protocol PlaynCoreGlGLShader_Uniform4f < NSObject >
- (void)bindWithFloat:(float)a
            withFloat:(float)b
            withFloat:(float)c
            withFloat:(float)d;
@end

@protocol PlaynCoreGlGLShader_Uniform1i < NSObject >
- (void)bindWithInt:(int)a;
@end

@protocol PlaynCoreGlGLShader_Uniform2i < NSObject >
- (void)bindWithInt:(int)a
            withInt:(int)b;
@end

@protocol PlaynCoreGlGLShader_Uniform2fv < NSObject >
- (void)bindWithPlaynCoreGlGLBuffer_Float:(id<PlaynCoreGlGLBuffer_Float>)data
                                  withInt:(int)count;
@end

@protocol PlaynCoreGlGLShader_Uniform4fv < NSObject >
- (void)bindWithPlaynCoreGlGLBuffer_Float:(id<PlaynCoreGlGLBuffer_Float>)data
                                  withInt:(int)count;
@end

@protocol PlaynCoreGlGLShader_UniformMatrix4fv < NSObject >
- (void)bindWithPlaynCoreGlGLBuffer_Float:(id<PlaynCoreGlGLBuffer_Float>)data
                                  withInt:(int)count;
@end

@protocol PlaynCoreGlGLShader_Attrib < NSObject >
- (void)bindWithInt:(int)stride
            withInt:(int)offset;
@end

@interface PlaynCoreGlGLShader_Core : NSObject {
 @public
  id<PlaynCoreGlGLProgram> prog_;
}

@property (nonatomic, retain) id<PlaynCoreGlGLProgram> prog;

- (void)activateWithInt:(int)fbufWidth
                withInt:(int)fbufHeight;
- (void)prepareWithInt:(int)tint
              withBOOL:(BOOL)justActivated;
- (void)flush;
- (void)addQuadWithFloat:(float)m00
               withFloat:(float)m01
               withFloat:(float)m10
               withFloat:(float)m11
               withFloat:(float)tx
               withFloat:(float)ty
               withFloat:(float)x1
               withFloat:(float)y1
               withFloat:(float)sx1
               withFloat:(float)sy1
               withFloat:(float)x2
               withFloat:(float)y2
               withFloat:(float)sx2
               withFloat:(float)sy2
               withFloat:(float)x3
               withFloat:(float)y3
               withFloat:(float)sx3
               withFloat:(float)sy3
               withFloat:(float)x4
               withFloat:(float)y4
               withFloat:(float)sx4
               withFloat:(float)sy4;
- (void)addTrianglesWithFloat:(float)m00
                    withFloat:(float)m01
                    withFloat:(float)m10
                    withFloat:(float)m11
                    withFloat:(float)tx
                    withFloat:(float)ty
       withJavaLangFloatArray:(IOSFloatArray *)xys
                    withFloat:(float)tw
                    withFloat:(float)th
     withJavaLangIntegerArray:(IOSIntArray *)indices;
- (void)addTrianglesWithFloat:(float)m00
                    withFloat:(float)m01
                    withFloat:(float)m10
                    withFloat:(float)m11
                    withFloat:(float)tx
                    withFloat:(float)ty
       withJavaLangFloatArray:(IOSFloatArray *)xys
       withJavaLangFloatArray:(IOSFloatArray *)sxys
     withJavaLangIntegerArray:(IOSIntArray *)indices;
- (void)destroy;
- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)outer$
                     withNSString:(NSString *)vertShader
                     withNSString:(NSString *)fragShader;
@end

@interface PlaynCoreGlGLShader_Extras : NSObject {
}

- (void)prepareWithInt:(int)tex
              withBOOL:(BOOL)justActivated;
- (void)willFlush;
- (void)destroy;
- (id)init;
@end

@interface PlaynCoreGlGLShader_TextureExtras : PlaynCoreGlGLShader_Extras {
 @public
  PlaynCoreGlGLShader *this$0_;
  id<PlaynCoreGlGLShader_Uniform1i> uTexture_;
  int lastTex_;
}

@property (nonatomic, retain) PlaynCoreGlGLShader *this$0;
@property (nonatomic, retain) id<PlaynCoreGlGLShader_Uniform1i> uTexture;
@property (nonatomic, assign) int lastTex;

- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)outer$
         withPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog;
- (void)prepareWithInt:(int)tex
              withBOOL:(BOOL)justActivated;
- (void)willFlush;
@end

@interface PlaynCoreGlGLShader_ColorExtras : PlaynCoreGlGLShader_Extras {
}

- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)outer$
         withPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog;
- (void)prepareWithInt:(int)tex
              withBOOL:(BOOL)justActivated;
@end
