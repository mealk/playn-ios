//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/UnitSlot.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !ReactUnitSlot_RESTRICT
#define ReactUnitSlot_INCLUDE_ALL 1
#endif
#undef ReactUnitSlot_RESTRICT
#if ReactUnitSlot_$2_INCLUDE
#define ReactUnitSlot_INCLUDE 1
#endif
#if ReactUnitSlot_$1_INCLUDE
#define ReactUnitSlot_INCLUDE 1
#endif

#if !defined (_ReactUnitSlot_) && (ReactUnitSlot_INCLUDE_ALL || ReactUnitSlot_INCLUDE)
#define _ReactUnitSlot_

#define ReactSlot_RESTRICT 1
#define ReactSlot_INCLUDE 1
#include "react/Slot.h"

#define JavaLangRunnable_RESTRICT 1
#define JavaLangRunnable_INCLUDE 1
#include "java/lang/Runnable.h"

@interface ReactUnitSlot : ReactSlot < JavaLangRunnable > {
}

+ (ReactUnitSlot *)toSlotWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;
- (void)onEmit;
- (ReactUnitSlot *)andThenWithReactUnitSlot:(ReactUnitSlot *)after;
- (void)onEmitWithId:(id)event;
- (void)run;
- (id)init;
@end
#endif

#if !defined (_ReactUnitSlot_$1_) && (ReactUnitSlot_INCLUDE_ALL || ReactUnitSlot_$1_INCLUDE)
#define _ReactUnitSlot_$1_

@protocol JavaLangRunnable;

@interface ReactUnitSlot_$1 : ReactUnitSlot {
 @public
  id<JavaLangRunnable> val$runnable_;
}

@property (nonatomic, strong) id<JavaLangRunnable> val$runnable;

- (void)onEmit;
- (id)initWithJavaLangRunnable:(id<JavaLangRunnable>)capture$0;
@end
#endif

#if !defined (_ReactUnitSlot_$2_) && (ReactUnitSlot_INCLUDE_ALL || ReactUnitSlot_$2_INCLUDE)
#define _ReactUnitSlot_$2_

@interface ReactUnitSlot_$2 : ReactUnitSlot {
 @public
  ReactUnitSlot *val$before_;
  ReactUnitSlot *val$after_;
}

@property (nonatomic, strong) ReactUnitSlot *val$before;
@property (nonatomic, strong) ReactUnitSlot *val$after;

- (void)onEmit;
- (id)initWithReactUnitSlot:(ReactUnitSlot *)capture$0
          withReactUnitSlot:(ReactUnitSlot *)capture$1;
@end
#endif
