//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Ray2.java
//
//  Created by Thomas on 7/10/13.
//

@class PythagorasFVector;
@protocol PythagorasFIVector;
@protocol PythagorasFTransform;

#import "JreEmulation.h"
#import "pythagoras/f/IRay2.h"

@interface PythagorasFRay2 : NSObject < PythagorasFIRay2 > {
 @public
  PythagorasFVector *origin__;
  PythagorasFVector *direction__;
}

@property (nonatomic, strong) PythagorasFVector *origin_;
@property (nonatomic, strong) PythagorasFVector *direction_;

- (id)initWithPythagorasFVector:(PythagorasFVector *)origin
          withPythagorasFVector:(PythagorasFVector *)direction;
- (id)initWithPythagorasFRay2:(PythagorasFRay2 *)other;
- (id)init;
- (PythagorasFRay2 *)setWithPythagorasFIRay2:(id<PythagorasFIRay2>)other;
- (PythagorasFRay2 *)setWithPythagorasFIVector:(id<PythagorasFIVector>)origin
                        withPythagorasFIVector:(id<PythagorasFIVector>)direction;
- (PythagorasFRay2 *)transformLocalWithPythagorasFTransform:(id<PythagorasFTransform>)transform;
- (id<PythagorasFIVector>)origin;
- (id<PythagorasFIVector>)direction;
- (PythagorasFRay2 *)transformWithPythagorasFTransform:(id<PythagorasFTransform>)transform;
- (PythagorasFRay2 *)transformWithPythagorasFTransform:(id<PythagorasFTransform>)transform
                                   withPythagorasFRay2:(PythagorasFRay2 *)result;
- (BOOL)intersectsWithPythagorasFIVector:(id<PythagorasFIVector>)pt;
- (BOOL)getIntersectionWithPythagorasFIVector:(id<PythagorasFIVector>)start
                       withPythagorasFIVector:(id<PythagorasFIVector>)end
                        withPythagorasFVector:(PythagorasFVector *)result;
- (BOOL)getIntersectionWithPythagorasFIVector:(id<PythagorasFIVector>)start
                       withPythagorasFIVector:(id<PythagorasFIVector>)end
                                    withFloat:(float)radius
                        withPythagorasFVector:(PythagorasFVector *)result;
- (BOOL)getIntersectionWithPythagorasFIVector:(id<PythagorasFIVector>)center
                                    withFloat:(float)radius
                        withPythagorasFVector:(PythagorasFVector *)result;
- (PythagorasFVector *)getNearestPointWithPythagorasFIVector:(id<PythagorasFIVector>)point
                                       withPythagorasFVector:(PythagorasFVector *)result;
- (NSString *)description;
- (float)getIntersectionWithPythagorasFIVector:(id<PythagorasFIVector>)pt;
@end
