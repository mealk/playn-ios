//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Graphics.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;
@class IOSIntArray;
@class PlaynCoreFont_StyleEnum;
@class PlaynCoreGlGLContext;
@class PlaynCoreTextFormat;
@protocol PlaynCoreCanvasImage;
@protocol PlaynCoreFont;
@protocol PlaynCoreGlGL20;
@protocol PlaynCoreGradient;
@protocol PlaynCoreGroupLayer;
@protocol PlaynCoreGroupLayer_Clipped;
@protocol PlaynCoreImage;
@protocol PlaynCoreImageLayer;
@protocol PlaynCoreImmediateLayer;
@protocol PlaynCoreImmediateLayer_Clipped;
@protocol PlaynCoreImmediateLayer_Renderer;
@protocol PlaynCoreSurfaceImage;
@protocol PlaynCoreSurfaceLayer;
@protocol PlaynCoreTextLayout;

#import "JreEmulation.h"

@protocol PlaynCoreGraphics < NSObject >
- (int)width;
- (int)height;
- (int)screenHeight;
- (int)screenWidth;
- (float)scaleFactor;
- (id<PlaynCoreGroupLayer>)rootLayer;
- (PlaynCoreGlGLContext *)ctx;
- (id<PlaynCoreGlGL20>)gl20;
- (id<PlaynCoreGroupLayer>)createGroupLayer;
- (id<PlaynCoreGroupLayer_Clipped>)createGroupLayerWithFloat:(float)width
                                                   withFloat:(float)height;
- (id<PlaynCoreImmediateLayer_Clipped>)createImmediateLayerWithInt:(int)width
                                                           withInt:(int)height
                              withPlaynCoreImmediateLayer_Renderer:(id<PlaynCoreImmediateLayer_Renderer>)renderer;
- (id<PlaynCoreImmediateLayer>)createImmediateLayerWithPlaynCoreImmediateLayer_Renderer:(id<PlaynCoreImmediateLayer_Renderer>)renderer;
- (id<PlaynCoreImageLayer>)createImageLayer;
- (id<PlaynCoreImageLayer>)createImageLayerWithPlaynCoreImage:(id<PlaynCoreImage>)image;
- (id<PlaynCoreSurfaceLayer>)createSurfaceLayerWithFloat:(float)width
                                               withFloat:(float)height;
- (id<PlaynCoreCanvasImage>)createImageWithFloat:(float)width
                                       withFloat:(float)height;
- (id<PlaynCoreSurfaceImage>)createSurfaceWithFloat:(float)width
                                          withFloat:(float)height;
- (id<PlaynCoreGradient>)createLinearGradientWithFloat:(float)x0
                                             withFloat:(float)y0
                                             withFloat:(float)x1
                                             withFloat:(float)y1
                              withJavaLangIntegerArray:(IOSIntArray *)colors
                                withJavaLangFloatArray:(IOSFloatArray *)positions;
- (id<PlaynCoreGradient>)createRadialGradientWithFloat:(float)x
                                             withFloat:(float)y
                                             withFloat:(float)r
                              withJavaLangIntegerArray:(IOSIntArray *)colors
                                withJavaLangFloatArray:(IOSFloatArray *)positions;
- (id<PlaynCoreFont>)createFontWithNSString:(NSString *)name
                withPlaynCoreFont_StyleEnum:(PlaynCoreFont_StyleEnum *)style
                                  withFloat:(float)size;
- (id<PlaynCoreTextLayout>)layoutTextWithNSString:(NSString *)text
                          withPlaynCoreTextFormat:(PlaynCoreTextFormat *)format;
@end
