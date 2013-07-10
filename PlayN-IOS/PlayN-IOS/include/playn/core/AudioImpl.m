//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/AudioImpl.java
//
//  Created by Thomas on 7/10/13.
//

#import "java/lang/Throwable.h"
#import "playn/core/AbstractSound.h"
#import "playn/core/AudioImpl.h"
#import "playn/core/Platform.h"

@implementation PlaynCoreAudioImpl

@synthesize platform = platform_;

- (id)initWithPlaynCorePlatform:(id<PlaynCorePlatform>)platform {
  if ((self = [super init])) {
    self.platform = platform;
  }
  return self;
}

- (void)dispatchLoadedWithPlaynCoreAbstractSound:(PlaynCoreAbstractSound *)sound
                                          withId:(id)impl {
  [((id<PlaynCorePlatform>) NIL_CHK(platform_)) invokeLaterWithJavaLangRunnable:[[PlaynCoreAudioImpl_$1 alloc] initWithPlaynCoreAbstractSound:sound withId:impl]];
}

- (void)dispatchLoadErrorWithPlaynCoreAbstractSound:(PlaynCoreAbstractSound *)sound
                              withJavaLangThrowable:(JavaLangThrowable *)error {
  [((id<PlaynCorePlatform>) NIL_CHK(platform_)) invokeLaterWithJavaLangRunnable:[[PlaynCoreAudioImpl_$2 alloc] initWithPlaynCoreAbstractSound:sound withJavaLangThrowable:error]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreAudioImpl *typedCopy = (PlaynCoreAudioImpl *) copy;
  typedCopy.platform = platform_;
}

@end
@implementation PlaynCoreAudioImpl_$1

@synthesize val$sound = val$sound_;
@synthesize val$impl = val$impl_;

- (void)run {
  [((PlaynCoreAbstractSound *) NIL_CHK(val$sound_)) onLoadedWithId:val$impl_];
}

- (id)initWithPlaynCoreAbstractSound:(PlaynCoreAbstractSound *)capture$0
                              withId:(id)capture$1 {
  if ((self = [super init])) {
    val$sound_ = capture$0;
    val$impl_ = capture$1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreAudioImpl_$1 *typedCopy = (PlaynCoreAudioImpl_$1 *) copy;
  typedCopy.val$sound = val$sound_;
  typedCopy.val$impl = val$impl_;
}

@end
@implementation PlaynCoreAudioImpl_$2

@synthesize val$sound = val$sound_;
@synthesize val$error = val$error_;

- (void)run {
  [((PlaynCoreAbstractSound *) NIL_CHK(val$sound_)) onLoadErrorWithJavaLangThrowable:val$error_];
}

- (id)initWithPlaynCoreAbstractSound:(PlaynCoreAbstractSound *)capture$0
               withJavaLangThrowable:(JavaLangThrowable *)capture$1 {
  if ((self = [super init])) {
    val$sound_ = capture$0;
    val$error_ = capture$1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreAudioImpl_$2 *typedCopy = (PlaynCoreAudioImpl_$2 *) copy;
  typedCopy.val$sound = val$sound_;
  typedCopy.val$error = val$error_;
}

@end
