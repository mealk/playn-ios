//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GLContext.java
//
//  Created by Thomas on 7/1/13.
//

@class JavaNioByteBuffer;
@class PlaynCoreGlGLContext_FilterEnum;
@class PlaynCoreGlGLContext_Stats;
@class PlaynCoreGlGLShader;
@class PlaynCoreGlScale;
@class PythagorasIRectangle;
@protocol JavaUtilList;
@protocol PlaynCoreGlGLBuffer_Float;
@protocol PlaynCoreGlGLBuffer_Short;
@protocol PlaynCoreGlGLProgram;
@protocol PlaynCoreImage;
@protocol PlaynCoreInternalTransform;
@protocol PlaynCorePlatform;

#import "JreEmulation.h"
#import "java/lang/Enum.h"
#import "java/lang/Runnable.h"

#define PlaynCoreGlGLContext_STATS_ENABLED TRUE

@interface PlaynCoreGlGLContext : NSObject {
 @public
  PlaynCoreGlGLContext_Stats *stats__;
  id<PlaynCorePlatform> platform_;
  PlaynCoreGlGLShader *curShader_;
  int lastFramebuffer_, epoch__;
  int pushedFramebuffer_, pushedWidth_, pushedHeight_;
  id<JavaUtilList> scissors_;
  int scissorDepth_;
  int defaultFbufWidth_, defaultFbufHeight_;
  int curFbufWidth_, curFbufHeight_;
  int viewWidth_, viewHeight_;
  PlaynCoreGlScale *scale__;
}

@property (nonatomic, retain) PlaynCoreGlGLContext_Stats *stats_;
@property (nonatomic, retain) id<PlaynCorePlatform> platform;
@property (nonatomic, retain) PlaynCoreGlGLShader *curShader;
@property (nonatomic, assign) int lastFramebuffer;
@property (nonatomic, assign) int epoch_;
@property (nonatomic, assign) int pushedFramebuffer;
@property (nonatomic, assign) int pushedWidth;
@property (nonatomic, assign) int pushedHeight;
@property (nonatomic, retain) id<JavaUtilList> scissors;
@property (nonatomic, assign) int scissorDepth;
@property (nonatomic, assign) int defaultFbufWidth;
@property (nonatomic, assign) int defaultFbufHeight;
@property (nonatomic, assign) int curFbufWidth;
@property (nonatomic, assign) int curFbufHeight;
@property (nonatomic, assign) int viewWidth;
@property (nonatomic, assign) int viewHeight;
@property (nonatomic, retain) PlaynCoreGlScale *scale_;

+ (BOOL)STATS_ENABLED;
- (void)setSizeWithInt:(int)width
               withInt:(int)height;
- (void)setTextureFilterWithPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)minFilter
                        withPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)magFilter;
- (int)getIntegerWithInt:(int)param;
- (float)getFloatWithInt:(int)param;
- (BOOL)getBooleanWithInt:(int)param;
- (void)texImage2DWithPlaynCoreImage:(id<PlaynCoreImage>)image
                             withInt:(int)target
                             withInt:(int)level
                             withInt:(int)internalformat
                             withInt:(int)format
                             withInt:(int)type;
- (void)texSubImage2DWithPlaynCoreImage:(id<PlaynCoreImage>)image
                                withInt:(int)target
                                withInt:(int)level
                                withInt:(int)xOffset
                                withInt:(int)yOffset
                                withInt:(int)format
                                withInt:(int)type;
- (id<PlaynCoreGlGLProgram>)createProgramWithNSString:(NSString *)vertShader
                                         withNSString:(NSString *)fragShader;
- (id<PlaynCoreGlGLBuffer_Float>)createFloatBufferWithInt:(int)capacity;
- (id<PlaynCoreGlGLBuffer_Short>)createShortBufferWithInt:(int)capacity;
- (int)createFramebufferWithInt:(int)tex;
- (void)deleteFramebufferWithInt:(int)fbuf;
- (int)createTextureWithBOOL:(BOOL)repeatX
                    withBOOL:(BOOL)repeatY
                    withBOOL:(BOOL)mipmaps;
- (int)createTextureWithInt:(int)width
                    withInt:(int)height
                   withBOOL:(BOOL)repeatX
                   withBOOL:(BOOL)repeatY
                   withBOOL:(BOOL)mipmaps;
- (void)generateMipmapWithInt:(int)tex;
- (void)activeTextureWithInt:(int)glTextureN;
- (void)bindTextureWithInt:(int)tex;
- (void)destroyTextureWithInt:(int)tex;
- (void)startClippedWithInt:(int)x
                    withInt:(int)y
                    withInt:(int)width
                    withInt:(int)height;
- (void)endClipped;
- (void)clearWithFloat:(float)r
             withFloat:(float)g
             withFloat:(float)b
             withFloat:(float)a;
- (void)checkGLErrorWithNSString:(NSString *)op;
- (void)queueDestroyTextureWithInt:(int)tex;
- (void)queueDeleteFramebufferWithInt:(int)fbuf;
- (void)queueClearShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader;
- (id<PlaynCoreInternalTransform>)createTransform;
- (id<PlaynCoreInternalTransform>)rootTransform;
- (void)bindFramebufferWithInt:(int)fbuf
                       withInt:(int)width
                       withInt:(int)height;
- (void)bindFramebuffer;
- (void)pushFramebufferWithInt:(int)fbuf
                       withInt:(int)width
                       withInt:(int)height;
- (void)popFramebuffer;
- (PlaynCoreGlGLShader *)quadShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)custom;
- (PlaynCoreGlGLShader *)trisShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)custom;
- (void)flush;
- (BOOL)useShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
                                withBOOL:(BOOL)forceFlush;
- (PlaynCoreGlGLContext_Stats *)stats;
- (NSString *)quadShaderInfo;
- (NSString *)trisShaderInfo;
- (PythagorasIRectangle *)pushScissorStateWithInt:(int)x
                                          withInt:(int)y
                                          withInt:(int)width
                                          withInt:(int)height;
- (PythagorasIRectangle *)popScissorState;
- (int)getScissorDepth;
- (id)initWithPlaynCorePlatform:(id<PlaynCorePlatform>)platform
                      withFloat:(float)scaleFactor;
- (void)viewWasResized;
- (void)incrementEpoch;
- (int)epoch;
- (int)defaultFrameBuffer;
- (int)createFramebufferImplWithInt:(int)tex;
- (void)bindFramebufferImplWithInt:(int)fbuf
                           withInt:(int)width
                           withInt:(int)height;
- (PlaynCoreGlGLShader *)createQuadShader;
+ (JavaNioByteBuffer *)getRgbaWithPlaynCoreImage:(id<PlaynCoreImage>)image;
- (PlaynCoreGlGLShader *)quadShader;
- (PlaynCoreGlGLShader *)trisShader;
@end

typedef enum {
  PlaynCoreGlGLContext_Filter_LINEAR = 0,
  PlaynCoreGlGLContext_Filter_NEAREST = 1,
} PlaynCoreGlGLContext_Filter;

@interface PlaynCoreGlGLContext_FilterEnum : JavaLangEnum < NSCopying > {
}
+ (PlaynCoreGlGLContext_FilterEnum *)LINEAR;
+ (PlaynCoreGlGLContext_FilterEnum *)NEAREST;
+ (IOSObjectArray *)values;
+ (PlaynCoreGlGLContext_FilterEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end

@interface PlaynCoreGlGLContext_Stats : NSObject {
 @public
  int frames_;
  int shaderCreates_;
  int frameBufferCreates_;
  int texCreates_;
  int shaderBinds_;
  int frameBufferBinds_;
  int texBinds_;
  int quadsRendered_;
  int trisRendered_;
  int shaderFlushes_;
}

@property (nonatomic, assign) int frames;
@property (nonatomic, assign) int shaderCreates;
@property (nonatomic, assign) int frameBufferCreates;
@property (nonatomic, assign) int texCreates;
@property (nonatomic, assign) int shaderBinds;
@property (nonatomic, assign) int frameBufferBinds;
@property (nonatomic, assign) int texBinds;
@property (nonatomic, assign) int quadsRendered;
@property (nonatomic, assign) int trisRendered;
@property (nonatomic, assign) int shaderFlushes;

- (void)reset;
- (id)init;
@end

@interface PlaynCoreGlGLContext_$1 : NSObject < JavaLangRunnable > {
 @public
  PlaynCoreGlGLContext *this$0_;
  int val$tex_;
}

@property (nonatomic, retain) PlaynCoreGlGLContext *this$0;
@property (nonatomic, assign) int val$tex;

- (void)run;
- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)outer$
                           withInt:(int)capture$0;
@end

@interface PlaynCoreGlGLContext_$2 : NSObject < JavaLangRunnable > {
 @public
  PlaynCoreGlGLContext *this$0_;
  int val$fbuf_;
}

@property (nonatomic, retain) PlaynCoreGlGLContext *this$0;
@property (nonatomic, assign) int val$fbuf;

- (void)run;
- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)outer$
                           withInt:(int)capture$0;
@end

@interface PlaynCoreGlGLContext_$3 : NSObject < JavaLangRunnable > {
 @public
  PlaynCoreGlGLShader *val$shader_;
}

@property (nonatomic, retain) PlaynCoreGlGLShader *val$shader;

- (void)run;
- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)capture$0;
@end
