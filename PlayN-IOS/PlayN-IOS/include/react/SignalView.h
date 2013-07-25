//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/SignalView.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !ReactSignalView_RESTRICT
#define ReactSignalView_INCLUDE_ALL 1
#endif
#undef ReactSignalView_RESTRICT

#if !defined (_ReactSignalView_) && (ReactSignalView_INCLUDE_ALL || ReactSignalView_INCLUDE)
#define _ReactSignalView_

@class ReactSlot;
@protocol ReactConnection;
@protocol ReactFunction;

@protocol ReactSignalView < NSObject, JavaObject >
- (id<ReactSignalView>)mapWithReactFunction:(id<ReactFunction>)func;
- (id<ReactConnection>)connectWithReactSlot:(ReactSlot *)slot;
- (void)disconnectWithReactSlot:(ReactSlot *)slot;
@end
#endif
