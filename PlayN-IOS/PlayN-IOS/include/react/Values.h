//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/Values.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !ReactValues_RESTRICT
#define ReactValues_INCLUDE_ALL 1
#endif
#undef ReactValues_RESTRICT

#if !defined (_ReactValues_) && (ReactValues_INCLUDE_ALL || ReactValues_INCLUDE)
#define _ReactValues_

@protocol JavaLangIterable;
@protocol ReactFunction;
@protocol ReactSignalView;
@protocol ReactValueView;

@interface ReactValues : NSObject {
}

+ (id<ReactFunction>)COMPUTE_AND;
+ (id<ReactFunction>)COMPUTE_OR;
+ (id<ReactValueView>)togglerWithReactSignalView:(id<ReactSignalView>)signal
                                        withBOOL:(BOOL)initial;
+ (id<ReactValueView>)not__WithReactValueView:(id<ReactValueView>)value;
+ (id<ReactValueView>)andWithReactValueView:(id<ReactValueView>)one
                         withReactValueView:(id<ReactValueView>)two;
+ (id<ReactValueView>)andWithReactValueViewArray:(IOSObjectArray *)values;
+ (id<ReactValueView>)andWithJavaLangIterable:(id<JavaLangIterable>)values;
+ (id<ReactValueView>)orWithReactValueView:(id<ReactValueView>)one
                        withReactValueView:(id<ReactValueView>)two;
+ (id<ReactValueView>)orWithReactValueViewArray:(IOSObjectArray *)values;
+ (id<ReactValueView>)orWithJavaLangIterable:(id<JavaLangIterable>)values;
+ (id<ReactValueView>)asValueWithReactSignalView:(id<ReactSignalView>)signal
                                          withId:(id)initial;
+ (id<ReactValueView>)aggValueWithJavaLangIterable:(id<JavaLangIterable>)values
                                 withReactFunction:(id<ReactFunction>)aggOp;
- (id)init;
@end
#endif

#if !defined (_ReactValues_$1_) && (ReactValues_INCLUDE_ALL || ReactValues_$1_INCLUDE)
#define _ReactValues_$1_

@class JavaLangBoolean;
@protocol ReactConnection;
@protocol ReactSignalView;

#define ReactMappedValue_RESTRICT 1
#define ReactMappedValue_INCLUDE 1
#include "react/MappedValue.h"

@interface ReactValues_$1 : ReactMappedValue {
 @public
  BOOL _current_;
  id<ReactSignalView> val$signal_;
  BOOL val$initial_;
}

@property (nonatomic, assign) BOOL _current;
@property (nonatomic, strong) id<ReactSignalView> val$signal;
@property (nonatomic, assign) BOOL val$initial;

- (JavaLangBoolean *)get;
- (id<ReactConnection>)connect;
- (id)initWithReactSignalView:(id<ReactSignalView>)capture$0
                     withBOOL:(BOOL)capture$1;
@end
#endif

#if !defined (_ReactValues_$1_$1_) && (ReactValues_INCLUDE_ALL || ReactValues_$1_$1_INCLUDE)
#define _ReactValues_$1_$1_

@class ReactValues_$1;

#define ReactUnitSlot_RESTRICT 1
#define ReactUnitSlot_INCLUDE 1
#include "react/UnitSlot.h"

@interface ReactValues_$1_$1 : ReactUnitSlot {
 @public
  ReactValues_$1 *this$0_;
}

@property (nonatomic, strong) ReactValues_$1 *this$0;

- (void)onEmit;
- (id)initWithReactValues_$1:(ReactValues_$1 *)outer$;
@end
#endif

#if !defined (_ReactValues_$2_) && (ReactValues_INCLUDE_ALL || ReactValues_$2_INCLUDE)
#define _ReactValues_$2_

@protocol ReactConnection;
@protocol ReactSignalView;

#define ReactMappedValue_RESTRICT 1
#define ReactMappedValue_INCLUDE 1
#include "react/MappedValue.h"

@interface ReactValues_$2 : ReactMappedValue {
 @public
  id _value_;
  id<ReactSignalView> val$signal_;
  id val$initial_;
}

@property (nonatomic, strong) id _value;
@property (nonatomic, strong) id<ReactSignalView> val$signal;
@property (nonatomic, strong) id val$initial;

- (id)get;
- (id)updateLocalWithId:(id)value;
- (id<ReactConnection>)connect;
- (id)initWithReactSignalView:(id<ReactSignalView>)capture$0
                       withId:(id)capture$1;
@end
#endif

#if !defined (_ReactValues_$2_$1_) && (ReactValues_INCLUDE_ALL || ReactValues_$2_$1_INCLUDE)
#define _ReactValues_$2_$1_

@class ReactValues_$2;

#define ReactSlot_RESTRICT 1
#define ReactSlot_INCLUDE 1
#include "react/Slot.h"

@interface ReactValues_$2_$1 : ReactSlot {
 @public
  ReactValues_$2 *this$0_;
}

@property (nonatomic, strong) ReactValues_$2 *this$0;

- (void)onEmitWithId:(id)value;
- (id)initWithReactValues_$2:(ReactValues_$2 *)outer$;
@end
#endif

#if !defined (_ReactValues_$3_) && (ReactValues_INCLUDE_ALL || ReactValues_$3_INCLUDE)
#define _ReactValues_$3_

@class JavaLangBoolean;
@class ReactUnitSlot;
@protocol JavaLangIterable;
@protocol ReactConnection;
@protocol ReactFunction;

#define ReactMappedValue_RESTRICT 1
#define ReactMappedValue_INCLUDE 1
#include "react/MappedValue.h"

@interface ReactValues_$3 : ReactMappedValue {
 @public
  ReactUnitSlot *_trigger_;
  id<ReactFunction> val$aggOp_;
  id<JavaLangIterable> val$values_;
}

@property (nonatomic, strong) ReactUnitSlot *_trigger;
@property (nonatomic, strong) id<ReactFunction> val$aggOp;
@property (nonatomic, strong) id<JavaLangIterable> val$values;

- (JavaLangBoolean *)get;
- (id<ReactConnection>)connect;
- (id)initWithReactFunction:(id<ReactFunction>)capture$0
       withJavaLangIterable:(id<JavaLangIterable>)capture$1;
@end
#endif

#if !defined (_ReactValues_$3_$1_) && (ReactValues_INCLUDE_ALL || ReactValues_$3_$1_INCLUDE)
#define _ReactValues_$3_$1_

@protocol JavaUtilList;

#define ReactConnection_RESTRICT 1
#define ReactConnection_INCLUDE 1
#include "react/Connection.h"

@interface ReactValues_$3_$1 : NSObject < ReactConnection > {
 @public
  id<JavaUtilList> val$conns_;
}

@property (nonatomic, strong) id<JavaUtilList> val$conns;

- (void)disconnect;
- (id<ReactConnection>)once;
- (id)initWithJavaUtilList:(id<JavaUtilList>)capture$0;
@end
#endif

#if !defined (_ReactValues_$3_$2_) && (ReactValues_INCLUDE_ALL || ReactValues_$3_$2_INCLUDE)
#define _ReactValues_$3_$2_

@class ReactValues_$3;

#define ReactUnitSlot_RESTRICT 1
#define ReactUnitSlot_INCLUDE 1
#include "react/UnitSlot.h"

@interface ReactValues_$3_$2 : ReactUnitSlot {
 @public
  ReactValues_$3 *this$0_;
  BOOL _current_;
}

@property (nonatomic, strong) ReactValues_$3 *this$0;
@property (nonatomic, assign) BOOL _current;

- (void)onEmit;
- (id)initWithReactValues_$3:(ReactValues_$3 *)outer$;
@end
#endif

#if !defined (_ReactValues_$4_) && (ReactValues_INCLUDE_ALL || ReactValues_$4_INCLUDE)
#define _ReactValues_$4_

@class JavaLangBoolean;
@protocol JavaLangIterable;

#define ReactFunction_RESTRICT 1
#define ReactFunction_INCLUDE 1
#include "react/Function.h"

@interface ReactValues_$4 : NSObject < ReactFunction > {
}

- (JavaLangBoolean *)applyWithId:(id<JavaLangIterable>)values;
- (id)init;
@end
#endif

#if !defined (_ReactValues_$5_) && (ReactValues_INCLUDE_ALL || ReactValues_$5_INCLUDE)
#define _ReactValues_$5_

@class JavaLangBoolean;
@protocol JavaLangIterable;

#define ReactFunction_RESTRICT 1
#define ReactFunction_INCLUDE 1
#include "react/Function.h"

@interface ReactValues_$5 : NSObject < ReactFunction > {
}

- (JavaLangBoolean *)applyWithId:(id<JavaLangIterable>)values;
- (id)init;
@end
#endif
