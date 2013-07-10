//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/StubPlatform.java
//
//  Created by Thomas on 7/10/13.
//

@class JavaLangThrowable;
@class PlaynCoreKeyboard_TextTypeEnum;
@class PlaynCoreLog_LevelEnum;
@class PlaynCorePlatform_TypeEnum;
@protocol JavaLangIterable;
@protocol JavaLangRunnable;
@protocol JavaUtilMap;
@protocol PlaynCoreAnalytics;
@protocol PlaynCoreAssets;
@protocol PlaynCoreAudio;
@protocol PlaynCoreGame;
@protocol PlaynCoreGraphics;
@protocol PlaynCoreJson;
@protocol PlaynCoreKeyboard_Listener;
@protocol PlaynCoreLog;
@protocol PlaynCoreMouse;
@protocol PlaynCoreNet;
@protocol PlaynCorePlayN_LifecycleListener;
@protocol PlaynCorePointer;
@protocol PlaynCoreRegularExpression;
@protocol PlaynCoreStorage_Batch;
@protocol PlaynCoreTouch;
@protocol PlaynCoreUIOverlay;
@protocol PlaynCoreUtilCallback;

#import "JreEmulation.h"
#import "playn/core/Keyboard.h"
#import "playn/core/LogImpl.h"
#import "playn/core/Platform.h"
#import "playn/core/PointerImpl.h"
#import "playn/core/Storage.h"

@interface PlaynCoreStubPlatform : NSObject < PlaynCorePlatform > {
 @public
  id<PlaynCoreLog> log__;
  id<PlaynCoreStorage> storage__;
  id<PlaynCoreKeyboard> keyboard__;
  id<PlaynCoreTouch> touch__;
  id<PlaynCoreMouse> mouse__;
  id<PlaynCoreJson> json__;
  id<PlaynCorePointer> pointer__;
  long long int start_;
  id<PlaynCorePlayN_LifecycleListener> _lifecycleListener_;
}

@property (nonatomic, strong) id<PlaynCoreLog> log_;
@property (nonatomic, strong) id<PlaynCoreStorage> storage_;
@property (nonatomic, strong) id<PlaynCoreKeyboard> keyboard_;
@property (nonatomic, strong) id<PlaynCoreTouch> touch_;
@property (nonatomic, strong) id<PlaynCoreMouse> mouse_;
@property (nonatomic, strong) id<PlaynCoreJson> json_;
@property (nonatomic, strong) id<PlaynCorePointer> pointer_;
@property (nonatomic, assign) long long int start;
@property (nonatomic, strong) id<PlaynCorePlayN_LifecycleListener> _lifecycleListener;

- (void)runWithPlaynCoreGame:(id<PlaynCoreGame>)game;
- (PlaynCorePlatform_TypeEnum *)type;
- (double)time;
- (int)tick;
- (float)random;
- (void)openURLWithNSString:(NSString *)url;
- (void)setPropagateEventsWithBOOL:(BOOL)propagate;
- (void)invokeLaterWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;
- (void)setLifecycleListenerWithPlaynCorePlayN_LifecycleListener:(id<PlaynCorePlayN_LifecycleListener>)listener;
- (id<PlaynCoreAudio>)audio;
- (id<PlaynCoreGraphics>)graphics;
- (id<PlaynCoreAssets>)assets;
- (id<PlaynCoreJson>)json;
- (id<PlaynCoreKeyboard>)keyboard;
- (id<PlaynCoreLog>)log;
- (id<PlaynCoreNet>)net;
- (id<PlaynCorePointer>)pointer;
- (id<PlaynCoreMouse>)mouse;
- (id<PlaynCoreTouch>)touch;
- (id<PlaynCoreStorage>)storage;
- (id<PlaynCoreAnalytics>)analytics;
- (id<PlaynCoreRegularExpression>)regularExpression;
- (id<PlaynCoreUIOverlay>)uiOverlay;
- (id)init;
@end

@interface PlaynCoreStubPlatform_$1 : PlaynCoreLogImpl {
}

- (void)logImplWithPlaynCoreLog_LevelEnum:(PlaynCoreLog_LevelEnum *)level
                             withNSString:(NSString *)msg
                    withJavaLangThrowable:(JavaLangThrowable *)e;
- (id)init;
@end

@interface PlaynCoreStubPlatform_$2 : NSObject < PlaynCoreStorage > {
 @public
  id<JavaUtilMap> _data_;
}

@property (nonatomic, strong) id<JavaUtilMap> _data;

- (void)setItemWithNSString:(NSString *)key
               withNSString:(NSString *)data;
- (void)removeItemWithNSString:(NSString *)key;
- (NSString *)getItemWithNSString:(NSString *)key;
- (id<PlaynCoreStorage_Batch>)startBatch;
- (id<JavaLangIterable>)keys;
- (BOOL)isPersisted;
- (id)init;
@end

@interface PlaynCoreStubPlatform_$3 : NSObject < PlaynCoreKeyboard > {
}

- (void)setListenerWithPlaynCoreKeyboard_Listener:(id<PlaynCoreKeyboard_Listener>)listener;
- (BOOL)hasHardwareKeyboard;
- (void)getTextWithPlaynCoreKeyboard_TextTypeEnum:(PlaynCoreKeyboard_TextTypeEnum *)textType
                                     withNSString:(NSString *)label
                                     withNSString:(NSString *)initialValue
                        withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (id)init;
@end

@interface PlaynCoreStubPlatform_$4 : PlaynCorePointerImpl {
}

- (id)init;
@end
