//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/IntersectPoint.java
//
//  Created by Thomas on 7/1/13.
//

#import "JreEmulation.h"

@interface PythagorasFIntersectPoint : NSObject {
 @public
  int begIndex1_;
  int endIndex1_;
  int rule1_;
  int ruleIndex1_;
  float param1_;
  int begIndex2_;
  int endIndex2_;
  int rule2_;
  int ruleIndex2_;
  float x__;
  float y__;
  float param2_;
}

@property (nonatomic, assign) int begIndex1;
@property (nonatomic, assign) int endIndex1;
@property (nonatomic, assign) int rule1;
@property (nonatomic, assign) int ruleIndex1;
@property (nonatomic, assign) float param1;
@property (nonatomic, assign) int begIndex2;
@property (nonatomic, assign) int endIndex2;
@property (nonatomic, assign) int rule2;
@property (nonatomic, assign) int ruleIndex2;
@property (nonatomic, assign) float x_;
@property (nonatomic, assign) float y_;
@property (nonatomic, assign) float param2;

- (id)initWithInt:(int)begIndex1
          withInt:(int)endIndex1
          withInt:(int)begIndex2
          withInt:(int)endIndex2
        withFloat:(float)x
        withFloat:(float)y;
- (id)initWithInt:(int)begIndex1
          withInt:(int)endIndex1
          withInt:(int)rule1
          withInt:(int)ruleIndex1
          withInt:(int)begIndex2
          withInt:(int)endIndex2
          withInt:(int)rule2
          withInt:(int)ruleIndex2
        withFloat:(float)x
        withFloat:(float)y
        withFloat:(float)param1
        withFloat:(float)param2;
- (int)begIndexWithBOOL:(BOOL)isCurrentArea;
- (int)endIndexWithBOOL:(BOOL)isCurrentArea;
- (int)ruleIndexWithBOOL:(BOOL)isCurrentArea;
- (float)paramWithBOOL:(BOOL)isCurrentArea;
- (int)ruleWithBOOL:(BOOL)isCurrentArea;
- (float)x;
- (float)y;
- (void)setBegIndex1WithInt:(int)begIndex;
- (void)setEndIndex1WithInt:(int)endIndex;
- (void)setBegIndex2WithInt:(int)begIndex;
- (void)setEndIndex2WithInt:(int)endIndex;
@end
