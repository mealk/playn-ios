//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Area.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSDoubleArray;
@class IOSIntArray;
@class IOSObjectArray;
@class PythagorasDIntersectPoint;
@class PythagorasDRectangle;
@protocol PythagorasDIPoint;
@protocol PythagorasDIRectangle;
@protocol PythagorasDTransform;

#import "JreEmulation.h"
#import "IShape.h"
#import "PathIterator.h"

@interface PythagorasDArea : NSObject < PythagorasDIShape, NSCopying > {
 @public
  IOSDoubleArray *coords_;
  int coordsSize_;
  IOSIntArray *rules_;
  int rulesSize_;
  IOSIntArray *offsets_;
  int moveToCount_;
  BOOL isPolygonal__;
}

@property (nonatomic, retain) IOSDoubleArray *coords;
@property (nonatomic, assign) int coordsSize;
@property (nonatomic, retain) IOSIntArray *rules;
@property (nonatomic, assign) int rulesSize;
@property (nonatomic, retain) IOSIntArray *offsets;
@property (nonatomic, assign) int moveToCount;
@property (nonatomic, assign) BOOL isPolygonal_;

- (id)init;
- (id)initWithPythagorasDIShape:(id<PythagorasDIShape>)s;
- (BOOL)isPolygonal;
- (BOOL)isRectangular;
- (BOOL)isSingular;
- (void)reset;
- (void)transformWithPythagorasDTransform:(id<PythagorasDTransform>)t;
- (PythagorasDArea *)createTransformedAreaWithPythagorasDTransform:(id<PythagorasDTransform>)t;
- (void)addWithPythagorasDArea:(PythagorasDArea *)area;
- (void)intersectWithPythagorasDArea:(PythagorasDArea *)area;
- (void)subtractWithPythagorasDArea:(PythagorasDArea *)area;
- (void)exclusiveOrWithPythagorasDArea:(PythagorasDArea *)area;
- (BOOL)isEmpty;
- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y;
- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)width
                withDouble:(double)height;
- (BOOL)containsWithPythagorasDIPoint:(id<PythagorasDIPoint>)p;
- (BOOL)containsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r;
- (BOOL)intersectsWithDouble:(double)x
                  withDouble:(double)y
                  withDouble:(double)width
                  withDouble:(double)height;
- (BOOL)intersectsWithPythagorasDIRectangle:(id<PythagorasDIRectangle>)r;
- (PythagorasDRectangle *)bounds;
- (PythagorasDRectangle *)boundsWithPythagorasDRectangle:(PythagorasDRectangle *)target;
- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t;
- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)t
                                                         withDouble:(double)flatness;
- (BOOL)isEqual:(id)obj;
- (PythagorasDArea *)clone;
- (void)addCurvePolygonWithPythagorasDArea:(PythagorasDArea *)area;
- (void)addPolygonWithPythagorasDArea:(PythagorasDArea *)area;
- (void)intersectCurvePolygonWithPythagorasDArea:(PythagorasDArea *)area;
- (void)intersectPolygonWithPythagorasDArea:(PythagorasDArea *)area;
- (void)subtractCurvePolygonWithPythagorasDArea:(PythagorasDArea *)area;
- (void)subtractPolygonWithPythagorasDArea:(PythagorasDArea *)area;
- (PythagorasDIntersectPoint *)nextIntersectPointWithPythagorasDIntersectPointArray:(IOSObjectArray *)iPoints
                                                      withPythagorasDIntersectPoint:(PythagorasDIntersectPoint *)isectPoint
                                                                           withBOOL:(BOOL)isCurrentArea;
- (PythagorasDIntersectPoint *)prevIntersectPointWithPythagorasDIntersectPointArray:(IOSObjectArray *)iPoints
                                                      withPythagorasDIntersectPoint:(PythagorasDIntersectPoint *)isectPoint
                                                                           withBOOL:(BOOL)isCurrentArea;
- (int)includeCoordsAndRulesWithInt:(int)offset
                            withInt:(int)length
           withJavaLangIntegerArray:(IOSIntArray *)rules
           withJavaLangIntegerArray:(IOSIntArray *)offsets
           withJavaLangIntegerArray:(IOSIntArray *)resultRules
           withJavaLangIntegerArray:(IOSIntArray *)resultOffsets
            withJavaLangDoubleArray:(IOSDoubleArray *)resultCoords
            withJavaLangDoubleArray:(IOSDoubleArray *)coords
                            withInt:(int)resultRulesPos
                            withInt:(int)resultCoordPos
      withPythagorasDIntersectPoint:(PythagorasDIntersectPoint *)point
                           withBOOL:(BOOL)isCurrentArea
                           withBOOL:(BOOL)way
                            withInt:(int)operation;
- (void)copy__WithPythagorasDArea:(PythagorasDArea *)src
              withPythagorasDArea:(PythagorasDArea *)dst OBJC_METHOD_FAMILY_NONE;
- (int)containsExactWithDouble:(double)x
                    withDouble:(double)y;
- (void)reverseCopyWithJavaLangDoubleArray:(IOSDoubleArray *)coords;
- (double)areaBoundsSquare;
- (BOOL)isVertexWithDouble:(double)x
                withDouble:(double)y;
+ (IOSDoubleArray *)adjustSizeWithJavaLangDoubleArray:(IOSDoubleArray *)array
                                              withInt:(int)newSize;
+ (IOSIntArray *)adjustSizeWithJavaLangIntegerArray:(IOSIntArray *)array
                                            withInt:(int)newSize;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasDArea_AreaPathIterator : NSObject < PythagorasDPathIterator > {
 @public
  PythagorasDArea *this$0_;
  id<PythagorasDTransform> transform_;
  int curRuleIndex_;
  int curCoordIndex_;
}

@property (nonatomic, retain) PythagorasDArea *this$0;
@property (nonatomic, retain) id<PythagorasDTransform> transform;
@property (nonatomic, assign) int curRuleIndex;
@property (nonatomic, assign) int curCoordIndex;

- (id)initWithPythagorasDArea:(PythagorasDArea *)outer$
     withPythagorasDTransform:(id<PythagorasDTransform>)t;
- (int)windingRule;
- (BOOL)isDone;
- (void)next;
- (int)currentSegmentWithJavaLangDoubleArray:(IOSDoubleArray *)c;
@end
