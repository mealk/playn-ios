//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/i/Rectangle.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasIRectangle_RESTRICT
#define PythagorasIRectangle_INCLUDE_ALL 1
#endif
#undef PythagorasIRectangle_RESTRICT

#if !defined (_PythagorasIRectangle_) && (PythagorasIRectangle_INCLUDE_ALL || PythagorasIRectangle_INCLUDE)
#define _PythagorasIRectangle_

@protocol PythagorasIIDimension;
@protocol PythagorasIIPoint;
@protocol PythagorasIIRectangle;

#define PythagorasIAbstractRectangle_RESTRICT 1
#define PythagorasIAbstractRectangle_INCLUDE 1
#include "pythagoras/i/AbstractRectangle.h"

#define JavaIoSerializable_RESTRICT 1
#define JavaIoSerializable_INCLUDE 1
#include "java/io/Serializable.h"

@interface PythagorasIRectangle : PythagorasIAbstractRectangle < JavaIoSerializable > {
 @public
  int x__;
  int y__;
  int width__;
  int height__;
}

@property (nonatomic, assign) int x_;
@property (nonatomic, assign) int y_;
@property (nonatomic, assign) int width_;
@property (nonatomic, assign) int height_;

- (id)init;
- (id)initWithPythagorasIIPoint:(id<PythagorasIIPoint>)p;
- (id)initWithPythagorasIIDimension:(id<PythagorasIIDimension>)d;
- (id)initWithPythagorasIIPoint:(id<PythagorasIIPoint>)p
      withPythagorasIIDimension:(id<PythagorasIIDimension>)d;
- (id)initWithInt:(int)x
          withInt:(int)y
          withInt:(int)width
          withInt:(int)height;
- (id)initWithPythagorasIIRectangle:(id<PythagorasIIRectangle>)r;
- (void)setLocationWithInt:(int)x
                   withInt:(int)y;
- (void)setLocationWithPythagorasIIPoint:(id<PythagorasIIPoint>)p;
- (void)setSizeWithInt:(int)width
               withInt:(int)height;
- (void)setSizeWithPythagorasIIDimension:(id<PythagorasIIDimension>)d;
- (void)setBoundsWithInt:(int)x
                 withInt:(int)y
                 withInt:(int)width
                 withInt:(int)height;
- (void)setBoundsWithPythagorasIIRectangle:(id<PythagorasIIRectangle>)r;
- (void)growWithInt:(int)dx
            withInt:(int)dy;
- (void)translateWithInt:(int)mx
                 withInt:(int)my;
- (void)addWithInt:(int)px
           withInt:(int)py;
- (void)addWithPythagorasIIPoint:(id<PythagorasIIPoint>)p;
- (void)addWithPythagorasIIRectangle:(id<PythagorasIIRectangle>)r;
- (int)x;
- (int)y;
- (int)width;
- (int)height;
@end
#endif
