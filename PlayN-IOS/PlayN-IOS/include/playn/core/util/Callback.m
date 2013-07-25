//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/Callback.java
//
//  Created by Thomas on 7/25/13.
//

#include "java/lang/Throwable.h"
#include "playn/core/util/Callback.h"

@implementation PlaynCoreUtilCallback_Chain

@synthesize onFailure_ = onFailure__;

- (id)initWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)onFailure {
  if ((self = [super init])) {
    self.onFailure_ = onFailure;
  }
  return self;
}

- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause {
  [((id<PlaynCoreUtilCallback>) nil_chk(onFailure__)) onFailureWithJavaLangThrowable:cause];
}

- (void)onSuccessWithId:(id)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PlaynCoreUtilCallback_Chain *typedCopy = (PlaynCoreUtilCallback_Chain *) copy;
  typedCopy.onFailure_ = onFailure__;
}

@end
