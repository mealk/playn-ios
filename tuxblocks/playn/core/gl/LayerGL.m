//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/LayerGL.java
//
//  Created by Thomas on 7/1/13.
//

#import "AbstractLayer.h"
#import "GLContext.h"
#import "GLShader.h"
#import "IOSClass.h"
#import "InternalTransform.h"
#import "Layer.h"
#import "Transform.h"
#import "LayerGL.h"

@implementation PlaynCoreGlLayerGL

- (id<PlaynCoreInternalTransform>)savedLocal {
  return savedLocal_;
}
- (void)setSavedLocal:(id<PlaynCoreInternalTransform>)savedLocal {
  JreOperatorRetainedAssign(&savedLocal_, self, savedLocal);
}
@synthesize savedLocal = savedLocal_;
- (PlaynCoreGlGLContext *)ctx {
  return ctx_;
}
- (void)setCtx:(PlaynCoreGlGLContext *)ctx {
  JreOperatorRetainedAssign(&ctx_, self, ctx);
}
@synthesize ctx = ctx_;
- (PlaynCoreGlGLShader *)shader {
  return shader_;
}
- (void)setShader:(PlaynCoreGlGLShader *)shader {
  JreOperatorRetainedAssign(&shader_, self, shader);
}
@synthesize shader = shader_;

- (id<PlaynCoreLayer>)setShaderWithPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)shader {
  if (self.shader != nil) {
    [self.shader release__];
  }
  self.shader = shader;
  if (self.shader != nil) {
    [self.shader reference];
  }
  return self;
}

- (void)destroy {
  [super destroy];
  (void) [self setShaderWithPlaynCoreGlGLShader:nil];
}

- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx {
  if ((self = [super initWithPlaynCoreInternalTransform:[((PlaynCoreGlGLContext *) NIL_CHK(ctx)) createTransform]])) {
    self.ctx = ctx;
    self.savedLocal = [((PlaynCoreGlGLContext *) NIL_CHK(ctx)) createTransform];
  }
  return self;
}

- (id<PlaynCoreInternalTransform>)localTransformWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)parentTransform {
  (void) [((id<PlaynCoreInternalTransform>) NIL_CHK(savedLocal_)) setWithPythagorasFTransform:parentTransform];
  return [((id<PlaynCoreInternalTransform>) NIL_CHK(savedLocal_)) concatenateWithPythagorasFTransform:[self transform] withFloat:originX__ withFloat:originY__];
}

- (void)paintWithPlaynCoreInternalTransform:(id<PlaynCoreInternalTransform>)curTransform
                                    withInt:(int)curTint
                    withPlaynCoreGlGLShader:(PlaynCoreGlGLShader *)curShader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&shader_, self, nil);
  JreOperatorRetainedAssign(&ctx_, self, nil);
  JreOperatorRetainedAssign(&savedLocal_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlLayerGL *typedCopy = (PlaynCoreGlLayerGL *) copy;
  typedCopy.savedLocal = savedLocal_;
  typedCopy.ctx = ctx_;
  typedCopy.shader = shader_;
}

@end
