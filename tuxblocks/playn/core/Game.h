//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Game.java
//
//  Created by Thomas on 7/1/13.
//

#import "JreEmulation.h"

@protocol PlaynCoreGame < NSObject >
- (void)init__ OBJC_METHOD_FAMILY_NONE;
- (void)tickWithInt:(int)elapsed;
@end

@interface PlaynCoreGame_Default : NSObject < PlaynCoreGame > {
 @public
  int updateRate_;
  int nextUpdate_;
}

@property (nonatomic, assign) int updateRate;
@property (nonatomic, assign) int nextUpdate;

- (id)initWithInt:(int)updateRate;
- (void)updateWithInt:(int)delta;
- (void)paintWithFloat:(float)alpha;
- (void)tickWithInt:(int)elapsed;
- (void)init__ OBJC_METHOD_FAMILY_NONE;
@end
