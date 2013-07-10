//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/AbstractEllipse.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSFloatArray;
@class IOSObjectArray;
@class PythagorasFEllipse;
@protocol PythagorasFTransform;

#import "JreEmulation.h"
#import "pythagoras/f/IEllipse.h"
#import "pythagoras/f/PathIterator.h"
#import "pythagoras/f/RectangularShape.h"

@interface PythagorasFAbstractEllipse : PythagorasFRectangularShape < PythagorasFIEllipse > {
}

+ (float)U;
+ (IOSObjectArray *)POINTS;
- (PythagorasFEllipse *)clone;
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
- (id<PythagorasFPathIterator>)pathIteratorWithPythagorasFTransform:(id<PythagorasFTransform>)at;
- (float)height;
- (float)width;
- (float)x;
- (float)y;
- (id)init;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface PythagorasFAbstractEllipse_Iterator : NSObject < PythagorasFPathIterator > {
 @public
  float x_, y_, width_, height_;
  id<PythagorasFTransform> t_;
  int index_;
}

@property (nonatomic, assign) float x;
@property (nonatomic, assign) float y;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;
@property (nonatomic, strong) id<PythagorasFTransform> t;
@property (nonatomic, assign) int index;

- (id)initWithPythagorasFIEllipse:(id<PythagorasFIEllipse>)e
         withPythagorasFTransform:(id<PythagorasFTransform>)t;
- (int)windingRule;
- (BOOL)isDone;
- (void)next;
- (int)currentSegmentWithJavaLangFloatArray:(IOSFloatArray *)coords;
@end
