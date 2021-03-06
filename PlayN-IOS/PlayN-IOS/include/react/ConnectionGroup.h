//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: react/ConnectionGroup.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !ReactConnectionGroup_RESTRICT
#define ReactConnectionGroup_INCLUDE_ALL 1
#endif
#undef ReactConnectionGroup_RESTRICT

#if !defined (_ReactConnectionGroup_) && (ReactConnectionGroup_INCLUDE_ALL || ReactConnectionGroup_INCLUDE)
#define _ReactConnectionGroup_

@protocol JavaUtilSet;
@protocol ReactConnection;

@interface ReactConnectionGroup : NSObject {
 @public
  id<JavaUtilSet> _connections_;
}

@property (nonatomic, strong) id<JavaUtilSet> _connections;

- (void)disconnect;
- (id<ReactConnection>)addWithReactConnection:(id<ReactConnection>)c;
- (void)removeWithReactConnection:(id<ReactConnection>)c;
- (id)init;
@end
#endif
