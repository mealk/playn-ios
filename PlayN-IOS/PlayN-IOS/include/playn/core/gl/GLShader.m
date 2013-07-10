//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GLShader.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "java/lang/UnsupportedOperationException.h"
#import "playn/core/Asserts.h"
#import "playn/core/InternalTransform.h"
#import "playn/core/gl/GL20.h"
#import "playn/core/gl/GLBuffer.h"
#import "playn/core/gl/GLContext.h"
#import "playn/core/gl/GLProgram.h"
#import "playn/core/gl/GLShader.h"

@implementation PlaynCoreGlGLShader

@synthesize ctx = ctx_;
@synthesize refs = refs_;
@synthesize texCore = texCore_;
@synthesize colorCore = colorCore_;
@synthesize curCore = curCore_;
@synthesize texExtras = texExtras_;
@synthesize colorExtras = colorExtras_;
@synthesize curExtras = curExtras_;
@synthesize texEpoch = texEpoch_;
@synthesize colorEpoch = colorEpoch_;

- (PlaynCoreGlGLShader *)prepareTextureWithInt:(int)tex
                                       withInt:(int)tint {
  if (texEpoch_ != [((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) epoch]) {
    texCore_ = nil;
    texExtras_ = nil;
  }
  if (texCore_ == nil) {
    self.texEpoch = [((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) epoch];
    self.texCore = [self createTextureCore];
    self.texExtras = [self createTextureExtrasWithPlaynCoreGlGLProgram:texCore_.prog];
  }
  BOOL justActivated = [((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) useShaderWithPlaynCoreGlGLShader:self withBOOL:curCore_ != texCore_];
  if (justActivated) {
    curCore_ = texCore_;
    curExtras_ = texExtras_;
    [((PlaynCoreGlGLShader_Core *) NIL_CHK(texCore_)) activateWithInt:((PlaynCoreGlGLContext *) NIL_CHK(ctx_)).curFbufWidth withInt:((PlaynCoreGlGLContext *) NIL_CHK(ctx_)).curFbufHeight];
    if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(ctx_.stats_)).shaderBinds++;
  }
  [((PlaynCoreGlGLShader_Core *) NIL_CHK(texCore_)) prepareWithInt:tint withBOOL:justActivated];
  [((PlaynCoreGlGLShader_Extras *) NIL_CHK(texExtras_)) prepareWithInt:tex withBOOL:justActivated];
  return self;
}

- (PlaynCoreGlGLShader *)prepareColorWithInt:(int)tint {
  if (colorEpoch_ != [((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) epoch]) {
    colorCore_ = nil;
    colorExtras_ = nil;
  }
  if (colorCore_ == nil) {
    self.colorEpoch = [((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) epoch];
    self.colorCore = [self createColorCore];
    self.colorExtras = [self createColorExtrasWithPlaynCoreGlGLProgram:colorCore_.prog];
  }
  BOOL justActivated = [((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) useShaderWithPlaynCoreGlGLShader:self withBOOL:curCore_ != colorCore_];
  if (justActivated) {
    curCore_ = colorCore_;
    curExtras_ = colorExtras_;
    [((PlaynCoreGlGLShader_Core *) NIL_CHK(colorCore_)) activateWithInt:((PlaynCoreGlGLContext *) NIL_CHK(ctx_)).curFbufWidth withInt:((PlaynCoreGlGLContext *) NIL_CHK(ctx_)).curFbufHeight];
    if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(ctx_.stats_)).shaderBinds++;
  }
  [((PlaynCoreGlGLShader_Core *) NIL_CHK(colorCore_)) prepareWithInt:tint withBOOL:justActivated];
  [((PlaynCoreGlGLShader_Extras *) NIL_CHK(colorExtras_)) prepareWithInt:0 withBOOL:justActivated];
  return self;
}

- (void)flush {
  [((PlaynCoreGlGLShader_Extras *) NIL_CHK(curExtras_)) willFlush];
  [((PlaynCoreGlGLShader_Core *) NIL_CHK(curCore_)) flush];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(ctx_.stats_)).shaderFlushes++;
}

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
               withFloat:(float)sb {
  [((PlaynCoreGlGLShader_Core *) NIL_CHK(curCore_)) addQuadWithFloat:m00 withFloat:m01 withFloat:m10 withFloat:m11 withFloat:tx withFloat:ty withFloat:left withFloat:top withFloat:sl withFloat:st withFloat:right withFloat:top withFloat:sr withFloat:st withFloat:left withFloat:bottom withFloat:sl withFloat:sb withFloat:right withFloat:bottom withFloat:sr withFloat:sb];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(ctx_.stats_)).quadsRendered++;
}

- (void)addQuadWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)local
                                    withFloat:(float)left
                                    withFloat:(float)top
                                    withFloat:(float)right
                                    withFloat:(float)bottom
                                    withFloat:(float)sl
                                    withFloat:(float)st
                                    withFloat:(float)sr
                                    withFloat:(float)sb {
  [((PlaynCoreGlGLShader_Core *) NIL_CHK(curCore_)) addQuadWithFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m00] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m01] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m10] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m11] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) tx] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) ty] withFloat:left withFloat:top withFloat:sl withFloat:st withFloat:right withFloat:top withFloat:sr withFloat:st withFloat:left withFloat:bottom withFloat:sl withFloat:sb withFloat:right withFloat:bottom withFloat:sr withFloat:sb];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(ctx_.stats_)).quadsRendered++;
}

- (void)addTrianglesWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)local
                            withJavaLangFloatArray:(IOSFloatArray *)xys
                                         withFloat:(float)tw
                                         withFloat:(float)th
                          withJavaLangIntegerArray:(IOSIntArray *)indices {
  [((PlaynCoreGlGLShader_Core *) NIL_CHK(curCore_)) addTrianglesWithFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m00] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m01] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m10] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m11] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) tx] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) ty] withJavaLangFloatArray:xys withFloat:tw withFloat:th withJavaLangIntegerArray:indices];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(ctx_.stats_)).trisRendered += (int) [((IOSIntArray *) NIL_CHK(indices)) count] / 3;
}

- (void)addTrianglesWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)local
                            withJavaLangFloatArray:(IOSFloatArray *)xys
                            withJavaLangFloatArray:(IOSFloatArray *)sxys
                          withJavaLangIntegerArray:(IOSIntArray *)indices {
  [((PlaynCoreGlGLShader_Core *) NIL_CHK(curCore_)) addTrianglesWithFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m00] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m01] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m10] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) m11] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) tx] withFloat:[((id<PlaynCoreInternalTransform>) NIL_CHK(local)) ty] withJavaLangFloatArray:xys withJavaLangFloatArray:sxys withJavaLangIntegerArray:indices];
  if (PlaynCoreGlGLContext_STATS_ENABLED) ((PlaynCoreGlGLContext_Stats *) NIL_CHK(ctx_.stats_)).trisRendered += (int) [((IOSIntArray *) NIL_CHK(indices)) count] / 3;
}

- (void)reference {
  refs_++;
}

- (void)release__ {
  [PlaynCoreAsserts checkStateWithBOOL:refs_ > 0 withId:@"Released an shader with no references!"];
  if (--refs_ == 0) {
    [self clearProgram];
  }
}

- (void)clearProgram {
  if (texCore_ != nil) {
    [texCore_ destroy];
    [((PlaynCoreGlGLShader_Extras *) NIL_CHK(texExtras_)) destroy];
    texCore_ = nil;
    texExtras_ = nil;
  }
  if (colorCore_ != nil) {
    [colorCore_ destroy];
    [((PlaynCoreGlGLShader_Extras *) NIL_CHK(colorExtras_)) destroy];
    colorCore_ = nil;
    colorExtras_ = nil;
  }
  curCore_ = nil;
  curExtras_ = nil;
}

- (void)createCores {
  self.texCore = [self createTextureCore];
  self.texExtras = [self createTextureExtrasWithPlaynCoreGlGLProgram:((PlaynCoreGlGLShader_Core *) NIL_CHK(texCore_)).prog];
  self.colorCore = [self createColorCore];
  self.colorExtras = [self createColorExtrasWithPlaynCoreGlGLProgram:((PlaynCoreGlGLShader_Core *) NIL_CHK(colorCore_)).prog];
}

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx {
  if ((self = [super init])) {
    self.ctx = ctx;
  }
  return self;
}

- (void)dealloc {
  if (texCore_ != nil || colorCore_ != nil) {
    [((PlaynCoreGlGLContext *) NIL_CHK(ctx_)) queueClearShaderWithPlaynCoreGlGLShader:self];
  }
  curExtras_ = nil;
  colorExtras_ = nil;
  texExtras_ = nil;
  curCore_ = nil;
  colorCore_ = nil;
  texCore_ = nil;
  ctx_ = nil;
}

- (PlaynCoreGlGLShader_Core *)createTextureCore {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (PlaynCoreGlGLShader_Core *)createColorCore {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)textureFragmentShader {
  return @"#ifdef GL_ES\nprecision highp float;\n#endif\nuniform sampler2D u_Texture;\nvarying vec2 v_TexCoord;\nvarying vec4 v_Color;\nvoid main(void) {\n  vec4 textureColor = texture2D(u_Texture, v_TexCoord);\n  textureColor.rgb *= v_Color.rgb;\n  gl_FragColor = textureColor * v_Color.a;\n}";
}

- (PlaynCoreGlGLShader_Extras *)createTextureExtrasWithPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog {
  return [[PlaynCoreGlGLShader_TextureExtras alloc] initWithPlaynCoreGlGLShader:self withPlaynCoreGlGLProgram:prog];
}

- (NSString *)colorFragmentShader {
  return @"#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec4 v_Color;\nvoid main(void) {\n  gl_FragColor = vec4(v_Color.rgb, 1) * v_Color.a;\n}";
}

- (PlaynCoreGlGLShader_Extras *)createColorExtrasWithPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog {
  return [[PlaynCoreGlGLShader_ColorExtras alloc] initWithPlaynCoreGlGLShader:self withPlaynCoreGlGLProgram:prog];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLShader *typedCopy = (PlaynCoreGlGLShader *) copy;
  typedCopy.ctx = ctx_;
  typedCopy.refs = refs_;
  typedCopy.texCore = texCore_;
  typedCopy.colorCore = colorCore_;
  typedCopy.curCore = curCore_;
  typedCopy.texExtras = texExtras_;
  typedCopy.colorExtras = colorExtras_;
  typedCopy.curExtras = curExtras_;
  typedCopy.texEpoch = texEpoch_;
  typedCopy.colorEpoch = colorEpoch_;
}

@end
@implementation PlaynCoreGlGLShader_Core

@synthesize prog = prog_;

- (void)activateWithInt:(int)fbufWidth
                withInt:(int)fbufHeight {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)prepareWithInt:(int)tint
              withBOOL:(BOOL)justActivated {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)flush {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

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
               withFloat:(float)sy4 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)addTrianglesWithFloat:(float)m00
                    withFloat:(float)m01
                    withFloat:(float)m10
                    withFloat:(float)m11
                    withFloat:(float)tx
                    withFloat:(float)ty
       withJavaLangFloatArray:(IOSFloatArray *)xys
                    withFloat:(float)tw
                    withFloat:(float)th
     withJavaLangIntegerArray:(IOSIntArray *)indices {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:@"Triangles not supported by this shader"];
}

- (void)addTrianglesWithFloat:(float)m00
                    withFloat:(float)m01
                    withFloat:(float)m10
                    withFloat:(float)m11
                    withFloat:(float)tx
                    withFloat:(float)ty
       withJavaLangFloatArray:(IOSFloatArray *)xys
       withJavaLangFloatArray:(IOSFloatArray *)sxys
     withJavaLangIntegerArray:(IOSIntArray *)indices {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:@"Triangles not supported by this shader"];
}

- (void)destroy {
  [((id<PlaynCoreGlGLProgram>) NIL_CHK(prog_)) destroy];
}

- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)outer$
                     withNSString:(NSString *)vertShader
                     withNSString:(NSString *)fragShader {
  if ((self = [super init])) {
    self.prog = [((PlaynCoreGlGLContext *) NIL_CHK(outer$.ctx)) createProgramWithNSString:vertShader withNSString:fragShader];
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLShader_Core *typedCopy = (PlaynCoreGlGLShader_Core *) copy;
  typedCopy.prog = prog_;
}

@end
@implementation PlaynCoreGlGLShader_Extras

- (void)prepareWithInt:(int)tex
              withBOOL:(BOOL)justActivated {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)willFlush {
}

- (void)destroy {
}

- (id)init {
  return [super init];
}

@end
@implementation PlaynCoreGlGLShader_TextureExtras

@synthesize this$0 = this$0_;
@synthesize uTexture = uTexture_;
@synthesize lastTex = lastTex_;

- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)outer$
         withPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog {
  if ((self = [super init])) {
    this$0_ = outer$;
    uTexture_ = [((id<PlaynCoreGlGLProgram>) NIL_CHK(prog)) getUniform1iWithNSString:@"u_Texture"];
  }
  return self;
}

- (void)prepareWithInt:(int)tex
              withBOOL:(BOOL)justActivated {
  [((PlaynCoreGlGLContext *) NIL_CHK(this$0_.ctx)) checkGLErrorWithNSString:@"textureShader.prepare start"];
  BOOL stateChanged = (tex != lastTex_);
  if (!justActivated && stateChanged) {
    [this$0_ flush];
    [((PlaynCoreGlGLContext *) NIL_CHK(this$0_.ctx)) checkGLErrorWithNSString:@"textureShader.prepare flush"];
  }
  if (stateChanged) {
    lastTex_ = tex;
    [((PlaynCoreGlGLContext *) NIL_CHK(this$0_.ctx)) checkGLErrorWithNSString:@"textureShader.prepare end"];
  }
  if (justActivated) {
    [((PlaynCoreGlGLContext *) NIL_CHK(this$0_.ctx)) activeTextureWithInt:PlaynCoreGlGL20_GL_TEXTURE0];
    [((id<PlaynCoreGlGLShader_Uniform1i>) NIL_CHK(uTexture_)) bindWithInt:0];
  }
}

- (void)willFlush {
  [((PlaynCoreGlGLContext *) NIL_CHK(this$0_.ctx)) bindTextureWithInt:lastTex_];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlGLShader_TextureExtras *typedCopy = (PlaynCoreGlGLShader_TextureExtras *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.uTexture = uTexture_;
  typedCopy.lastTex = lastTex_;
}

@end
@implementation PlaynCoreGlGLShader_ColorExtras

- (id)initWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)outer$
         withPlaynCoreGlGLProgram:(id<PlaynCoreGlGLProgram>)prog {
  return [super init];
}

- (void)prepareWithInt:(int)tex
              withBOOL:(BOOL)justActivated {
}

@end
