//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GLContext.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSIntArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/Throwable.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/ByteOrder.h"
#include "java/nio/IntBuffer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "playn/core/Asserts.h"
#include "playn/core/Image.h"
#include "playn/core/InternalTransform.h"
#include "playn/core/Log.h"
#include "playn/core/Platform.h"
#include "playn/core/StockInternalTransform.h"
#include "playn/core/gl/GLBuffer.h"
#include "playn/core/gl/GLContext.h"
#include "playn/core/gl/GLProgram.h"
#include "playn/core/gl/GLShader.h"
#include "playn/core/gl/IndexedTrisShader.h"
#include "playn/core/gl/QuadShader.h"
#include "playn/core/gl/Scale.h"
#include "pythagoras/i/Rectangle.h"

@implementation PlaynCoreGlGLContext

@synthesize stats_ = stats__;
@synthesize platform = platform_;
@synthesize curShader = curShader_;
@synthesize lastFramebuffer = lastFramebuffer_;
@synthesize epoch_ = epoch__;
@synthesize pushedFramebuffer = pushedFramebuffer_;
@synthesize pushedWidth = pushedWidth_;
@synthesize pushedHeight = pushedHeight_;
@synthesize scissors = scissors_;
@synthesize scissorDepth = scissorDepth_;
@synthesize defaultFbufWidth = defaultFbufWidth_;
@synthesize defaultFbufHeight = defaultFbufHeight_;
@synthesize curFbufWidth = curFbufWidth_;
@synthesize curFbufHeight = curFbufHeight_;
@synthesize viewWidth = viewWidth_;
@synthesize viewHeight = viewHeight_;
@synthesize scale_ = scale__;

+ (BOOL)STATS_ENABLED {
  return PlaynCoreGlGLContext_STATS_ENABLED;
}

- (void)setSizeWithInt:(int)width
               withInt:(int)height {
  viewWidth_ = width;
  viewHeight_ = height;
  curFbufWidth_ = defaultFbufWidth_ = [((PlaynCoreGlScale *) nil_chk(scale__)) scaledCeilWithFloat:width];
  curFbufHeight_ = defaultFbufHeight_ = [((PlaynCoreGlScale *) nil_chk(scale__)) scaledCeilWithFloat:height];
  [self viewWasResized];
}

- (void)setTextureFilterWithPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)minFilter
                        withPlaynCoreGlGLContext_FilterEnum:(PlaynCoreGlGLContext_FilterEnum *)magFilter {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (int)getIntegerWithInt:(int)param {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)getFloatWithInt:(int)param {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)getBooleanWithInt:(int)param {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)texImage2DWithPlaynCoreImage:(id<PlaynCoreImage>)image
                             withInt:(int)target
                             withInt:(int)level
                             withInt:(int)internalformat
                             withInt:(int)format
                             withInt:(int)type {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (void)texSubImage2DWithPlaynCoreImage:(id<PlaynCoreImage>)image
                                withInt:(int)target
                                withInt:(int)level
                                withInt:(int)xOffset
                                withInt:(int)yOffset
                                withInt:(int)format
                                withInt:(int)type {
  @throw [[JavaLangUnsupportedOperationException alloc] init];
}

- (id<PlaynCoreGlGLProgram>)createProgramWithNSString:(NSString *)vertShader
                                         withNSString:(NSString *)fragShader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreGlGLBuffer_Float>)createFloatBufferWithInt:(int)capacity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreGlGLBuffer_Short>)createShortBufferWithInt:(int)capacity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)createFramebufferWithInt:(int)tex {
  [self flush];
  return [self createFramebufferImplWithInt:tex];
}

- (void)deleteFramebufferWithInt:(int)fbuf {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (int)createTextureWithBOOL:(BOOL)repeatX
                    withBOOL:(BOOL)repeatY
                    withBOOL:(BOOL)mipmaps {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)createTextureWithInt:(int)width
                    withInt:(int)height
                   withBOOL:(BOOL)repeatX
                   withBOOL:(BOOL)repeatY
                   withBOOL:(BOOL)mipmaps {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)generateMipmapWithInt:(int)tex {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)activeTextureWithInt:(int)glTextureN {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)bindTextureWithInt:(int)tex {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)destroyTextureWithInt:(int)tex {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)startClippedWithInt:(int)x
                    withInt:(int)y
                    withInt:(int)width
                    withInt:(int)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)endClipped {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)clearWithFloat:(float)r
             withFloat:(float)g
             withFloat:(float)b
             withFloat:(float)a {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)checkGLErrorWithNSString:(NSString *)op {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)queueDestroyTextureWithInt:(int)tex {
  [((id<PlaynCorePlatform>) nil_chk(platform_)) invokeLaterWithJavaLangRunnable:[[PlaynCoreGlGLContext_$1 alloc] initWithPlaynCoreGlGLContext:self withInt:tex]];
}

- (void)queueDeleteFramebufferWithInt:(int)fbuf {
  [((id<PlaynCorePlatform>) nil_chk(platform_)) invokeLaterWithJavaLangRunnable:[[PlaynCoreGlGLContext_$2 alloc] initWithPlaynCoreGlGLContext:self withInt:fbuf]];
}

- (void)queueClearShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader {
  [((id<PlaynCorePlatform>) nil_chk(platform_)) invokeLaterWithJavaLangRunnable:[[PlaynCoreGlGLContext_$3 alloc] initWithPlaynCoreGlGLShader:shader]];
}

- (id<PlaynCoreInternalTransform>)createTransform {
  return [[PlaynCoreStockInternalTransform alloc] init];
}

- (id<PlaynCoreInternalTransform>)rootTransform {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)bindFramebufferWithInt:(int)fbuf
                       withInt:(int)width
                       withInt:(int)height {
  if (fbuf != lastFramebuffer_) {
    [self checkGLErrorWithNSString:@"bindFramebuffer"];
    [self flush];
    [self bindFramebufferImplWithInt:lastFramebuffer_ = fbuf withInt:curFbufWidth_ = width withInt:curFbufHeight_ = height];
  }
}

- (void)bindFramebuffer {
  [self bindFramebufferWithInt:[self defaultFrameBuffer] withInt:defaultFbufWidth_ withInt:defaultFbufHeight_];
}

- (void)pushFramebufferWithInt:(int)fbuf
                       withInt:(int)width
                       withInt:(int)height {
  [PlaynCoreAsserts checkStateWithBOOL:pushedFramebuffer_ == -1 withId:@"Already have a pushed framebuffer"];
  pushedFramebuffer_ = lastFramebuffer_;
  pushedWidth_ = curFbufWidth_;
  pushedHeight_ = curFbufHeight_;
  [self bindFramebufferWithInt:fbuf withInt:width withInt:height];
}

- (void)popFramebuffer {
  [PlaynCoreAsserts checkStateWithBOOL:pushedFramebuffer_ != -1 withId:@"Have no pushed framebuffer"];
  [self bindFramebufferWithInt:pushedFramebuffer_ withInt:pushedWidth_ withInt:pushedHeight_];
  pushedFramebuffer_ = -1;
}

- (PlaynCoreGlGLShader *)quadShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)custom {
  return custom == nil ? [self quadShader] : custom;
}

- (PlaynCoreGlGLShader *)trisShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)custom {
  return custom == nil ? [self trisShader] : custom;
}

- (void)flush {
  if (curShader_ != nil) {
    [self checkGLErrorWithNSString:@"flush()"];
    [curShader_ flush];
    curShader_ = nil;
  }
}

- (BOOL)useShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
                                withBOOL:(BOOL)forceFlush {
  if (curShader_ == shader && !forceFlush) return NO;
  [self checkGLErrorWithNSString:@"useShader"];
  [self flush];
  curShader_ = shader;
  return YES;
}

- (PlaynCoreGlGLContext_Stats *)stats {
  return stats__;
}

- (NSString *)quadShaderInfo {
  return [NSString valueOf:[self quadShader]];
}

- (NSString *)trisShaderInfo {
  return [NSString valueOf:[self trisShader]];
}

- (PythagorasIRectangle *)pushScissorStateWithInt:(int)x
                                          withInt:(int)y
                                          withInt:(int)width
                                          withInt:(int)height {
  if (scissorDepth_ == [((id<JavaUtilList>) nil_chk(scissors_)) size]) {
    [((id<JavaUtilList>) nil_chk(scissors_)) addWithId:[[PythagorasIRectangle alloc] init]];
  }
  PythagorasIRectangle *r = [((id<JavaUtilList>) nil_chk(scissors_)) getWithInt:scissorDepth_];
  if (scissorDepth_ == 0) {
    [((PythagorasIRectangle *) nil_chk(r)) setBoundsWithInt:x withInt:y withInt:width withInt:height];
  }
  else {
    PythagorasIRectangle *pr = [((id<JavaUtilList>) nil_chk(scissors_)) getWithInt:scissorDepth_ - 1];
    [((PythagorasIRectangle *) nil_chk(r)) setLocationWithInt:[JavaLangMath maxWithInt:((PythagorasIRectangle *) nil_chk(pr)).x_ withInt:x] withInt:[JavaLangMath maxWithInt:((PythagorasIRectangle *) nil_chk(pr)).y_ withInt:y]];
    [((PythagorasIRectangle *) nil_chk(r)) setSizeWithInt:[JavaLangMath minWithInt:[((PythagorasIRectangle *) nil_chk(pr)) maxX] withInt:x + width - 1] - ((PythagorasIRectangle *) nil_chk(r)).x_ withInt:[JavaLangMath minWithInt:[((PythagorasIRectangle *) nil_chk(pr)) maxY] withInt:y + height - 1] - ((PythagorasIRectangle *) nil_chk(r)).y_];
  }
  scissorDepth_++;
  return r;
}

- (PythagorasIRectangle *)popScissorState {
  scissorDepth_--;
  return scissorDepth_ == 0 ? nil : [((id<JavaUtilList>) nil_chk(scissors_)) getWithInt:scissorDepth_ - 1];
}

- (int)getScissorDepth {
  return scissorDepth_;
}

- (id)initWithPlaynCorePlatform:(id<PlaynCorePlatform>)platform
                      withFloat:(float)scaleFactor {
  if ((self = [super init])) {
    stats__ = [[PlaynCoreGlGLContext_Stats alloc] init];
    pushedFramebuffer_ = -1;
    scissors_ = [[JavaUtilArrayList alloc] init];
    self.scale_ = [[PlaynCoreGlScale alloc] initWithFloat:scaleFactor];
    self.platform = platform;
  }
  return self;
}

- (void)viewWasResized {
  [self bindFramebufferImplWithInt:[self defaultFrameBuffer] withInt:defaultFbufWidth_ withInt:defaultFbufHeight_];
}

- (void)incrementEpoch {
  ++epoch__;
}

- (int)epoch {
  return epoch__;
}

- (int)defaultFrameBuffer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)createFramebufferImplWithInt:(int)tex {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)bindFramebufferImplWithInt:(int)fbuf
                           withInt:(int)width
                           withInt:(int)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (PlaynCoreGlGLShader *)createQuadShader {
  if ([PlaynCoreGlQuadShader isLikelyToPerformWithPlaynCoreGlGLContext:self]) {
    @try {
      PlaynCoreGlGLShader *quadShader = [[PlaynCoreGlQuadShader alloc] initWithPlaynCoreGlGLContext:self];
      [((PlaynCoreGlGLShader *) nil_chk(quadShader)) createCores];
      return quadShader;
    }
    @catch (JavaLangThrowable *t) {
      [((id<PlaynCoreLog>) nil_chk([((id<PlaynCorePlatform>) nil_chk(platform_)) log])) warnWithNSString:[NSString stringWithFormat:@"Failed to create QuadShader: %@", t]];
    }
  }
  return [[PlaynCoreGlIndexedTrisShader alloc] initWithPlaynCoreGlGLContext:self];
}

+ (JavaNioByteBuffer *)getRgbaWithPlaynCoreImage:(id<PlaynCoreImage>)image {
  int w = (int) [((id<PlaynCoreImage>) nil_chk(image)) width], h = (int) [((id<PlaynCoreImage>) nil_chk(image)) height], size = w * h;
//  IOSIntArray *rawPixels = [IOSIntArray arrayWithLength:size];
  JavaNioByteBuffer *pixels = [JavaNioByteBuffer allocateDirectWithInt:size * 4];
//  (void) [((JavaNioByteBuffer *) nil_chk(pixels)) orderWithJavaNioByteOrder:[JavaNioByteOrder nativeOrder]];
//  JavaNioIntBuffer *rgba = [((JavaNioByteBuffer *) nil_chk(pixels)) asIntBuffer];
//  [((id<PlaynCoreImage>) nil_chk(image)) getRgbWithInt:0 withInt:0 withInt:w withInt:h withIntArray:rawPixels withInt:0 withInt:w];
//  for (int i = 0; i < size; i++) {
//    int argb = [((IOSIntArray *) nil_chk(rawPixels)) intAtIndex:i];
//    (void) [((JavaNioIntBuffer *) nil_chk(rgba)) putWithInt:i withInt:((argb >> 16) & (int) 0x0ff) | (argb & (int) 0x0ff00ff00) | ((argb & (int) 0xff) << 16)];
//  }
  return pixels;
}

- (PlaynCoreGlGLShader *)quadShader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (PlaynCoreGlGLShader *)trisShader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLContext *typedCopy = (PlaynCoreGlGLContext *) copy;
  typedCopy.stats_ = stats__;
  typedCopy.platform = platform_;
  typedCopy.curShader = curShader_;
  typedCopy.lastFramebuffer = lastFramebuffer_;
  typedCopy.epoch_ = epoch__;
  typedCopy.pushedFramebuffer = pushedFramebuffer_;
  typedCopy.pushedWidth = pushedWidth_;
  typedCopy.pushedHeight = pushedHeight_;
  typedCopy.scissors = scissors_;
  typedCopy.scissorDepth = scissorDepth_;
  typedCopy.defaultFbufWidth = defaultFbufWidth_;
  typedCopy.defaultFbufHeight = defaultFbufHeight_;
  typedCopy.curFbufWidth = curFbufWidth_;
  typedCopy.curFbufHeight = curFbufHeight_;
  typedCopy.viewWidth = viewWidth_;
  typedCopy.viewHeight = viewHeight_;
  typedCopy.scale_ = scale__;
}

@end

static PlaynCoreGlGLContext_FilterEnum *PlaynCoreGlGLContext_FilterEnum_LINEAR;
static PlaynCoreGlGLContext_FilterEnum *PlaynCoreGlGLContext_FilterEnum_NEAREST;
IOSObjectArray *PlaynCoreGlGLContext_FilterEnum_values;

@implementation PlaynCoreGlGLContext_FilterEnum

+ (PlaynCoreGlGLContext_FilterEnum *)LINEAR {
  return PlaynCoreGlGLContext_FilterEnum_LINEAR;
}
+ (PlaynCoreGlGLContext_FilterEnum *)NEAREST {
  return PlaynCoreGlGLContext_FilterEnum_NEAREST;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [PlaynCoreGlGLContext_FilterEnum class]) {
    PlaynCoreGlGLContext_FilterEnum_LINEAR = [[PlaynCoreGlGLContext_FilterEnum alloc] initWithNSString:@"LINEAR" withInt:0];
    PlaynCoreGlGLContext_FilterEnum_NEAREST = [[PlaynCoreGlGLContext_FilterEnum alloc] initWithNSString:@"NEAREST" withInt:1];
    PlaynCoreGlGLContext_FilterEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ PlaynCoreGlGLContext_FilterEnum_LINEAR, PlaynCoreGlGLContext_FilterEnum_NEAREST, nil } count:2 type:[IOSClass classWithClass:[PlaynCoreGlGLContext_FilterEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:PlaynCoreGlGLContext_FilterEnum_values];
}

+ (PlaynCoreGlGLContext_FilterEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [PlaynCoreGlGLContext_FilterEnum_values count]; i++) {
    PlaynCoreGlGLContext_FilterEnum *e = [PlaynCoreGlGLContext_FilterEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end
@implementation PlaynCoreGlGLContext_Stats

@synthesize frames = frames_;
@synthesize shaderCreates = shaderCreates_;
@synthesize frameBufferCreates = frameBufferCreates_;
@synthesize texCreates = texCreates_;
@synthesize shaderBinds = shaderBinds_;
@synthesize frameBufferBinds = frameBufferBinds_;
@synthesize texBinds = texBinds_;
@synthesize quadsRendered = quadsRendered_;
@synthesize trisRendered = trisRendered_;
@synthesize shaderFlushes = shaderFlushes_;

- (void)reset {
  frames_ = 0;
  shaderCreates_ = 0;
  frameBufferCreates_ = 0;
  texCreates_ = 0;
  shaderBinds_ = 0;
  frameBufferBinds_ = 0;
  texBinds_ = 0;
  quadsRendered_ = 0;
  trisRendered_ = 0;
  shaderFlushes_ = 0;
}

- (id)init {
  return [super init];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLContext_Stats *typedCopy = (PlaynCoreGlGLContext_Stats *) copy;
  typedCopy.frames = frames_;
  typedCopy.shaderCreates = shaderCreates_;
  typedCopy.frameBufferCreates = frameBufferCreates_;
  typedCopy.texCreates = texCreates_;
  typedCopy.shaderBinds = shaderBinds_;
  typedCopy.frameBufferBinds = frameBufferBinds_;
  typedCopy.texBinds = texBinds_;
  typedCopy.quadsRendered = quadsRendered_;
  typedCopy.trisRendered = trisRendered_;
  typedCopy.shaderFlushes = shaderFlushes_;
}

@end
@implementation PlaynCoreGlGLContext_$1

@synthesize this$0 = this$0_;
@synthesize val$tex = val$tex_;

- (void)run {
  [this$0_ destroyTextureWithInt:val$tex_];
}

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)outer$
                           withInt:(int)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$tex_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLContext_$1 *typedCopy = (PlaynCoreGlGLContext_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$tex = val$tex_;
}

@end
@implementation PlaynCoreGlGLContext_$2

@synthesize this$0 = this$0_;
@synthesize val$fbuf = val$fbuf_;

- (void)run {
  [this$0_ deleteFramebufferWithInt:val$fbuf_];
}

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)outer$
                           withInt:(int)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$fbuf_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLContext_$2 *typedCopy = (PlaynCoreGlGLContext_$2 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$fbuf = val$fbuf_;
}

@end
@implementation PlaynCoreGlGLContext_$3

@synthesize val$shader = val$shader_;

- (void)run {
  [((PlaynCoreGlGLShader *) nil_chk(val$shader_)) clearProgram];
}

- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)capture$0 {
  if ((self = [super init])) {
    val$shader_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLContext_$3 *typedCopy = (PlaynCoreGlGLContext_$3 *) copy;
  typedCopy.val$shader = val$shader_;
}

@end
