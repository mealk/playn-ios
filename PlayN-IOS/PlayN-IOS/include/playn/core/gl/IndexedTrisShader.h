//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/IndexedTrisShader.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreGlIndexedTrisShader_RESTRICT
#define PlaynCoreGlIndexedTrisShader_INCLUDE_ALL 1
#endif
#undef PlaynCoreGlIndexedTrisShader_RESTRICT

#if !defined (_PlaynCoreGlIndexedTrisShader_) && (PlaynCoreGlIndexedTrisShader_INCLUDE_ALL || PlaynCoreGlIndexedTrisShader_INCLUDE)
#define _PlaynCoreGlIndexedTrisShader_

@class PlaynCoreGlGLContext;
@class PlaynCoreGlGLShader_Core;

#define PlaynCoreGlGLShader_RESTRICT 1
#define PlaynCoreGlGLShader_INCLUDE 1
#include "playn/core/gl/GLShader.h"

#define PlaynCoreGlIndexedTrisShader_EXPAND_ELEMS 96
#define PlaynCoreGlIndexedTrisShader_EXPAND_VERTS 64
#define PlaynCoreGlIndexedTrisShader_FLOAT_SIZE_BYTES 4
#define PlaynCoreGlIndexedTrisShader_START_ELEMS 96
#define PlaynCoreGlIndexedTrisShader_START_VERTS 64

@interface PlaynCoreGlIndexedTrisShader : PlaynCoreGlGLShader {
}

+ (NSString *)VERT_UNIFS;
+ (NSString *)VERT_ATTRS;
+ (NSString *)VERT_VARS;
+ (NSString *)VERT_SETPOS;
+ (NSString *)VERT_SETTEX;
+ (NSString *)VERT_SETCOLOR;
+ (NSString *)VERTEX_SHADER;
- (id)initWithPlaynCoreGlGLContext:(PlaynCoreGlGLContext *)ctx;
- (NSString *)description;
- (NSString *)vertexShader;
- (int)vertexSize;
- (int)vertexStride;
- (PlaynCoreGlGLShader_Core *)createTextureCore;
- (PlaynCoreGlGLShader_Core *)createColorCore;
@end
#endif

#if !defined (_PlaynCoreGlIndexedTrisShader_ITCore_) && (PlaynCoreGlIndexedTrisShader_INCLUDE_ALL || PlaynCoreGlIndexedTrisShader_ITCore_INCLUDE)
#define _PlaynCoreGlIndexedTrisShader_ITCore_

@class IOSFloatArray;
@class IOSIntArray;
@class PlaynCoreGlIndexedTrisShader;
@protocol PlaynCoreGlGLBuffer_Float;
@protocol PlaynCoreGlGLBuffer_Short;
@protocol PlaynCoreGlGLShader_Attrib;
@protocol PlaynCoreGlGLShader_Uniform2f;

#define PlaynCoreGlGLShader_RESTRICT 1
#define PlaynCoreGlGLShader_Core_INCLUDE 1
#include "playn/core/gl/GLShader.h"

@interface PlaynCoreGlIndexedTrisShader_ITCore : PlaynCoreGlGLShader_Core {
 @public
  PlaynCoreGlIndexedTrisShader *this$1_;
  id<PlaynCoreGlGLShader_Uniform2f> uScreenSize_;
  id<PlaynCoreGlGLShader_Attrib> aMatrix_, aTranslation_, aPosition_, aTexCoord_, aColor_;
  id<PlaynCoreGlGLBuffer_Float> vertices_;
  id<PlaynCoreGlGLBuffer_Short> elements_;
  float arTint_, gbTint_;
}

@property (nonatomic, strong) PlaynCoreGlIndexedTrisShader *this$1;
@property (nonatomic, strong) id<PlaynCoreGlGLShader_Uniform2f> uScreenSize;
@property (nonatomic, strong) id<PlaynCoreGlGLShader_Attrib> aMatrix;
@property (nonatomic, strong) id<PlaynCoreGlGLShader_Attrib> aTranslation;
@property (nonatomic, strong) id<PlaynCoreGlGLShader_Attrib> aPosition;
@property (nonatomic, strong) id<PlaynCoreGlGLShader_Attrib> aTexCoord;
@property (nonatomic, strong) id<PlaynCoreGlGLShader_Attrib> aColor;
@property (nonatomic, strong) id<PlaynCoreGlGLBuffer_Float> vertices;
@property (nonatomic, strong) id<PlaynCoreGlGLBuffer_Short> elements;
@property (nonatomic, assign) float arTint;
@property (nonatomic, assign) float gbTint;

- (id)initWithPlaynCoreGlIndexedTrisShader:(PlaynCoreGlIndexedTrisShader *)outer$
                              withNSString:(NSString *)vertShader
                              withNSString:(NSString *)fragShader;
- (void)activateWithInt:(int)fbufWidth
                withInt:(int)fbufHeight;
- (void)prepareWithInt:(int)tint
              withBOOL:(BOOL)justActivated;
- (void)flush;
- (void)destroy;
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
               withFloatArray:(IOSFloatArray *)xys
                    withFloat:(float)tw
                    withFloat:(float)th
                 withIntArray:(IOSIntArray *)indices;
- (void)addTrianglesWithFloat:(float)m00
                    withFloat:(float)m01
                    withFloat:(float)m10
                    withFloat:(float)m11
                    withFloat:(float)tx
                    withFloat:(float)ty
               withFloatArray:(IOSFloatArray *)xys
               withFloatArray:(IOSFloatArray *)sxys
                 withIntArray:(IOSIntArray *)indices;
- (NSString *)description;
- (void)addExtraVertexAttribsWithPlaynCoreGlGLBuffer_Float:(id<PlaynCoreGlGLBuffer_Float>)vertices;
- (int)beginPrimitiveWithInt:(int)vertexCount
                     withInt:(int)elemCount;
- (void)expandVertsWithInt:(int)vertCount;
- (void)expandElemsWithInt:(int)elemCount;
@end
#endif
