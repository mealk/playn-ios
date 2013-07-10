//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/Reactor.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/NullPointerException.h"
#import "react/Cons.h"
#import "react/Reactor.h"

@implementation ReactReactor

static ReactCons * ReactReactor_DISPATCHING_;

@synthesize _listeners = _listeners_;
@synthesize _pendingRuns = _pendingRuns_;

+ (ReactCons *)DISPATCHING {
  return ReactReactor_DISPATCHING_;
}

- (BOOL)hasConnections {
  return _listeners_ != nil;
}

- (ReactCons *)addConnectionWithId:(ReactReactor_RListener *)listener {
  @synchronized(self) {
    {
      if (listener == nil) @throw [[JavaLangNullPointerException alloc] initWithNSString:@"Null listener"];
      return [self addConsWithReactCons:[[ReactCons alloc] initWithReactReactor:self withId:listener]];
    }
  }
}

- (ReactCons *)addConsWithReactCons:(ReactCons *)cons {
  @synchronized(self) {
    {
      if ([self isDispatching]) {
        _pendingRuns_ = [ReactReactor insertWithReactReactor_Runs:_pendingRuns_ withReactReactor_Runs:[[ReactReactor_$1 alloc] initWithReactReactor:self withReactCons:cons]];
      }
      else {
        _listeners_ = ((ReactCons *) [ReactCons insertWithReactCons:_listeners_ withReactCons:cons]);
        [self connectionAdded];
      }
      return cons;
    }
  }
}

- (ReactCons *)prepareNotify {
  @synchronized(self) {
    {
      if (_listeners_ == ReactReactor_DISPATCHING_) @throw [[JavaLangIllegalStateException alloc] initWithNSString:@"Initiated notify while notifying"];
      ReactCons *lners = _listeners_;
      ReactCons *sentinel = (ReactCons *) ReactReactor_DISPATCHING_;
      _listeners_ = sentinel;
      return lners;
    }
  }
}

- (void)finishNotifyWithReactCons:(ReactCons *)lners {
  @synchronized(self) {
    {
      _listeners_ = lners;
      for (; _pendingRuns_ != nil; _pendingRuns_ = ((ReactReactor_Runs *) NIL_CHK(_pendingRuns_)).next) {
        [((ReactReactor_Runs *) NIL_CHK(_pendingRuns_)) run];
      }
    }
  }
}

- (void)disconnectWithReactCons:(ReactCons *)cons {
  @synchronized(self) {
    {
      if ([self isDispatching]) {
        _pendingRuns_ = [ReactReactor insertWithReactReactor_Runs:_pendingRuns_ withReactReactor_Runs:[[ReactReactor_$2 alloc] initWithReactReactor:self withReactCons:cons]];
      }
      else {
        _listeners_ = ((ReactCons *) [ReactCons removeWithReactCons:_listeners_ withReactCons:cons]);
        [self connectionRemoved];
      }
    }
  }
}

- (void)removeConnectionWithId:(id)listener {
  @synchronized(self) {
    {
      if ([self isDispatching]) {
        _pendingRuns_ = [ReactReactor insertWithReactReactor_Runs:_pendingRuns_ withReactReactor_Runs:[[ReactReactor_$3 alloc] initWithReactReactor:self withId:listener]];
      }
      else {
        _listeners_ = ((ReactCons *) [ReactCons removeAllWithReactCons:_listeners_ withId:listener]);
        [self connectionRemoved];
      }
    }
  }
}

+ (BOOL)areEqualWithId:(id)o1
                withId:(id)o2 {
  return (o1 == o2 || (o1 != nil && [NIL_CHK(o1) isEqual:o2]));
}

- (void)checkMutate {
}

- (void)connectionAdded {
}

- (void)connectionRemoved {
}

+ (ReactReactor_Runs *)insertWithReactReactor_Runs:(ReactReactor_Runs *)head
                             withReactReactor_Runs:(ReactReactor_Runs *)action {
  if (head == nil) return action;
  ((ReactReactor_Runs *) NIL_CHK(head)).next = [ReactReactor insertWithReactReactor_Runs:((ReactReactor_Runs *) NIL_CHK(head)).next withReactReactor_Runs:action];
  return head;
}

- (BOOL)isDispatching {
  return _listeners_ == ReactReactor_DISPATCHING_;
}

- (id)init {
  return [super init];
}

+ (void)initialize {
  if (self == [ReactReactor class]) {
    ReactReactor_DISPATCHING_ = [[ReactCons alloc] initWithReactReactor:nil withId:nil];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactReactor *typedCopy = (ReactReactor *) copy;
  typedCopy._listeners = _listeners_;
  typedCopy._pendingRuns = _pendingRuns_;
}

@end
@implementation ReactReactor_RListener

- (int)priority {
  return 0;
}

- (id)init {
  return [super init];
}

@end
@implementation ReactReactor_Runs

@synthesize next = next_;

- (void)run {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (id)init {
  return [super init];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactReactor_Runs *typedCopy = (ReactReactor_Runs *) copy;
  typedCopy.next = next_;
}

@end
@implementation ReactReactor_$1

@synthesize this$0 = this$0_;
@synthesize val$cons = val$cons_;

- (void)run {
  this$0_._listeners = ((ReactCons *) [ReactCons insertWithReactCons:this$0_._listeners withReactCons:val$cons_]);
  [this$0_ connectionAdded];
}

- (id)initWithReactReactor:(ReactReactor *)outer$
             withReactCons:(ReactCons *)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$cons_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactReactor_$1 *typedCopy = (ReactReactor_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$cons = val$cons_;
}

@end
@implementation ReactReactor_$2

@synthesize this$0 = this$0_;
@synthesize val$cons = val$cons_;

- (void)run {
  this$0_._listeners = ((ReactCons *) [ReactCons removeWithReactCons:this$0_._listeners withReactCons:val$cons_]);
  [this$0_ connectionRemoved];
}

- (id)initWithReactReactor:(ReactReactor *)outer$
             withReactCons:(ReactCons *)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$cons_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactReactor_$2 *typedCopy = (ReactReactor_$2 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$cons = val$cons_;
}

@end
@implementation ReactReactor_$3

@synthesize this$0 = this$0_;
@synthesize val$listener = val$listener_;

- (void)run {
  this$0_._listeners = ((ReactCons *) [ReactCons removeAllWithReactCons:this$0_._listeners withId:val$listener_]);
  [this$0_ connectionRemoved];
}

- (id)initWithReactReactor:(ReactReactor *)outer$
                    withId:(id)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$listener_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ReactReactor_$3 *typedCopy = (ReactReactor_$3 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$listener = val$listener_;
}

@end