//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/PointerInput.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayUtilPointerInput_RESTRICT
#define TripleplayUtilPointerInput_INCLUDE_ALL 1
#endif
#undef TripleplayUtilPointerInput_RESTRICT

#if !defined (_TripleplayUtilPointerInput_) && (TripleplayUtilPointerInput_INCLUDE_ALL || TripleplayUtilPointerInput_INCLUDE)
#define _TripleplayUtilPointerInput_

@class TripleplayUtilInput_Region;
@protocol PlaynCorePointer_Listener;
@protocol TripleplayUtilInput_Registration;

#define TripleplayUtilInput_RESTRICT 1
#define TripleplayUtilInput_INCLUDE 1
#include "tripleplay/util/Input.h"

@interface TripleplayUtilPointerInput : TripleplayUtilInput {
 @public
  id<PlaynCorePointer_Listener> plistener_;
}

@property (nonatomic, strong) id<PlaynCorePointer_Listener> plistener;

- (id<TripleplayUtilInput_Registration>)register__WithTripleplayUtilInput_Region:(TripleplayUtilInput_Region *)region
                                                                          withId:(id<PlaynCorePointer_Listener>)listener;
- (id)init;
@end
#endif

#if !defined (_TripleplayUtilPointerInput_Action_) && (TripleplayUtilPointerInput_INCLUDE_ALL || TripleplayUtilPointerInput_Action_INCLUDE)
#define _TripleplayUtilPointerInput_Action_

@protocol PlaynCorePointer_Event;

#define PlaynCorePointer_RESTRICT 1
#define PlaynCorePointer_Adapter_INCLUDE 1
#include "playn/core/Pointer.h"

@interface TripleplayUtilPointerInput_Action : PlaynCorePointer_Adapter {
}

- (void)onTrigger;
- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (id)init;
@end
#endif

#if !defined (_TripleplayUtilPointerInput_PointerReactor_) && (TripleplayUtilPointerInput_INCLUDE_ALL || TripleplayUtilPointerInput_PointerReactor_INCLUDE)
#define _TripleplayUtilPointerInput_PointerReactor_

@class TripleplayUtilPointerInput;
@protocol PlaynCorePointer_Event;

#define TripleplayUtilInput_RESTRICT 1
#define TripleplayUtilInput_Reactor_INCLUDE 1
#include "tripleplay/util/Input.h"

#define PlaynCorePointer_RESTRICT 1
#define PlaynCorePointer_Listener_INCLUDE 1
#include "playn/core/Pointer.h"

@interface TripleplayUtilPointerInput_PointerReactor : TripleplayUtilInput_Reactor < PlaynCorePointer_Listener > {
 @public
  id<PlaynCorePointer_Listener> _active_;
}

@property (nonatomic, strong) id<PlaynCorePointer_Listener> _active;

- (void)onPointerStartWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerDragWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerEndWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (void)onPointerCancelWithPlaynCorePointer_Event:(id<PlaynCorePointer_Event>)event;
- (id)initWithTripleplayUtilPointerInput:(TripleplayUtilPointerInput *)outer$;
@end
#endif
