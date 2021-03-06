//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/AbstractImageGL.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSIntArray.h"
#include "java/lang/UnsupportedOperationException.h"
#include "playn/core/Asserts.h"
#include "playn/core/Image.h"
#include "playn/core/InternalTransform.h"
#include "playn/core/Pattern.h"
#include "playn/core/gl/AbstractImageGL.h"
#include "playn/core/gl/GLContext.h"
#include "playn/core/gl/GLShader.h"
#include "playn/core/gl/ImageRegionGL.h"
#include "playn/core/gl/Scale.h"
#include "playn/core/util/Callback.h"

@implementation PlaynCoreGlAbstractImageGL

@synthesize ctx = ctx_;
@synthesize refs = refs_;
@synthesize repeatX_ = repeatX__;
@synthesize repeatY_ = repeatY__;
@synthesize mipmapped = mipmapped_;

- (void)reference {
  refs_++;
}

- (void)release__ {
  [PlaynCoreAsserts checkStateWithBOOL:refs_ > 0 withId:@"Released an image with no references!"];
  if (--refs_ == 0) {
    [self clearTexture];
  }
}

- (void)drawWithId:(id)gc
         withFloat:(float)dx
         withFloat:(float)dy
         withFloat:(float)dw
         withFloat:(float)dh {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)drawWithId:(id)gc
         withFloat:(float)dx
         withFloat:(float)dy
         withFloat:(float)dw
         withFloat:(float)dh
         withFloat:(float)sx
         withFloat:(float)sy
         withFloat:(float)sw
         withFloat:(float)sh {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)drawWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader
     withPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)xform
                            withInt:(int)tint
                          withFloat:(float)dx
                          withFloat:(float)dy
                          withFloat:(float)dw
                          withFloat:(float)dh {
  [self drawWithPlaynCoreGlGLShader:shader withPlaynCoreInternalTransform:xform withInt:tint withFloat:dx withFloat:dy withFloat:dw withFloat:dh withFloat:0 withFloat:0 withFloat:(repeatX__ ? dw : [self width]) withFloat:(repeatY__ ? dh : [self height])];
}

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
                          withFloat:(float)sh {
  float texWidth = [self width], texHeight = [self height];
  [self drawImplWithPlaynCoreGlGLShader:shader withPlaynCoreInternalTransform:xform withInt:[self ensureTexture] withInt:tint withFloat:dx withFloat:dy withFloat:dw withFloat:dh withFloat:sx / texWidth withFloat:sy / texHeight withFloat:(sx + sw) / texWidth withFloat:(sy + sh) / texHeight];
}

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
                              withFloat:(float)sb {
  if (tex > 0) {
    [((PlaynCoreGlGLShader *) nil_chk([((PlaynCoreGlGLShader *) nil_chk([((PlaynCoreGlGLContext *) nil_chk(ctx_)) quadShaderWithPlaynCoreGlGLShader:shader])) prepareTextureWithInt:tex withInt:tint])) addQuadWithPlaynCoreInternalTransform:xform withFloat:dx withFloat:dy withFloat:dx + dw withFloat:dy + dh withFloat:sl withFloat:st withFloat:sr withFloat:sb];
  }
}

- (BOOL)repeatX {
  return repeatX__;
}

- (BOOL)repeatY {
  return repeatY__;
}

- (void)setRepeatWithBOOL:(BOOL)repeatX
                 withBOOL:(BOOL)repeatY {
  if (repeatX != self.repeatX_ || repeatY != self.repeatY_) {
    self.repeatX_ = repeatX;
    self.repeatY_ = repeatY;
    [self clearTexture];
  }
}

- (void)setMipmappedWithBOOL:(BOOL)mipmapped {
  if (self.mipmapped != mipmapped) {
    self.mipmapped = mipmapped;
    [self clearTexture];
  }
}

- (id<PlaynCoreImage_Region>)subImageWithFloat:(float)sx
                                     withFloat:(float)sy
                                     withFloat:(float)swidth
                                     withFloat:(float)sheight {
  return [[PlaynCoreGlImageRegionGL alloc] initWithPlaynCoreGlAbstractImageGL:self withFloat:sx withFloat:sy withFloat:swidth withFloat:sheight];
}

- (id<PlaynCorePattern>)toPattern {
  return [[PlaynCoreGlAbstractImageGL_$1 alloc] initWithPlaynCoreGlAbstractImageGL:self];
}

- (void)getRgbWithInt:(int)startX
              withInt:(int)startY
              withInt:(int)width
              withInt:(int)height
         withIntArray:(IOSIntArray *)rgbArray
              withInt:(int)offset
              withInt:(int)scanSize {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:[NSString stringWithFormat:@"Cannot getRgb on %@", [[self getClass] getName]]];
}

- (id<PlaynCoreImage>)transformWithPlaynCoreImage_BitmapTransformer:(id<PlaynCoreImage_BitmapTransformer>)xform {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:[NSString stringWithFormat:@"Cannot transform %@", [[self getClass] getName]]];
}

- (id<PlaynCorePattern>)toSubPatternWithPlaynCoreGlAbstractImageGL:(PlaynCoreGlAbstractImageGL *)image
                                                          withBOOL:(BOOL)repeatX
                                                          withBOOL:(BOOL)repeatY
                                                         withFloat:(float)x
                                                         withFloat:(float)y
                                                         withFloat:(float)width
                                                         withFloat:(float)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx {
  if ((self = [super init])) {
    self.ctx = ctx;
  }
  return self;
}

- (void)addCallbackWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)clearTexture {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (int)ensureTexture {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isReady {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (PlaynCoreGlScale *)scale__ {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlAbstractImageGL *typedCopy = (PlaynCoreGlAbstractImageGL *) copy;
  typedCopy.ctx = ctx_;
  typedCopy.refs = refs_;
  typedCopy.repeatX_ = repeatX__;
  typedCopy.repeatY_ = repeatY__;
  typedCopy.mipmapped = mipmapped_;
}

@end
@implementation PlaynCoreGlAbstractImageGL_$1

@synthesize this$0 = this$0_;

- (BOOL)repeatX {
  return this$0_.repeatX_;
}

- (BOOL)repeatY {
  return this$0_.repeatY_;
}

- (PlaynCoreGlAbstractImageGL *)image {
  return this$0_;
}

- (id)initWithPlaynCoreGlAbstractImageGL:(PlaynCoreGlAbstractImageGL *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlAbstractImageGL_$1 *typedCopy = (PlaynCoreGlAbstractImageGL_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
