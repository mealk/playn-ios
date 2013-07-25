//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Transforms.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !PythagorasDTransforms_RESTRICT
#define PythagorasDTransforms_INCLUDE_ALL 1
#endif
#undef PythagorasDTransforms_RESTRICT

#if !defined (_PythagorasDTransforms_) && (PythagorasDTransforms_INCLUDE_ALL || PythagorasDTransforms_INCLUDE)
#define _PythagorasDTransforms_

@class PythagorasDAffineTransform;
@protocol PythagorasDIShape;
@protocol PythagorasDTransform;

@interface PythagorasDTransforms : NSObject {
}

+ (id<PythagorasDIShape>)createTransformedShapeWithPythagorasDTransform:(id<PythagorasDTransform>)t
                                                  withPythagorasDIShape:(id<PythagorasDIShape>)src;
+ (id)multiplyWithPythagorasDAffineTransform:(PythagorasDAffineTransform *)a
              withPythagorasDAffineTransform:(PythagorasDAffineTransform *)b
                                      withId:(id<PythagorasDTransform>)into;
+ (id)multiplyWithPythagorasDAffineTransform:(PythagorasDAffineTransform *)a
                                  withDouble:(double)m00
                                  withDouble:(double)m01
                                  withDouble:(double)m10
                                  withDouble:(double)m11
                                  withDouble:(double)tx
                                  withDouble:(double)ty
                                      withId:(id<PythagorasDTransform>)into;
+ (id)multiplyWithDouble:(double)m00
              withDouble:(double)m01
              withDouble:(double)m10
              withDouble:(double)m11
              withDouble:(double)tx
              withDouble:(double)ty
withPythagorasDAffineTransform:(PythagorasDAffineTransform *)b
                  withId:(id<PythagorasDTransform>)into;
+ (id)multiplyWithDouble:(double)am00
              withDouble:(double)am01
              withDouble:(double)am10
              withDouble:(double)am11
              withDouble:(double)atx
              withDouble:(double)aty
              withDouble:(double)bm00
              withDouble:(double)bm01
              withDouble:(double)bm10
              withDouble:(double)bm11
              withDouble:(double)btx
              withDouble:(double)bty
                  withId:(id<PythagorasDTransform>)into;
- (id)init;
@end
#endif
