//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/gl/GL20.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSByteArray.h"
#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "IOSObjectArray.h"
#import "java/nio/Buffer.h"
#import "java/nio/ByteBuffer.h"
#import "java/nio/FloatBuffer.h"
#import "java/nio/IntBuffer.h"
#import "playn/core/gl/GL20.h"


@implementation PlaynCoreGlGL20

//+ (int)GL_ACTIVE_TEXTURE {
//  return PlaynCoreGlGL20_GL_ACTIVE_TEXTURE;
//}
//
//+ (int)GL_DEPTH_BUFFER_BIT {
//  return PlaynCoreGlGL20_GL_DEPTH_BUFFER_BIT;
//}
//
//+ (int)GL_STENCIL_BUFFER_BIT {
//  return PlaynCoreGlGL20_GL_STENCIL_BUFFER_BIT;
//}
//
//+ (int)GL_COLOR_BUFFER_BIT {
//  return PlaynCoreGlGL20_GL_COLOR_BUFFER_BIT;
//}
//
//+ (int)GL_FALSE {
//  return PlaynCoreGlGL20_GL_FALSE;
//}
//
//+ (int)GL_TRUE {
//  return PlaynCoreGlGL20_GL_TRUE;
//}
//
//+ (int)GL_POINTS {
//  return PlaynCoreGlGL20_GL_POINTS;
//}
//
//+ (int)GL_LINES {
//  return PlaynCoreGlGL20_GL_LINES;
//}
//
//+ (int)GL_LINE_LOOP {
//  return PlaynCoreGlGL20_GL_LINE_LOOP;
//}
//
//+ (int)GL_LINE_STRIP {
//  return PlaynCoreGlGL20_GL_LINE_STRIP;
//}
//
//+ (int)GL_TRIANGLES {
//  return PlaynCoreGlGL20_GL_TRIANGLES;
//}
//
//+ (int)GL_TRIANGLE_STRIP {
//  return PlaynCoreGlGL20_GL_TRIANGLE_STRIP;
//}
//
//+ (int)GL_TRIANGLE_FAN {
//  return PlaynCoreGlGL20_GL_TRIANGLE_FAN;
//}
//
//+ (int)GL_ZERO {
//  return PlaynCoreGlGL20_GL_ZERO;
//}
//
//+ (int)GL_ONE {
//  return PlaynCoreGlGL20_GL_ONE;
//}
//
//+ (int)GL_SRC_COLOR {
//  return PlaynCoreGlGL20_GL_SRC_COLOR;
//}
//
//+ (int)GL_ONE_MINUS_SRC_COLOR {
//  return PlaynCoreGlGL20_GL_ONE_MINUS_SRC_COLOR;
//}
//
//+ (int)GL_SRC_ALPHA {
//  return PlaynCoreGlGL20_GL_SRC_ALPHA;
//}
//
//+ (int)GL_ONE_MINUS_SRC_ALPHA {
//  return PlaynCoreGlGL20_GL_ONE_MINUS_SRC_ALPHA;
//}
//
//+ (int)GL_DST_ALPHA {
//  return PlaynCoreGlGL20_GL_DST_ALPHA;
//}
//
//+ (int)GL_ONE_MINUS_DST_ALPHA {
//  return PlaynCoreGlGL20_GL_ONE_MINUS_DST_ALPHA;
//}
//
//+ (int)GL_DST_COLOR {
//  return PlaynCoreGlGL20_GL_DST_COLOR;
//}
//
//+ (int)GL_ONE_MINUS_DST_COLOR {
//  return PlaynCoreGlGL20_GL_ONE_MINUS_DST_COLOR;
//}
//
//+ (int)GL_SRC_ALPHA_SATURATE {
//  return PlaynCoreGlGL20_GL_SRC_ALPHA_SATURATE;
//}
//
//+ (int)GL_FUNC_ADD {
//  return PlaynCoreGlGL20_GL_FUNC_ADD;
//}
//
//+ (int)GL_BLEND_EQUATION {
//  return PlaynCoreGlGL20_GL_BLEND_EQUATION;
//}
//
//+ (int)GL_BLEND_EQUATION_RGB {
//  return PlaynCoreGlGL20_GL_BLEND_EQUATION_RGB;
//}
//
//+ (int)GL_BLEND_EQUATION_ALPHA {
//  return PlaynCoreGlGL20_GL_BLEND_EQUATION_ALPHA;
//}
//
//+ (int)GL_FUNC_SUBTRACT {
//  return PlaynCoreGlGL20_GL_FUNC_SUBTRACT;
//}
//
//+ (int)GL_FUNC_REVERSE_SUBTRACT {
//  return PlaynCoreGlGL20_GL_FUNC_REVERSE_SUBTRACT;
//}
//
//+ (int)GL_BLEND_DST_RGB {
//  return PlaynCoreGlGL20_GL_BLEND_DST_RGB;
//}
//
//+ (int)GL_BLEND_SRC_RGB {
//  return PlaynCoreGlGL20_GL_BLEND_SRC_RGB;
//}
//
//+ (int)GL_BLEND_DST_ALPHA {
//  return PlaynCoreGlGL20_GL_BLEND_DST_ALPHA;
//}
//
//+ (int)GL_BLEND_SRC_ALPHA {
//  return PlaynCoreGlGL20_GL_BLEND_SRC_ALPHA;
//}
//
//+ (int)GL_CONSTANT_COLOR {
//  return PlaynCoreGlGL20_GL_CONSTANT_COLOR;
//}
//
//+ (int)GL_ONE_MINUS_CONSTANT_COLOR {
//  return PlaynCoreGlGL20_GL_ONE_MINUS_CONSTANT_COLOR;
//}
//
//+ (int)GL_CONSTANT_ALPHA {
//  return PlaynCoreGlGL20_GL_CONSTANT_ALPHA;
//}
//
//+ (int)GL_ONE_MINUS_CONSTANT_ALPHA {
//  return PlaynCoreGlGL20_GL_ONE_MINUS_CONSTANT_ALPHA;
//}
//
//+ (int)GL_BLEND_COLOR {
//  return PlaynCoreGlGL20_GL_BLEND_COLOR;
//}
//
//+ (int)GL_ARRAY_BUFFER {
//  return PlaynCoreGlGL20_GL_ARRAY_BUFFER;
//}
//
//+ (int)GL_ELEMENT_ARRAY_BUFFER {
//  return PlaynCoreGlGL20_GL_ELEMENT_ARRAY_BUFFER;
//}
//
//+ (int)GL_ARRAY_BUFFER_BINDING {
//  return PlaynCoreGlGL20_GL_ARRAY_BUFFER_BINDING;
//}
//
//+ (int)GL_ELEMENT_ARRAY_BUFFER_BINDING {
//  return PlaynCoreGlGL20_GL_ELEMENT_ARRAY_BUFFER_BINDING;
//}
//
//+ (int)GL_STREAM_DRAW {
//  return PlaynCoreGlGL20_GL_STREAM_DRAW;
//}
//
//+ (int)GL_STATIC_DRAW {
//  return PlaynCoreGlGL20_GL_STATIC_DRAW;
//}
//
//+ (int)GL_DYNAMIC_DRAW {
//  return PlaynCoreGlGL20_GL_DYNAMIC_DRAW;
//}
//
//+ (int)GL_BUFFER_SIZE {
//  return PlaynCoreGlGL20_GL_BUFFER_SIZE;
//}
//
//+ (int)GL_BUFFER_USAGE {
//  return PlaynCoreGlGL20_GL_BUFFER_USAGE;
//}
//
//+ (int)GL_CURRENT_VERTEX_ATTRIB {
//  return PlaynCoreGlGL20_GL_CURRENT_VERTEX_ATTRIB;
//}
//
//+ (int)GL_FRONT {
//  return PlaynCoreGlGL20_GL_FRONT;
//}
//
//+ (int)GL_BACK {
//  return PlaynCoreGlGL20_GL_BACK;
//}
//
//+ (int)GL_FRONT_AND_BACK {
//  return PlaynCoreGlGL20_GL_FRONT_AND_BACK;
//}
//
//+ (int)GL_TEXTURE_2D {
//  return PlaynCoreGlGL20_GL_TEXTURE_2D;
//}
//
//+ (int)GL_CULL_FACE {
//  return PlaynCoreGlGL20_GL_CULL_FACE;
//}
//
//+ (int)GL_BLEND {
//  return PlaynCoreGlGL20_GL_BLEND;
//}
//
//+ (int)GL_DITHER {
//  return PlaynCoreGlGL20_GL_DITHER;
//}
//
//+ (int)GL_STENCIL_TEST {
//  return PlaynCoreGlGL20_GL_STENCIL_TEST;
//}
//
//+ (int)GL_DEPTH_TEST {
//  return PlaynCoreGlGL20_GL_DEPTH_TEST;
//}
//
//+ (int)GL_SCISSOR_TEST {
//  return PlaynCoreGlGL20_GL_SCISSOR_TEST;
//}
//
//+ (int)GL_POLYGON_OFFSET_FILL {
//  return PlaynCoreGlGL20_GL_POLYGON_OFFSET_FILL;
//}
//
//+ (int)GL_SAMPLE_ALPHA_TO_COVERAGE {
//  return PlaynCoreGlGL20_GL_SAMPLE_ALPHA_TO_COVERAGE;
//}
//
//+ (int)GL_SAMPLE_COVERAGE {
//  return PlaynCoreGlGL20_GL_SAMPLE_COVERAGE;
//}
//
//+ (int)GL_NO_ERROR {
//  return PlaynCoreGlGL20_GL_NO_ERROR;
//}
//
//+ (int)GL_INVALID_ENUM {
//  return PlaynCoreGlGL20_GL_INVALID_ENUM;
//}
//
//+ (int)GL_INVALID_VALUE {
//  return PlaynCoreGlGL20_GL_INVALID_VALUE;
//}
//
//+ (int)GL_INVALID_OPERATION {
//  return PlaynCoreGlGL20_GL_INVALID_OPERATION;
//}
//
//+ (int)GL_OUT_OF_MEMORY {
//  return PlaynCoreGlGL20_GL_OUT_OF_MEMORY;
//}
//
//+ (int)GL_CW {
//  return PlaynCoreGlGL20_GL_CW;
//}
//
//+ (int)GL_CCW {
//  return PlaynCoreGlGL20_GL_CCW;
//}
//
//+ (int)GL_LINE_WIDTH {
//  return PlaynCoreGlGL20_GL_LINE_WIDTH;
//}
//
//+ (int)GL_ALIASED_POINT_SIZE_RANGE {
//  return PlaynCoreGlGL20_GL_ALIASED_POINT_SIZE_RANGE;
//}
//
//+ (int)GL_ALIASED_LINE_WIDTH_RANGE {
//  return PlaynCoreGlGL20_GL_ALIASED_LINE_WIDTH_RANGE;
//}
//
//+ (int)GL_CULL_FACE_MODE {
//  return PlaynCoreGlGL20_GL_CULL_FACE_MODE;
//}
//
//+ (int)GL_FRONT_FACE {
//  return PlaynCoreGlGL20_GL_FRONT_FACE;
//}
//
//+ (int)GL_DEPTH_RANGE {
//  return PlaynCoreGlGL20_GL_DEPTH_RANGE;
//}
//
//+ (int)GL_DEPTH_WRITEMASK {
//  return PlaynCoreGlGL20_GL_DEPTH_WRITEMASK;
//}
//
//+ (int)GL_DEPTH_CLEAR_VALUE {
//  return PlaynCoreGlGL20_GL_DEPTH_CLEAR_VALUE;
//}
//
//+ (int)GL_DEPTH_FUNC {
//  return PlaynCoreGlGL20_GL_DEPTH_FUNC;
//}
//
//+ (int)GL_STENCIL_CLEAR_VALUE {
//  return PlaynCoreGlGL20_GL_STENCIL_CLEAR_VALUE;
//}
//
//+ (int)GL_STENCIL_FUNC {
//  return PlaynCoreGlGL20_GL_STENCIL_FUNC;
//}
//
//+ (int)GL_STENCIL_FAIL {
//  return PlaynCoreGlGL20_GL_STENCIL_FAIL;
//}
//
//+ (int)GL_STENCIL_PASS_DEPTH_FAIL {
//  return PlaynCoreGlGL20_GL_STENCIL_PASS_DEPTH_FAIL;
//}
//
//+ (int)GL_STENCIL_PASS_DEPTH_PASS {
//  return PlaynCoreGlGL20_GL_STENCIL_PASS_DEPTH_PASS;
//}
//
//+ (int)GL_STENCIL_REF {
//  return PlaynCoreGlGL20_GL_STENCIL_REF;
//}
//
//+ (int)GL_STENCIL_VALUE_MASK {
//  return PlaynCoreGlGL20_GL_STENCIL_VALUE_MASK;
//}
//
//+ (int)GL_STENCIL_WRITEMASK {
//  return PlaynCoreGlGL20_GL_STENCIL_WRITEMASK;
//}
//
//+ (int)GL_STENCIL_BACK_FUNC {
//  return PlaynCoreGlGL20_GL_STENCIL_BACK_FUNC;
//}
//
//+ (int)GL_STENCIL_BACK_FAIL {
//  return PlaynCoreGlGL20_GL_STENCIL_BACK_FAIL;
//}
//
//+ (int)GL_STENCIL_BACK_PASS_DEPTH_FAIL {
//  return PlaynCoreGlGL20_GL_STENCIL_BACK_PASS_DEPTH_FAIL;
//}
//
//+ (int)GL_STENCIL_BACK_PASS_DEPTH_PASS {
//  return PlaynCoreGlGL20_GL_STENCIL_BACK_PASS_DEPTH_PASS;
//}
//
//+ (int)GL_STENCIL_BACK_REF {
//  return PlaynCoreGlGL20_GL_STENCIL_BACK_REF;
//}
//
//+ (int)GL_STENCIL_BACK_VALUE_MASK {
//  return PlaynCoreGlGL20_GL_STENCIL_BACK_VALUE_MASK;
//}
//
//+ (int)GL_STENCIL_BACK_WRITEMASK {
//  return PlaynCoreGlGL20_GL_STENCIL_BACK_WRITEMASK;
//}
//
//+ (int)GL_VIEWPORT {
//  return PlaynCoreGlGL20_GL_VIEWPORT;
//}
//
//+ (int)GL_SCISSOR_BOX {
//  return PlaynCoreGlGL20_GL_SCISSOR_BOX;
//}
//
//+ (int)GL_COLOR_CLEAR_VALUE {
//  return PlaynCoreGlGL20_GL_COLOR_CLEAR_VALUE;
//}
//
//+ (int)GL_COLOR_WRITEMASK {
//  return PlaynCoreGlGL20_GL_COLOR_WRITEMASK;
//}
//
//+ (int)GL_UNPACK_ALIGNMENT {
//  return PlaynCoreGlGL20_GL_UNPACK_ALIGNMENT;
//}
//
//+ (int)GL_PACK_ALIGNMENT {
//  return PlaynCoreGlGL20_GL_PACK_ALIGNMENT;
//}
//
//+ (int)GL_MAX_TEXTURE_SIZE {
//  return PlaynCoreGlGL20_GL_MAX_TEXTURE_SIZE;
//}
//
//+ (int)GL_MAX_VIEWPORT_DIMS {
//  return PlaynCoreGlGL20_GL_MAX_VIEWPORT_DIMS;
//}
//
//+ (int)GL_SUBPIXEL_BITS {
//  return PlaynCoreGlGL20_GL_SUBPIXEL_BITS;
//}
//
//+ (int)GL_RED_BITS {
//  return PlaynCoreGlGL20_GL_RED_BITS;
//}
//
//+ (int)GL_GREEN_BITS {
//  return PlaynCoreGlGL20_GL_GREEN_BITS;
//}
//
//+ (int)GL_BLUE_BITS {
//  return PlaynCoreGlGL20_GL_BLUE_BITS;
//}
//
//+ (int)GL_ALPHA_BITS {
//  return PlaynCoreGlGL20_GL_ALPHA_BITS;
//}
//
//+ (int)GL_DEPTH_BITS {
//  return PlaynCoreGlGL20_GL_DEPTH_BITS;
//}
//
//+ (int)GL_STENCIL_BITS {
//  return PlaynCoreGlGL20_GL_STENCIL_BITS;
//}
//
//+ (int)GL_POLYGON_OFFSET_UNITS {
//  return PlaynCoreGlGL20_GL_POLYGON_OFFSET_UNITS;
//}
//
//+ (int)GL_POLYGON_OFFSET_FACTOR {
//  return PlaynCoreGlGL20_GL_POLYGON_OFFSET_FACTOR;
//}
//
//+ (int)GL_TEXTURE_BINDING_2D {
//  return PlaynCoreGlGL20_GL_TEXTURE_BINDING_2D;
//}
//
//+ (int)GL_SAMPLE_BUFFERS {
//  return PlaynCoreGlGL20_GL_SAMPLE_BUFFERS;
//}
//
//+ (int)GL_SAMPLES {
//  return PlaynCoreGlGL20_GL_SAMPLES;
//}
//
//+ (int)GL_SAMPLE_COVERAGE_VALUE {
//  return PlaynCoreGlGL20_GL_SAMPLE_COVERAGE_VALUE;
//}
//
//+ (int)GL_SAMPLE_COVERAGE_INVERT {
//  return PlaynCoreGlGL20_GL_SAMPLE_COVERAGE_INVERT;
//}
//
//+ (int)GL_NUM_COMPRESSED_TEXTURE_FORMATS {
//  return PlaynCoreGlGL20_GL_NUM_COMPRESSED_TEXTURE_FORMATS;
//}
//
//+ (int)GL_COMPRESSED_TEXTURE_FORMATS {
//  return PlaynCoreGlGL20_GL_COMPRESSED_TEXTURE_FORMATS;
//}
//
//+ (int)GL_DONT_CARE {
//  return PlaynCoreGlGL20_GL_DONT_CARE;
//}
//
//+ (int)GL_FASTEST {
//  return PlaynCoreGlGL20_GL_FASTEST;
//}
//
//+ (int)GL_NICEST {
//  return PlaynCoreGlGL20_GL_NICEST;
//}
//
//+ (int)GL_GENERATE_MIPMAP_HINT {
//  return PlaynCoreGlGL20_GL_GENERATE_MIPMAP_HINT;
//}
//
//+ (int)GL_BYTE {
//  return PlaynCoreGlGL20_GL_BYTE;
//}
//
//+ (int)GL_UNSIGNED_BYTE {
//  return PlaynCoreGlGL20_GL_UNSIGNED_BYTE;
//}
//
//+ (int)GL_SHORT {
//  return PlaynCoreGlGL20_GL_SHORT;
//}
//
//+ (int)GL_UNSIGNED_SHORT {
//  return PlaynCoreGlGL20_GL_UNSIGNED_SHORT;
//}
//
//+ (int)GL_INT {
//  return PlaynCoreGlGL20_GL_INT;
//}
//
//+ (int)GL_UNSIGNED_INT {
//  return PlaynCoreGlGL20_GL_UNSIGNED_INT;
//}
//
//+ (int)GL_FLOAT {
//  return PlaynCoreGlGL20_GL_FLOAT;
//}
//
//+ (int)GL_FIXED {
//  return PlaynCoreGlGL20_GL_FIXED;
//}
//
//+ (int)GL_DEPTH_COMPONENT {
//  return PlaynCoreGlGL20_GL_DEPTH_COMPONENT;
//}
//
//+ (int)GL_ALPHA {
//  return PlaynCoreGlGL20_GL_ALPHA;
//}
//
//+ (int)GL_RGB {
//  return PlaynCoreGlGL20_GL_RGB;
//}
//
//+ (int)GL_RGBA {
//  return PlaynCoreGlGL20_GL_RGBA;
//}
//
//+ (int)GL_LUMINANCE {
//  return PlaynCoreGlGL20_GL_LUMINANCE;
//}
//
//+ (int)GL_LUMINANCE_ALPHA {
//  return PlaynCoreGlGL20_GL_LUMINANCE_ALPHA;
//}
//
//+ (int)GL_UNSIGNED_SHORT_4_4_4_4 {
//  return PlaynCoreGlGL20_GL_UNSIGNED_SHORT_4_4_4_4;
//}
//
//+ (int)GL_UNSIGNED_SHORT_5_5_5_1 {
//  return PlaynCoreGlGL20_GL_UNSIGNED_SHORT_5_5_5_1;
//}
//
//+ (int)GL_UNSIGNED_SHORT_5_6_5 {
//  return PlaynCoreGlGL20_GL_UNSIGNED_SHORT_5_6_5;
//}
//
//+ (int)GL_FRAGMENT_SHADER {
//  return PlaynCoreGlGL20_GL_FRAGMENT_SHADER;
//}
//
//+ (int)GL_VERTEX_SHADER {
//  return PlaynCoreGlGL20_GL_VERTEX_SHADER;
//}
//
//+ (int)GL_MAX_VERTEX_ATTRIBS {
//  return PlaynCoreGlGL20_GL_MAX_VERTEX_ATTRIBS;
//}
//
//+ (int)GL_MAX_VERTEX_UNIFORM_VECTORS {
//  return PlaynCoreGlGL20_GL_MAX_VERTEX_UNIFORM_VECTORS;
//}
//
//+ (int)GL_MAX_VARYING_VECTORS {
//  return PlaynCoreGlGL20_GL_MAX_VARYING_VECTORS;
//}
//
//+ (int)GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS {
//  return PlaynCoreGlGL20_GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
//}
//
//+ (int)GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS {
//  return PlaynCoreGlGL20_GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
//}
//
//+ (int)GL_MAX_TEXTURE_IMAGE_UNITS {
//  return PlaynCoreGlGL20_GL_MAX_TEXTURE_IMAGE_UNITS;
//}
//
//+ (int)GL_MAX_FRAGMENT_UNIFORM_VECTORS {
//  return PlaynCoreGlGL20_GL_MAX_FRAGMENT_UNIFORM_VECTORS;
//}
//
//+ (int)GL_SHADER_TYPE {
//  return PlaynCoreGlGL20_GL_SHADER_TYPE;
//}
//
//+ (int)GL_DELETE_STATUS {
//  return PlaynCoreGlGL20_GL_DELETE_STATUS;
//}
//
//+ (int)GL_LINK_STATUS {
//  return PlaynCoreGlGL20_GL_LINK_STATUS;
//}
//
//+ (int)GL_VALIDATE_STATUS {
//  return PlaynCoreGlGL20_GL_VALIDATE_STATUS;
//}
//
//+ (int)GL_ATTACHED_SHADERS {
//  return PlaynCoreGlGL20_GL_ATTACHED_SHADERS;
//}
//
//+ (int)GL_ACTIVE_UNIFORMS {
//  return PlaynCoreGlGL20_GL_ACTIVE_UNIFORMS;
//}
//
//+ (int)GL_ACTIVE_UNIFORM_MAX_LENGTH {
//  return PlaynCoreGlGL20_GL_ACTIVE_UNIFORM_MAX_LENGTH;
//}
//
//+ (int)GL_ACTIVE_ATTRIBUTES {
//  return PlaynCoreGlGL20_GL_ACTIVE_ATTRIBUTES;
//}
//
//+ (int)GL_ACTIVE_ATTRIBUTE_MAX_LENGTH {
//  return PlaynCoreGlGL20_GL_ACTIVE_ATTRIBUTE_MAX_LENGTH;
//}
//
//+ (int)GL_SHADING_LANGUAGE_VERSION {
//  return PlaynCoreGlGL20_GL_SHADING_LANGUAGE_VERSION;
//}
//
//+ (int)GL_CURRENT_PROGRAM {
//  return PlaynCoreGlGL20_GL_CURRENT_PROGRAM;
//}
//
//+ (int)GL_NEVER {
//  return PlaynCoreGlGL20_GL_NEVER;
//}
//
//+ (int)GL_LESS {
//  return PlaynCoreGlGL20_GL_LESS;
//}
//
//+ (int)GL_EQUAL {
//  return PlaynCoreGlGL20_GL_EQUAL;
//}
//
//+ (int)GL_LEQUAL {
//  return PlaynCoreGlGL20_GL_LEQUAL;
//}
//
//+ (int)GL_GREATER {
//  return PlaynCoreGlGL20_GL_GREATER;
//}
//
//+ (int)GL_NOTEQUAL {
//  return PlaynCoreGlGL20_GL_NOTEQUAL;
//}
//
//+ (int)GL_GEQUAL {
//  return PlaynCoreGlGL20_GL_GEQUAL;
//}
//
//+ (int)GL_ALWAYS {
//  return PlaynCoreGlGL20_GL_ALWAYS;
//}
//
//+ (int)GL_KEEP {
//  return PlaynCoreGlGL20_GL_KEEP;
//}
//
//+ (int)GL_REPLACE {
//  return PlaynCoreGlGL20_GL_REPLACE;
//}
//
//+ (int)GL_INCR {
//  return PlaynCoreGlGL20_GL_INCR;
//}
//
//+ (int)GL_DECR {
//  return PlaynCoreGlGL20_GL_DECR;
//}
//
//+ (int)GL_INVERT {
//  return PlaynCoreGlGL20_GL_INVERT;
//}
//
//+ (int)GL_INCR_WRAP {
//  return PlaynCoreGlGL20_GL_INCR_WRAP;
//}
//
//+ (int)GL_DECR_WRAP {
//  return PlaynCoreGlGL20_GL_DECR_WRAP;
//}
//
//+ (int)GL_VENDOR {
//  return PlaynCoreGlGL20_GL_VENDOR;
//}
//
//+ (int)GL_RENDERER {
//  return PlaynCoreGlGL20_GL_RENDERER;
//}
//
//+ (int)GL_VERSION {
//  return PlaynCoreGlGL20_GL_VERSION;
//}
//
//+ (int)GL_EXTENSIONS {
//  return PlaynCoreGlGL20_GL_EXTENSIONS;
//}
//
//+ (int)GL_NEAREST {
//  return PlaynCoreGlGL20_GL_NEAREST;
//}
//
//+ (int)GL_LINEAR {
//  return PlaynCoreGlGL20_GL_LINEAR;
//}
//
//+ (int)GL_NEAREST_MIPMAP_NEAREST {
//  return PlaynCoreGlGL20_GL_NEAREST_MIPMAP_NEAREST;
//}
//
//+ (int)GL_LINEAR_MIPMAP_NEAREST {
//  return PlaynCoreGlGL20_GL_LINEAR_MIPMAP_NEAREST;
//}
//
//+ (int)GL_NEAREST_MIPMAP_LINEAR {
//  return PlaynCoreGlGL20_GL_NEAREST_MIPMAP_LINEAR;
//}
//
//+ (int)GL_LINEAR_MIPMAP_LINEAR {
//  return PlaynCoreGlGL20_GL_LINEAR_MIPMAP_LINEAR;
//}
//
//+ (int)GL_TEXTURE_MAG_FILTER {
//  return PlaynCoreGlGL20_GL_TEXTURE_MAG_FILTER;
//}
//
//+ (int)GL_TEXTURE_MIN_FILTER {
//  return PlaynCoreGlGL20_GL_TEXTURE_MIN_FILTER;
//}
//
//+ (int)GL_TEXTURE_WRAP_S {
//  return PlaynCoreGlGL20_GL_TEXTURE_WRAP_S;
//}
//
//+ (int)GL_TEXTURE_WRAP_T {
//  return PlaynCoreGlGL20_GL_TEXTURE_WRAP_T;
//}
//
//+ (int)GL_TEXTURE {
//  return PlaynCoreGlGL20_GL_TEXTURE;
//}
//
//+ (int)GL_TEXTURE_CUBE_MAP {
//  return PlaynCoreGlGL20_GL_TEXTURE_CUBE_MAP;
//}
//
//+ (int)GL_TEXTURE_BINDING_CUBE_MAP {
//  return PlaynCoreGlGL20_GL_TEXTURE_BINDING_CUBE_MAP;
//}
//
//+ (int)GL_TEXTURE_CUBE_MAP_POSITIVE_X {
//  return PlaynCoreGlGL20_GL_TEXTURE_CUBE_MAP_POSITIVE_X;
//}
//
//+ (int)GL_TEXTURE_CUBE_MAP_NEGATIVE_X {
//  return PlaynCoreGlGL20_GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
//}
//
//+ (int)GL_TEXTURE_CUBE_MAP_POSITIVE_Y {
//  return PlaynCoreGlGL20_GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
//}
//
//+ (int)GL_TEXTURE_CUBE_MAP_NEGATIVE_Y {
//  return PlaynCoreGlGL20_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
//}
//
//+ (int)GL_TEXTURE_CUBE_MAP_POSITIVE_Z {
//  return PlaynCoreGlGL20_GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
//}
//
//+ (int)GL_TEXTURE_CUBE_MAP_NEGATIVE_Z {
//  return PlaynCoreGlGL20_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
//}
//
//+ (int)GL_MAX_CUBE_MAP_TEXTURE_SIZE {
//  return PlaynCoreGlGL20_GL_MAX_CUBE_MAP_TEXTURE_SIZE;
//}
//
//+ (int)GL_TEXTURE0 {
//  return PlaynCoreGlGL20_GL_TEXTURE0;
//}
//
//+ (int)GL_TEXTURE1 {
//  return PlaynCoreGlGL20_GL_TEXTURE1;
//}
//
//+ (int)GL_TEXTURE2 {
//  return PlaynCoreGlGL20_GL_TEXTURE2;
//}
//
//+ (int)GL_TEXTURE3 {
//  return PlaynCoreGlGL20_GL_TEXTURE3;
//}
//
//+ (int)GL_TEXTURE4 {
//  return PlaynCoreGlGL20_GL_TEXTURE4;
//}
//
//+ (int)GL_TEXTURE5 {
//  return PlaynCoreGlGL20_GL_TEXTURE5;
//}
//
//+ (int)GL_TEXTURE6 {
//  return PlaynCoreGlGL20_GL_TEXTURE6;
//}
//
//+ (int)GL_TEXTURE7 {
//  return PlaynCoreGlGL20_GL_TEXTURE7;
//}
//
//+ (int)GL_TEXTURE8 {
//  return PlaynCoreGlGL20_GL_TEXTURE8;
//}
//
//+ (int)GL_TEXTURE9 {
//  return PlaynCoreGlGL20_GL_TEXTURE9;
//}
//
//+ (int)GL_TEXTURE10 {
//  return PlaynCoreGlGL20_GL_TEXTURE10;
//}
//
//+ (int)GL_TEXTURE11 {
//  return PlaynCoreGlGL20_GL_TEXTURE11;
//}
//
//+ (int)GL_TEXTURE12 {
//  return PlaynCoreGlGL20_GL_TEXTURE12;
//}
//
//+ (int)GL_TEXTURE13 {
//  return PlaynCoreGlGL20_GL_TEXTURE13;
//}
//
//+ (int)GL_TEXTURE14 {
//  return PlaynCoreGlGL20_GL_TEXTURE14;
//}
//
//+ (int)GL_TEXTURE15 {
//  return PlaynCoreGlGL20_GL_TEXTURE15;
//}
//
//+ (int)GL_TEXTURE16 {
//  return PlaynCoreGlGL20_GL_TEXTURE16;
//}
//
//+ (int)GL_TEXTURE17 {
//  return PlaynCoreGlGL20_GL_TEXTURE17;
//}
//
//+ (int)GL_TEXTURE18 {
//  return PlaynCoreGlGL20_GL_TEXTURE18;
//}
//
//+ (int)GL_TEXTURE19 {
//  return PlaynCoreGlGL20_GL_TEXTURE19;
//}
//
//+ (int)GL_TEXTURE20 {
//  return PlaynCoreGlGL20_GL_TEXTURE20;
//}
//
//+ (int)GL_TEXTURE21 {
//  return PlaynCoreGlGL20_GL_TEXTURE21;
//}
//
//+ (int)GL_TEXTURE22 {
//  return PlaynCoreGlGL20_GL_TEXTURE22;
//}
//
//+ (int)GL_TEXTURE23 {
//  return PlaynCoreGlGL20_GL_TEXTURE23;
//}
//
//+ (int)GL_TEXTURE24 {
//  return PlaynCoreGlGL20_GL_TEXTURE24;
//}
//
//+ (int)GL_TEXTURE25 {
//  return PlaynCoreGlGL20_GL_TEXTURE25;
//}
//
//+ (int)GL_TEXTURE26 {
//  return PlaynCoreGlGL20_GL_TEXTURE26;
//}
//
//+ (int)GL_TEXTURE27 {
//  return PlaynCoreGlGL20_GL_TEXTURE27;
//}
//
//+ (int)GL_TEXTURE28 {
//  return PlaynCoreGlGL20_GL_TEXTURE28;
//}
//
//+ (int)GL_TEXTURE29 {
//  return PlaynCoreGlGL20_GL_TEXTURE29;
//}
//
//+ (int)GL_TEXTURE30 {
//  return PlaynCoreGlGL20_GL_TEXTURE30;
//}
//
//+ (int)GL_TEXTURE31 {
//  return PlaynCoreGlGL20_GL_TEXTURE31;
//}
//
//+ (int)GL_REPEAT {
//  return PlaynCoreGlGL20_GL_REPEAT;
//}
//
//+ (int)GL_CLAMP_TO_EDGE {
//  return PlaynCoreGlGL20_GL_CLAMP_TO_EDGE;
//}
//
//+ (int)GL_MIRRORED_REPEAT {
//  return PlaynCoreGlGL20_GL_MIRRORED_REPEAT;
//}
//
//+ (int)GL_FLOAT_VEC2 {
//  return PlaynCoreGlGL20_GL_FLOAT_VEC2;
//}
//
//+ (int)GL_FLOAT_VEC3 {
//  return PlaynCoreGlGL20_GL_FLOAT_VEC3;
//}
//
//+ (int)GL_FLOAT_VEC4 {
//  return PlaynCoreGlGL20_GL_FLOAT_VEC4;
//}
//
//+ (int)GL_INT_VEC2 {
//  return PlaynCoreGlGL20_GL_INT_VEC2;
//}
//
//+ (int)GL_INT_VEC3 {
//  return PlaynCoreGlGL20_GL_INT_VEC3;
//}
//
//+ (int)GL_INT_VEC4 {
//  return PlaynCoreGlGL20_GL_INT_VEC4;
//}
//
//+ (int)GL_BOOL {
//  return PlaynCoreGlGL20_GL_BOOL;
//}
//
//+ (int)GL_BOOL_VEC2 {
//  return PlaynCoreGlGL20_GL_BOOL_VEC2;
//}
//
//+ (int)GL_BOOL_VEC3 {
//  return PlaynCoreGlGL20_GL_BOOL_VEC3;
//}
//
//+ (int)GL_BOOL_VEC4 {
//  return PlaynCoreGlGL20_GL_BOOL_VEC4;
//}
//
//+ (int)GL_FLOAT_MAT2 {
//  return PlaynCoreGlGL20_GL_FLOAT_MAT2;
//}
//
//+ (int)GL_FLOAT_MAT3 {
//  return PlaynCoreGlGL20_GL_FLOAT_MAT3;
//}
//
//+ (int)GL_FLOAT_MAT4 {
//  return PlaynCoreGlGL20_GL_FLOAT_MAT4;
//}
//
//+ (int)GL_SAMPLER_2D {
//  return PlaynCoreGlGL20_GL_SAMPLER_2D;
//}
//
//+ (int)GL_SAMPLER_CUBE {
//  return PlaynCoreGlGL20_GL_SAMPLER_CUBE;
//}
//
//+ (int)GL_VERTEX_ATTRIB_ARRAY_ENABLED {
//  return PlaynCoreGlGL20_GL_VERTEX_ATTRIB_ARRAY_ENABLED;
//}
//
//+ (int)GL_VERTEX_ATTRIB_ARRAY_SIZE {
//  return PlaynCoreGlGL20_GL_VERTEX_ATTRIB_ARRAY_SIZE;
//}
//
//+ (int)GL_VERTEX_ATTRIB_ARRAY_STRIDE {
//  return PlaynCoreGlGL20_GL_VERTEX_ATTRIB_ARRAY_STRIDE;
//}
//
//+ (int)GL_VERTEX_ATTRIB_ARRAY_TYPE {
//  return PlaynCoreGlGL20_GL_VERTEX_ATTRIB_ARRAY_TYPE;
//}
//
//+ (int)GL_VERTEX_ATTRIB_ARRAY_NORMALIZED {
//  return PlaynCoreGlGL20_GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
//}
//
//+ (int)GL_VERTEX_ATTRIB_ARRAY_POINTER {
//  return PlaynCoreGlGL20_GL_VERTEX_ATTRIB_ARRAY_POINTER;
//}
//
//+ (int)GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING {
//  return PlaynCoreGlGL20_GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
//}
//
//+ (int)GL_IMPLEMENTATION_COLOR_READ_TYPE {
//  return PlaynCoreGlGL20_GL_IMPLEMENTATION_COLOR_READ_TYPE;
//}
//
//+ (int)GL_IMPLEMENTATION_COLOR_READ_FORMAT {
//  return PlaynCoreGlGL20_GL_IMPLEMENTATION_COLOR_READ_FORMAT;
//}
//
//+ (int)GL_COMPILE_STATUS {
//  return PlaynCoreGlGL20_GL_COMPILE_STATUS;
//}
//
//+ (int)GL_INFO_LOG_LENGTH {
//  return PlaynCoreGlGL20_GL_INFO_LOG_LENGTH;
//}
//
//+ (int)GL_SHADER_SOURCE_LENGTH {
//  return PlaynCoreGlGL20_GL_SHADER_SOURCE_LENGTH;
//}
//
//+ (int)GL_SHADER_COMPILER {
//  return PlaynCoreGlGL20_GL_SHADER_COMPILER;
//}
//
//+ (int)GL_SHADER_BINARY_FORMATS {
//  return PlaynCoreGlGL20_GL_SHADER_BINARY_FORMATS;
//}
//
//+ (int)GL_NUM_SHADER_BINARY_FORMATS {
//  return PlaynCoreGlGL20_GL_NUM_SHADER_BINARY_FORMATS;
//}
//
//+ (int)GL_LOW_FLOAT {
//  return PlaynCoreGlGL20_GL_LOW_FLOAT;
//}
//
//+ (int)GL_MEDIUM_FLOAT {
//  return PlaynCoreGlGL20_GL_MEDIUM_FLOAT;
//}
//
//+ (int)GL_HIGH_FLOAT {
//  return PlaynCoreGlGL20_GL_HIGH_FLOAT;
//}
//
//+ (int)GL_LOW_INT {
//  return PlaynCoreGlGL20_GL_LOW_INT;
//}
//
//+ (int)GL_MEDIUM_INT {
//  return PlaynCoreGlGL20_GL_MEDIUM_INT;
//}
//
//+ (int)GL_HIGH_INT {
//  return PlaynCoreGlGL20_GL_HIGH_INT;
//}
//
//+ (int)GL_FRAMEBUFFER {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER;
//}
//
//+ (int)GL_RENDERBUFFER {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER;
//}
//
//+ (int)GL_RGBA4 {
//  return PlaynCoreGlGL20_GL_RGBA4;
//}
//
//+ (int)GL_RGB5_A1 {
//  return PlaynCoreGlGL20_GL_RGB5_A1;
//}
//
//+ (int)GL_RGB565 {
//  return PlaynCoreGlGL20_GL_RGB565;
//}
//
//+ (int)GL_DEPTH_COMPONENT16 {
//  return PlaynCoreGlGL20_GL_DEPTH_COMPONENT16;
//}
//
//+ (int)GL_STENCIL_INDEX {
//  return PlaynCoreGlGL20_GL_STENCIL_INDEX;
//}
//
//+ (int)GL_STENCIL_INDEX8 {
//  return PlaynCoreGlGL20_GL_STENCIL_INDEX8;
//}
//
//+ (int)GL_RENDERBUFFER_WIDTH {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_WIDTH;
//}
//
//+ (int)GL_RENDERBUFFER_HEIGHT {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_HEIGHT;
//}
//
//+ (int)GL_RENDERBUFFER_INTERNAL_FORMAT {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_INTERNAL_FORMAT;
//}
//
//+ (int)GL_RENDERBUFFER_RED_SIZE {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_RED_SIZE;
//}
//
//+ (int)GL_RENDERBUFFER_GREEN_SIZE {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_GREEN_SIZE;
//}
//
//+ (int)GL_RENDERBUFFER_BLUE_SIZE {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_BLUE_SIZE;
//}
//
//+ (int)GL_RENDERBUFFER_ALPHA_SIZE {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_ALPHA_SIZE;
//}
//
//+ (int)GL_RENDERBUFFER_DEPTH_SIZE {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_DEPTH_SIZE;
//}
//
//+ (int)GL_RENDERBUFFER_STENCIL_SIZE {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_STENCIL_SIZE;
//}
//
//+ (int)GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
//}
//
//+ (int)GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
//}
//
//+ (int)GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
//}
//
//+ (int)GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
//}
//
//+ (int)GL_COLOR_ATTACHMENT0 {
//  return PlaynCoreGlGL20_GL_COLOR_ATTACHMENT0;
//}
//
//+ (int)GL_DEPTH_ATTACHMENT {
//  return PlaynCoreGlGL20_GL_DEPTH_ATTACHMENT;
//}
//
//+ (int)GL_STENCIL_ATTACHMENT {
//  return PlaynCoreGlGL20_GL_STENCIL_ATTACHMENT;
//}
//
//+ (int)GL_NONE {
//  return PlaynCoreGlGL20_GL_NONE;
//}
//
//+ (int)GL_FRAMEBUFFER_COMPLETE {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_COMPLETE;
//}
//
//+ (int)GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
//}
//
//+ (int)GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
//}
//
//+ (int)GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
//}
//
//+ (int)GL_FRAMEBUFFER_UNSUPPORTED {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_UNSUPPORTED;
//}
//
//+ (int)GL_FRAMEBUFFER_BINDING {
//  return PlaynCoreGlGL20_GL_FRAMEBUFFER_BINDING;
//}
//
//+ (int)GL_RENDERBUFFER_BINDING {
//  return PlaynCoreGlGL20_GL_RENDERBUFFER_BINDING;
//}
//
//+ (int)GL_MAX_RENDERBUFFER_SIZE {
//  return PlaynCoreGlGL20_GL_MAX_RENDERBUFFER_SIZE;
//}
//
//+ (int)GL_INVALID_FRAMEBUFFER_OPERATION {
//  return PlaynCoreGlGL20_GL_INVALID_FRAMEBUFFER_OPERATION;
//}

@end
