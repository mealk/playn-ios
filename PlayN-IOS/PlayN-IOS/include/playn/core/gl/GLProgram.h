//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GLProgram.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PlaynCoreGlGLProgram_RESTRICT
#define PlaynCoreGlGLProgram_INCLUDE_ALL 1
#endif
#undef PlaynCoreGlGLProgram_RESTRICT

#if !defined (_PlaynCoreGlGLProgram_) && (PlaynCoreGlGLProgram_INCLUDE_ALL || PlaynCoreGlGLProgram_INCLUDE)
#define _PlaynCoreGlGLProgram_

@protocol PlaynCoreGlGLShader_Attrib;
@protocol PlaynCoreGlGLShader_Uniform1f;
@protocol PlaynCoreGlGLShader_Uniform1i;
@protocol PlaynCoreGlGLShader_Uniform2f;
@protocol PlaynCoreGlGLShader_Uniform2fv;
@protocol PlaynCoreGlGLShader_Uniform2i;
@protocol PlaynCoreGlGLShader_Uniform3f;
@protocol PlaynCoreGlGLShader_Uniform4f;
@protocol PlaynCoreGlGLShader_Uniform4fv;
@protocol PlaynCoreGlGLShader_UniformMatrix4fv;

@protocol PlaynCoreGlGLProgram < NSObject, JavaObject >
- (id<PlaynCoreGlGLShader_Uniform1f>)getUniform1fWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Uniform2f>)getUniform2fWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Uniform3f>)getUniform3fWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Uniform4f>)getUniform4fWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Uniform1i>)getUniform1iWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Uniform2i>)getUniform2iWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Uniform2fv>)getUniform2fvWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Uniform4fv>)getUniform4fvWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_UniformMatrix4fv>)getUniformMatrix4fvWithNSString:(NSString *)name;
- (id<PlaynCoreGlGLShader_Attrib>)getAttribWithNSString:(NSString *)name
                                                withInt:(int)size
                                                withInt:(int)type;
- (void)bind;
- (void)destroy;
@end
#endif
