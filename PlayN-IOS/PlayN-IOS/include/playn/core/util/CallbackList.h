//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/util/CallbackList.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangThrowable;
@protocol JavaUtilList;

#import "JreEmulation.h"
#import "playn/core/util/Callback.h"

@interface PlaynCoreUtilCallbackList : NSObject < PlaynCoreUtilCallback > {
 @public
  id<JavaUtilList> callbacks_;
}

@property (nonatomic, strong) id<JavaUtilList> callbacks;

+ (PlaynCoreUtilCallbackList *)createWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (PlaynCoreUtilCallbackList *)addWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (void)removeWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (void)onSuccessWithId:(id)result;
- (void)onFailureWithJavaLangThrowable:(JavaLangThrowable *)cause;
- (void)checkState;
- (id)init;
@end
