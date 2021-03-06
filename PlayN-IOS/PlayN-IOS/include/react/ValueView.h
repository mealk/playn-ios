//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/ValueView.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !ReactValueView_RESTRICT
#define ReactValueView_INCLUDE_ALL 1
#endif
#undef ReactValueView_RESTRICT

#if !defined (_ReactValueView_) && (ReactValueView_INCLUDE_ALL || ReactValueView_INCLUDE)
#define _ReactValueView_

@class ReactValueView_Listener;
@protocol ReactConnection;
@protocol ReactFunction;

@protocol ReactValueView < NSObject, JavaObject >
- (id)get;
- (id<ReactValueView>)mapWithReactFunction:(id<ReactFunction>)func;
- (id<ReactConnection>)connectWithReactValueView_Listener:(ReactValueView_Listener *)listener;
- (id<ReactConnection>)connectNotifyWithReactValueView_Listener:(ReactValueView_Listener *)listener;
- (void)disconnectWithReactValueView_Listener:(ReactValueView_Listener *)listener;
@end
#endif

#if !defined (_ReactValueView_Listener_) && (ReactValueView_INCLUDE_ALL || ReactValueView_Listener_INCLUDE)
#define _ReactValueView_Listener_

#define ReactReactor_RESTRICT 1
#define ReactReactor_RListener_INCLUDE 1
#include "react/Reactor.h"

@interface ReactValueView_Listener : ReactReactor_RListener {
}

- (void)onChangeWithId:(id)value
                withId:(id)oldValue;
- (id)init;
@end
#endif
