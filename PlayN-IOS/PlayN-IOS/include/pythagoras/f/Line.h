//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Line.java
//
//  Created by Thomas on 7/10/13.
//

@protocol PythagorasFIPoint;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "pythagoras/f/AbstractLine.h"

@interface PythagorasFLine : PythagorasFAbstractLine < JavaIoSerializable > {
 @public
  float x1__;
  float y1__;
  float x2__;
  float y2__;
}

@property (nonatomic, assign) float x1_;
@property (nonatomic, assign) float y1_;
@property (nonatomic, assign) float x2_;
@property (nonatomic, assign) float y2_;

- (id)init;
- (id)initWithFloat:(float)x1
          withFloat:(float)y1
          withFloat:(float)x2
          withFloat:(float)y2;
- (id)initWithPythagorasFIPoint:(id<PythagorasFIPoint>)p1
          withPythagorasFIPoint:(id<PythagorasFIPoint>)p2;
- (void)setLineWithFloat:(float)x1
               withFloat:(float)y1
               withFloat:(float)x2
               withFloat:(float)y2;
- (void)setLineWithPythagorasFIPoint:(id<PythagorasFIPoint>)p1
               withPythagorasFIPoint:(id<PythagorasFIPoint>)p2;
- (float)x1;
- (float)y1;
- (float)x2;
- (float)y2;
@end
