//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/Clock.java
//
//  Created by Thomas on 7/1/13.
//

#import "JreEmulation.h"

@protocol PlaynCoreUtilClock < NSObject >
- (float)time;
- (float)dt;
- (float)alpha;
@end

@interface PlaynCoreUtilClock_Source : NSObject < PlaynCoreUtilClock > {
 @public
  int updateRate_;
  int elapsed_;
  float current_, paintDelta_, alpha__;
}

@property (nonatomic, assign) int updateRate;
@property (nonatomic, assign) int elapsed;
@property (nonatomic, assign) float current;
@property (nonatomic, assign) float paintDelta;
@property (nonatomic, assign) float alpha_;

- (id)initWithInt:(int)updateRate;
- (float)time;
- (float)dt;
- (float)alpha;
- (void)updateWithInt:(int)delta;
- (void)paintWithFloat:(float)alpha;
@end
