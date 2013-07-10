//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Path.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSByteArray;
@class IOSFloatArray;
@class IOSIntArray;
@class PythagorasFPoint;
@class PythagorasFRectangle;
@protocol PythagorasFIPoint;
@protocol PythagorasFIRectangle;
@protocol PythagorasFTransform;

#import "JreEmulation.h"
#import "pythagoras/f/IShape.h"
#import "pythagoras/f/PathIterator.h"

#define PythagorasFPath_BUFFER_CAPACITY 10
#define PythagorasFPath_BUFFER_SIZE 10
#define PythagorasFPath_WIND_EVEN_ODD 0
#define PythagorasFPath_WIND_NON_ZERO 1

@interface PythagorasFPath : NSObject < PythagorasFIShape, NSCopying > {
 @public
  IOSByteArray *types_;
  IOSFloatArray *points_;
  int typeSize_;
  int pointSize_;
  int rule_;
}

@property (nonatomic, strong) IOSByteArray *types;
@property (nonatomic, strong) IOSFloatArray *points;
@property (nonatomic, assign) int typeSize;
@property (nonatomic, assign) int pointSize;
@property (nonatomic, assign) int rule;

+ (int)WIND_EVEN_ODD;
+ (int)WIND_NON_ZERO;
+ (IOSIntArray *)pointShift;
+ (void)setPointShift:(IOSIntArray *)pointShift;
+ (int)BUFFER_SIZE;
+ (int)BUFFER_CAPACITY;
- (id)init;
- (id)initWithInt:(int)rule;
- (id)initWithInt:(int)rule
          withInt:(int)initialCapacity;
- (id)initWithPythagorasFIShape:(id<PythagorasFIShape>)shape;
- (void)setWindingRuleWithInt:(int)rule;
- (int)windingRule;
- (void)moveToWithFloat:(float)x
              withFloat:(float)y;
- (void)lineToWithFloat:(float)x
              withFloat:(float)y;
- (void)quadToWithFloat:(float)x1
              withFloat:(float)y1
              withFloat:(float)x2
              withFloat:(float)y2;
- (void)curveToWithFloat:(float)x1
               withFloat:(float)y1
               withFloat:(float)x2
               withFloat:(float)y2
               withFloat:(float)x3
               withFloat:(float)y3;
- (void)closePath;
- (void)appendWithPythagorasFIShape:(id<PythagorasFIShape>)shape
                           withBOOL:(BOOL)connect;
- (void)appendWithPythagorasFPathIterator:(id<PythagorasFPathIterator>)path
                                 withBOOL:(BOOL)connect;
- (PythagorasFPoint *)currentPoint;
- (void)reset;
- (void)transformWithPythagorasFTransform:(id<PythagorasFTransform>)t;
- (id<PythagorasFIShape>)createTransformedShapeWithPythagorasFTransform:(id<PythagorasFTransform>)t;
- (PythagorasFRectangle *)bounds;
- (PythagorasFRectangle *)boundsWithPythagorasFRectangle:(PythagorasFRectangle *)target;
- (BOOL)isEmpty;
- (BOOL)containsWithFloat:(float)px
                withFloat:(float)py;
- (BOOL)containsWithFloat:(float)rx
                withFloat:(float)ry
                withFloat:(float)rw
                withFloat:(float)rh;
- (BOOL)intersectsWithFloat:(float)rx
                  withFloat:(float)ry
                  withFloat:(float)rw
                  withFloat:(float)rh;
- (BOOL)containsWithPythagorasFIPoint:(id<PythagorasFIPoint>)p;
- (BOOL)containsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r;
- (BOOL)intersectsWithPythagorasFIRectangle:(id<PythagorasFIRectangle>)r;
- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)t;
- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)t
                                                          withFloat:(float)flatness;
- (PythagorasFPath *)clone;
- (void)checkBufWithInt:(int)pointCount
               withBOOL:(BOOL)checkMove;
- (BOOL)isInsideWithInt:(int)cross;
- (id)initWithInt:(int)rule
withJavaLangByteArray:(IOSByteArray *)types
withJavaLangFloatArray:(IOSFloatArray *)points
          withInt:(int)typeSize
          withInt:(int)pointSize;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasFPath_Iterator : NSObject < PythagorasFPathIterator > {
 @public
  int typeIndex_;
  int pointIndex_;
  PythagorasFPath *p_;
  id<PythagorasFTransform> t_;
}

@property (nonatomic, assign) int typeIndex;
@property (nonatomic, assign) int pointIndex;
@property (nonatomic, strong) PythagorasFPath *p;
@property (nonatomic, strong) id<PythagorasFTransform> t;

- (id)initWithPythagorasFPath:(PythagorasFPath *)path;
- (id)initWithPythagorasFPath:(PythagorasFPath *)path
     withPythagorasFTransform:(id<PythagorasFTransform>)at;
- (int)windingRule;
- (BOOL)isDone;
- (void)next;
- (int)currentSegmentWithJavaLangFloatArray:(IOSFloatArray *)coords;
@end