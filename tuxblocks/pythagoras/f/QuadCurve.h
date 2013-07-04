//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/QuadCurve.java
//
//  Created by Thomas on 7/1/13.
//

@class IOSFloatArray;
@class IOSObjectArray;
@protocol PythagorasFIPoint;
@protocol PythagorasFIQuadCurve;

#import "JreEmulation.h"
#import "AbstractQuadCurve.h"
#import "java/io/Serializable.h"

@interface PythagorasFQuadCurve : PythagorasFAbstractQuadCurve < JavaIoSerializable > {
 @public
  float x1__;
  float y1__;
  float ctrlx_;
  float ctrly_;
  float x2__;
  float y2__;
}

@property (nonatomic, assign) float x1_;
@property (nonatomic, assign) float y1_;
@property (nonatomic, assign) float ctrlx;
@property (nonatomic, assign) float ctrly;
@property (nonatomic, assign) float x2_;
@property (nonatomic, assign) float y2_;

- (id)init;
- (id)initWithFloat:(float)x1
          withFloat:(float)y1
          withFloat:(float)ctrlx
          withFloat:(float)ctrly
          withFloat:(float)x2
          withFloat:(float)y2;
- (void)setCurveWithFloat:(float)x1
                withFloat:(float)y1
                withFloat:(float)ctrlx
                withFloat:(float)ctrly
                withFloat:(float)x2
                withFloat:(float)y2;
- (void)setCurveWithPythagorasFIPoint:(id<PythagorasFIPoint>)p1
                withPythagorasFIPoint:(id<PythagorasFIPoint>)cp
                withPythagorasFIPoint:(id<PythagorasFIPoint>)p2;
- (void)setCurveWithJavaLangFloatArray:(IOSFloatArray *)coords
                               withInt:(int)offset;
- (void)setCurveWithPythagorasFIPointArray:(IOSObjectArray *)points
                                   withInt:(int)offset;
- (void)setCurveWithPythagorasFIQuadCurve:(id<PythagorasFIQuadCurve>)curve;
- (float)x1;
- (float)y1;
- (float)ctrlX;
- (float)ctrlY;
- (float)x2;
- (float)y2;
@end
