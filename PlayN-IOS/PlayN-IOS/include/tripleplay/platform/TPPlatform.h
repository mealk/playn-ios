//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/platform/TPPlatform.java
//
//  Created by Thomas on 7/25/13.
//

#import "JreEmulation.h"

#if !TripleplayPlatformTPPlatform_RESTRICT
#define TripleplayPlatformTPPlatform_INCLUDE_ALL 1
#endif
#undef TripleplayPlatformTPPlatform_RESTRICT
#if TripleplayPlatformTPPlatform_Stub_INCLUDE
#define TripleplayPlatformTPPlatform_INCLUDE 1
#endif

#if !defined (_TripleplayPlatformTPPlatform_) && (TripleplayPlatformTPPlatform_INCLUDE_ALL || TripleplayPlatformTPPlatform_INCLUDE)
#define _TripleplayPlatformTPPlatform_

@protocol ReactValueView;
@protocol TripleplayPlatformNativeTextField;
@protocol TripleplayPlatformVirtualKeyboardController;

@interface TripleplayPlatformTPPlatform : NSObject {
}

+ (TripleplayPlatformTPPlatform *)_default;
+ (void)set_default:(TripleplayPlatformTPPlatform *)_default;
+ (TripleplayPlatformTPPlatform *)_instance;
+ (void)set_instance:(TripleplayPlatformTPPlatform *)_instance;
+ (TripleplayPlatformTPPlatform *)instance;
- (BOOL)hasNativeTextFields;
- (id<TripleplayPlatformNativeTextField>)createNativeTextField;
- (void)setVirtualKeyboardControllerWithTripleplayPlatformVirtualKeyboardController:(id<TripleplayPlatformVirtualKeyboardController>)ctrl;
- (id<ReactValueView>)virtualKeyboardActive;
+ (void)register__WithTripleplayPlatformTPPlatform:(TripleplayPlatformTPPlatform *)instance;
- (id)init;
@end
#endif

#if !defined (_TripleplayPlatformTPPlatform_Stub_) && (TripleplayPlatformTPPlatform_INCLUDE_ALL || TripleplayPlatformTPPlatform_Stub_INCLUDE)
#define _TripleplayPlatformTPPlatform_Stub_

@class ReactValue;
@protocol ReactValueView;
@protocol TripleplayPlatformNativeTextField;
@protocol TripleplayPlatformVirtualKeyboardController;

@interface TripleplayPlatformTPPlatform_Stub : TripleplayPlatformTPPlatform {
 @public
  ReactValue *_false_;
}

@property (nonatomic, strong) ReactValue *_false;

- (BOOL)hasNativeTextFields;
- (id<TripleplayPlatformNativeTextField>)createNativeTextField;
- (void)setVirtualKeyboardControllerWithTripleplayPlatformVirtualKeyboardController:(id<TripleplayPlatformVirtualKeyboardController>)ctrl;
- (id<ReactValueView>)virtualKeyboardActive;
- (id)init;
@end
#endif
