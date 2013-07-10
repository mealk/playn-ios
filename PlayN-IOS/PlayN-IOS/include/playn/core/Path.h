//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Path.java
//
//  Created by Thomas on 7/10/13.
//

#import "JreEmulation.h"

@protocol PlaynCorePath < NSObject >
- (void)reset;
- (void)close;
- (void)moveToWithFloat:(float)x
              withFloat:(float)y;
- (void)lineToWithFloat:(float)x
              withFloat:(float)y;
- (void)quadraticCurveToWithFloat:(float)cpx
                        withFloat:(float)cpy
                        withFloat:(float)x
                        withFloat:(float)y;
- (void)bezierToWithFloat:(float)c1x
                withFloat:(float)c1y
                withFloat:(float)c2x
                withFloat:(float)c2y
                withFloat:(float)x
                withFloat:(float)y;
@end
