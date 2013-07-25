//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Events.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/StringBuilder.h"
#include "playn/core/Events.h"
#include "playn/core/Layer.h"
#include "pythagoras/f/Point.h"

@implementation PlaynCoreEvents

static PythagorasFPoint * PlaynCoreEvents_scratchPoint_;

+ (PythagorasFPoint *)scratchPoint {
  return PlaynCoreEvents_scratchPoint_;
}

+ (void)setScratchPoint:(PythagorasFPoint *)scratchPoint {
  PlaynCoreEvents_scratchPoint_ = scratchPoint;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [PlaynCoreEvents class]) {
    PlaynCoreEvents_scratchPoint_ = [[PythagorasFPoint alloc] init];
  }
}

@end
@implementation PlaynCoreEvents_Flags_Impl

@synthesize preventDefault = preventDefault_;
@synthesize stopped = stopped_;

- (BOOL)getPreventDefault {
  return preventDefault_;
}

- (void)setPreventDefaultWithBOOL:(BOOL)preventDefault {
  self.preventDefault = preventDefault;
}

- (BOOL)getPropagationStopped {
  return stopped_;
}

- (void)setPropagationStoppedWithBOOL:(BOOL)stopped {
  self.stopped = stopped;
}

- (NSString *)description {
  return preventDefault_ ? @"preventDefault" : @"normal";
}

- (id)init {
  return [super init];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreEvents_Flags_Impl *typedCopy = (PlaynCoreEvents_Flags_Impl *) copy;
  typedCopy.preventDefault = preventDefault_;
  typedCopy.stopped = stopped_;
}

@end
@implementation PlaynCoreEvents_Input_Impl

@synthesize flags_ = flags__;
@synthesize time_ = time__;

- (PlaynCoreEvents_Input_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit {
  return self;
}

- (double)time {
  return time__;
}

- (id<PlaynCoreEvents_Flags>)flags {
  return flags__;
}

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time {
  if ((self = [super init])) {
    self.flags_ = flags;
    self.time_ = time;
  }
  return self;
}

- (NSString *)name {
  return @"Events.Input";
}

- (NSString *)description {
  JavaLangStringBuilder *builder = [((JavaLangStringBuilder *) [[JavaLangStringBuilder alloc] initWithNSString:[self name]]) appendWithUnichar:'['];
  [self addFieldsWithJavaLangStringBuilder:builder];
  return [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(builder)) appendWithUnichar:']'])) description];
}

- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder {
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(builder)) appendWithNSString:@"time="])) appendWithDouble:time__])) appendWithNSString:@", flags="])) appendWithId:flags__];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreEvents_Input_Impl *typedCopy = (PlaynCoreEvents_Input_Impl *) copy;
  typedCopy.flags_ = flags__;
  typedCopy.time_ = time__;
}

@end
@implementation PlaynCoreEvents_Position_Impl

@synthesize hit_ = hit__;
@synthesize x_ = x__;
@synthesize y_ = y__;
@synthesize localX_ = localX__;
@synthesize localY_ = localY__;

- (PlaynCoreEvents_Input_Impl *)localizeWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (float)x {
  return x__;
}

- (float)y {
  return y__;
}

- (float)localX {
  return localX__;
}

- (float)localY {
  return localY__;
}

- (id<PlaynCoreLayer>)hit {
  return hit__;
}

- (id)initWithPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                         withDouble:(double)time
                          withFloat:(float)x
                          withFloat:(float)y {
  return [self initPlaynCoreEvents_Position_ImplWithPlaynCoreLayer:nil withPlaynCoreEvents_Flags:flags withDouble:time withFloat:x withFloat:y];
}

- (id)initPlaynCoreEvents_Position_ImplWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
                                withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                                               withDouble:(double)time
                                                withFloat:(float)x
                                                withFloat:(float)y {
  if ((self = [super initWithPlaynCoreEvents_Flags:flags withDouble:time])) {
    self.hit_ = hit;
    self.x_ = x;
    self.y_ = y;
    if (hit == nil) {
      self.localX_ = x;
      self.localY_ = y;
    }
    else {
      (void) [PlaynCoreLayer_Util screenToLayerWithPlaynCoreLayer:hit withPythagorasFIPoint:[((PythagorasFPoint *) nil_chk([PlaynCoreEvents scratchPoint])) setWithFloat:x withFloat:y] withPythagorasFPoint:[PlaynCoreEvents scratchPoint]];
      self.localX_ = ((PythagorasFPoint *) nil_chk([PlaynCoreEvents scratchPoint])).x_;
      self.localY_ = ((PythagorasFPoint *) nil_chk([PlaynCoreEvents scratchPoint])).y_;
    }
  }
  return self;
}

- (id)initWithPlaynCoreLayer:(id<PlaynCoreLayer>)hit
   withPlaynCoreEvents_Flags:(id<PlaynCoreEvents_Flags>)flags
                  withDouble:(double)time
                   withFloat:(float)x
                   withFloat:(float)y {
  return [self initPlaynCoreEvents_Position_ImplWithPlaynCoreLayer:hit withPlaynCoreEvents_Flags:flags withDouble:time withFloat:x withFloat:y];
}

- (NSString *)name {
  return @"Events.Position";
}

- (void)addFieldsWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder {
  [super addFieldsWithJavaLangStringBuilder:builder];
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(builder)) appendWithNSString:@", x="])) appendWithFloat:x__])) appendWithNSString:@", y="])) appendWithFloat:y__])) appendWithNSString:@", hit="])) appendWithId:hit__];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreEvents_Position_Impl *typedCopy = (PlaynCoreEvents_Position_Impl *) copy;
  typedCopy.hit_ = hit__;
  typedCopy.x_ = x__;
  typedCopy.y_ = y__;
  typedCopy.localX_ = localX__;
  typedCopy.localY_ = localY__;
}

@end
