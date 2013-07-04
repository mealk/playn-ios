//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/AbstractCanvasGL.java
//
//  Created by Thomas on 7/1/13.
//

#import "AbstractImageGL.h"
#import "Canvas.h"
#import "Gradient.h"
#import "Image.h"
#import "Path.h"
#import "Pattern.h"
#import "TextLayout.h"
#import "AbstractCanvasGL.h"

@implementation PlaynCoreGlAbstractCanvasGL

@synthesize isDirty = isDirty_;

- (BOOL)dirty {
  return isDirty_;
}

- (void)clearDirty {
  isDirty_ = NO;
}

- (id<PlaynCoreCanvas>)drawImageWithPlaynCoreImage:(id<PlaynCoreImage>)img
                                         withFloat:(float)x
                                         withFloat:(float)y {
  return [self drawImageWithPlaynCoreImage:img withFloat:x withFloat:y withFloat:[((id<PlaynCoreImage>) NIL_CHK(img)) width] withFloat:[((id<PlaynCoreImage>) NIL_CHK(img)) height]];
}

- (id<PlaynCoreCanvas>)drawImageCenteredWithPlaynCoreImage:(id<PlaynCoreImage>)img
                                                 withFloat:(float)x
                                                 withFloat:(float)y {
  return [self drawImageWithPlaynCoreImage:img withFloat:x - [((id<PlaynCoreImage>) NIL_CHK(img)) width] / 2 withFloat:y - [((id<PlaynCoreImage>) NIL_CHK(img)) height] / 2];
}

- (id<PlaynCoreCanvas>)drawImageWithPlaynCoreImage:(id<PlaynCoreImage>)img
                                         withFloat:(float)x
                                         withFloat:(float)y
                                         withFloat:(float)w
                                         withFloat:(float)h {
  PlaynCoreGlAbstractImageGL *d = (PlaynCoreGlAbstractImageGL *) img;
  [((PlaynCoreGlAbstractImageGL *) NIL_CHK(d)) drawWithId:[self gc] withFloat:x withFloat:y withFloat:w withFloat:h];
  isDirty_ = YES;
  return self;
}

- (id<PlaynCoreCanvas>)drawImageWithPlaynCoreImage:(id<PlaynCoreImage>)img
                                         withFloat:(float)dx
                                         withFloat:(float)dy
                                         withFloat:(float)dw
                                         withFloat:(float)dh
                                         withFloat:(float)sx
                                         withFloat:(float)sy
                                         withFloat:(float)sw
                                         withFloat:(float)sh {
  PlaynCoreGlAbstractImageGL *d = (PlaynCoreGlAbstractImageGL *) img;
  [((PlaynCoreGlAbstractImageGL *) NIL_CHK(d)) drawWithId:[self gc] withFloat:dx withFloat:dy withFloat:dw withFloat:dh withFloat:sx withFloat:sy withFloat:sw withFloat:sh];
  isDirty_ = YES;
  return self;
}

- (id)gc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)clear {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)clearRectWithFloat:(float)param0
                                withFloat:(float)param1
                                withFloat:(float)param2
                                withFloat:(float)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)clipWithPlaynCorePath:(id<PlaynCorePath>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)clipRectWithFloat:(float)param0
                               withFloat:(float)param1
                               withFloat:(float)param2
                               withFloat:(float)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCorePath>)createPath {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)drawLineWithFloat:(float)param0
                               withFloat:(float)param1
                               withFloat:(float)param2
                               withFloat:(float)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)drawPointWithFloat:(float)param0
                                withFloat:(float)param1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)drawTextWithNSString:(NSString *)param0
                                  withFloat:(float)param1
                                  withFloat:(float)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)fillCircleWithFloat:(float)param0
                                 withFloat:(float)param1
                                 withFloat:(float)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)fillPathWithPlaynCorePath:(id<PlaynCorePath>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)fillRectWithFloat:(float)param0
                               withFloat:(float)param1
                               withFloat:(float)param2
                               withFloat:(float)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)fillRoundRectWithFloat:(float)param0
                                    withFloat:(float)param1
                                    withFloat:(float)param2
                                    withFloat:(float)param3
                                    withFloat:(float)param4 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)fillTextWithPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)param0
                                             withFloat:(float)param1
                                             withFloat:(float)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)height {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)restore {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)rotateWithFloat:(float)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)save {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)scale__WithFloat:(float)param0
                              withFloat:(float)param1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setAlphaWithFloat:(float)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setCompositeOperationWithPlaynCoreCanvas_CompositeEnum:(PlaynCoreCanvas_CompositeEnum *)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setFillColorWithInt:(int)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setFillGradientWithPlaynCoreGradient:(id<PlaynCoreGradient>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setFillPatternWithPlaynCorePattern:(id<PlaynCorePattern>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setLineCapWithPlaynCoreCanvas_LineCapEnum:(PlaynCoreCanvas_LineCapEnum *)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setLineJoinWithPlaynCoreCanvas_LineJoinEnum:(PlaynCoreCanvas_LineJoinEnum *)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setMiterLimitWithFloat:(float)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setStrokeColorWithInt:(int)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)setStrokeWidthWithFloat:(float)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)strokeCircleWithFloat:(float)param0
                                   withFloat:(float)param1
                                   withFloat:(float)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)strokePathWithPlaynCorePath:(id<PlaynCorePath>)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)strokeRectWithFloat:(float)param0
                                 withFloat:(float)param1
                                 withFloat:(float)param2
                                 withFloat:(float)param3 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)strokeRoundRectWithFloat:(float)param0
                                      withFloat:(float)param1
                                      withFloat:(float)param2
                                      withFloat:(float)param3
                                      withFloat:(float)param4 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)strokeTextWithPlaynCoreTextLayout:(id<PlaynCoreTextLayout>)param0
                                               withFloat:(float)param1
                                               withFloat:(float)param2 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)transformWithFloat:(float)param0
                                withFloat:(float)param1
                                withFloat:(float)param2
                                withFloat:(float)param3
                                withFloat:(float)param4
                                withFloat:(float)param5 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<PlaynCoreCanvas>)translateWithFloat:(float)param0
                                withFloat:(float)param1 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)width {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreGlAbstractCanvasGL *typedCopy = (PlaynCoreGlAbstractCanvasGL *) copy;
  typedCopy.isDirty = isDirty_;
}

@end
