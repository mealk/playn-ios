//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/AbstractEllipse.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSDoubleArray;
@class IOSObjectArray;
@class PythagorasDEllipse;
@protocol PythagorasDTransform;

#import "JreEmulation.h"
#import "IEllipse.h"
#import "PathIterator.h"
#import "RectangularShape.h"

@interface PythagorasDAbstractEllipse : PythagorasDRectangularShape < PythagorasDIEllipse > {
}

+ (double)U;
+ (IOSObjectArray *)POINTS;
- (PythagorasDEllipse *)clone;
- (BOOL)containsWithDouble:(double)px
                withDouble:(double)py;
- (BOOL)containsWithDouble:(double)rx
                withDouble:(double)ry
                withDouble:(double)rw
                withDouble:(double)rh;
- (BOOL)intersectsWithDouble:(double)rx
                  withDouble:(double)ry
                  withDouble:(double)rw
                  withDouble:(double)rh;
- (id<PythagorasDPathIterator>)pathIteratorWithPythagorasDTransform:(id<PythagorasDTransform>)at;
- (double)height;
- (double)width;
- (double)x;
- (double)y;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasDAbstractEllipse_Iterator : NSObject < PythagorasDPathIterator > {
 @public
  double x_, y_, width_, height_;
  id<PythagorasDTransform> t_;
  int index_;
}

@property (nonatomic, assign) double x;
@property (nonatomic, assign) double y;
@property (nonatomic, assign) double width;
@property (nonatomic, assign) double height;
@property (nonatomic, retain) id<PythagorasDTransform> t;
@property (nonatomic, assign) int index;

- (id)initWithPythagorasDIEllipse:(id<PythagorasDIEllipse>)e
         withPythagorasDTransform:(id<PythagorasDTransform>)t;
- (int)windingRule;
- (BOOL)isDone;
- (void)next;
- (int)currentSegmentWithJavaLangDoubleArray:(IOSDoubleArray *)coords;
@end
