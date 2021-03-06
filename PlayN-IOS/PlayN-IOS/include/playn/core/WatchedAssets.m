//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/WatchedAssets.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Throwable.h"
#include "playn/core/Assets.h"
#include "playn/core/Image.h"
#include "playn/core/Sound.h"
#include "playn/core/WatchedAssets.h"
#include "playn/core/util/Callback.h"

@implementation PlaynCoreWatchedAssets

@synthesize delegate = delegate_;
@synthesize totalRequestsCount = totalRequestsCount_;
@synthesize successCount = successCount_;
@synthesize errorsCount = errorsCount_;
@synthesize callback = callback_;

- (id)initWithPlaynCoreAssets:(id<PlaynCoreAssets>)delegate {
  if ((self = [super init])) {
    totalRequestsCount_ = 0;
    successCount_ = 0;
    errorsCount_ = 0;
    callback_ = [[PlaynCoreWatchedAssets_$1 alloc] initWithPlaynCoreWatchedAssets:self];
    self.delegate = delegate;
  }
  return self;
}

- (id<PlaynCoreImage>)getImageSyncWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getImageSyncWithNSString:path];
  [((id<PlaynCoreImage>) nil_chk(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreImage>)getImageWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getImageWithNSString:path];
  [((id<PlaynCoreImage>) nil_chk(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getRemoteImageWithNSString:url];
  [((id<PlaynCoreImage>) nil_chk(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreImage>)getRemoteImageWithNSString:(NSString *)url
                                       withFloat:(float)width
                                       withFloat:(float)height {
  [self incrementRequestCount];
  id<PlaynCoreImage> image = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getRemoteImageWithNSString:url withFloat:width withFloat:height];
  [((id<PlaynCoreImage>) nil_chk(image)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return image;
}

- (id<PlaynCoreSound>)getSoundWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreSound> sound = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getSoundWithNSString:path];
  [((id<PlaynCoreSound>) nil_chk(sound)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return sound;
}

- (id<PlaynCoreSound>)getMusicWithNSString:(NSString *)path {
  [self incrementRequestCount];
  id<PlaynCoreSound> sound = [((id<PlaynCoreAssets>) nil_chk(delegate_)) getMusicWithNSString:path];
  [((id<PlaynCoreSound>) nil_chk(sound)) addCallbackWithPlaynCoreUtilCallback:callback_];
  return sound;
}

- (NSString *)getTextSyncWithNSString:(NSString *)path {
  return [((id<PlaynCoreAssets>) nil_chk(delegate_)) getTextSyncWithNSString:path];
}

- (void)getTextWithNSString:(NSString *)path
  withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback {
  [((id<PlaynCoreAssets>) nil_chk(delegate_)) getTextWithNSString:path withPlaynCoreUtilCallback:callback];
}

- (BOOL)isDone {
  return (self.totalRequestsCount == self.errorsCount + self.successCount);
}

- (int)getPendingRequestCount {
  return self.totalRequestsCount - self.errorsCount - self.successCount;
}

- (void)incrementRequestCount {
  ++totalRequestsCount_;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreWatchedAssets *typedCopy = (PlaynCoreWatchedAssets *) copy;
  typedCopy.delegate = delegate_;
  typedCopy.totalRequestsCount = totalRequestsCount_;
  typedCopy.successCount = successCount_;
  typedCopy.errorsCount = errorsCount_;
  typedCopy.callback = callback_;
}

@end
@implementation PlaynCoreWatchedAssets_$1

@synthesize this$0 = this$0_;

- (void)onSuccessWithId:(id)resource {
  ++this$0_.successCount;
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)e {
  ++this$0_.errorsCount;
}

- (id)initWithPlaynCoreWatchedAssets:(PlaynCoreWatchedAssets *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreWatchedAssets_$1 *typedCopy = (PlaynCoreWatchedAssets_$1 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
