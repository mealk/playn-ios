//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/NetImpl.java
//
//  Created by Thomas on 7/10/13.
//

@class IOSByteArray;
@class PlaynCoreAbstractPlatform;
@class PlaynCoreNetImpl_BuilderImpl;
@protocol JavaLangIterable;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol PlaynCoreNet_WebSocket;
@protocol PlaynCoreNet_WebSocket_Listener;
@protocol PlaynCoreUtilCallback;

#import "JreEmulation.h"
#import "playn/core/Net.h"
#import "playn/core/util/Callback.h"

@interface PlaynCoreNetImpl : NSObject < PlaynCoreNet > {
 @public
  PlaynCoreAbstractPlatform *platform_;
}

@property (nonatomic, strong) PlaynCoreAbstractPlatform *platform;

+ (NSString *)UTF8;
- (id<PlaynCoreNet_WebSocket>)createWebSocketWithNSString:(NSString *)url
                      withPlaynCoreNet_WebSocket_Listener:(id<PlaynCoreNet_WebSocket_Listener>)listener;
- (void)getWithNSString:(NSString *)url
withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (void)postWithNSString:(NSString *)url
            withNSString:(NSString *)data
withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (id<PlaynCoreNet_Builder>)reqWithNSString:(NSString *)url;
- (id)initWithPlaynCoreAbstractPlatform:(PlaynCoreAbstractPlatform *)platform;
- (void)executeWithPlaynCoreNetImpl_BuilderImpl:(PlaynCoreNetImpl_BuilderImpl *)req
                      withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
- (id<PlaynCoreUtilCallback>)adaptWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
@end

@interface PlaynCoreNetImpl_Header : NSObject {
 @public
  NSString *name_;
  NSString *value_;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *value;

- (id)initWithPlaynCoreNetImpl:(PlaynCoreNetImpl *)outer$
                  withNSString:(NSString *)name
                  withNSString:(NSString *)value;
@end

@interface PlaynCoreNetImpl_BuilderImpl : NSObject < PlaynCoreNet_Builder > {
 @public
  PlaynCoreNetImpl *this$0_;
  NSString *url_;
  id<JavaUtilList> headers_;
  NSString *contentType__;
  NSString *payloadString_;
  IOSByteArray *payloadBytes_;
}

@property (nonatomic, strong) PlaynCoreNetImpl *this$0;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, strong) id<JavaUtilList> headers;
@property (nonatomic, copy) NSString *contentType_;
@property (nonatomic, copy) NSString *payloadString;
@property (nonatomic, strong) IOSByteArray *payloadBytes;

- (id)initWithPlaynCoreNetImpl:(PlaynCoreNetImpl *)outer$
                  withNSString:(NSString *)url;
- (BOOL)isPost;
- (NSString *)method;
- (NSString *)contentType;
- (id<PlaynCoreNet_Builder>)setPayloadWithNSString:(NSString *)payload;
- (id<PlaynCoreNet_Builder>)setPayloadWithNSString:(NSString *)payload
                                      withNSString:(NSString *)contentType;
- (id<PlaynCoreNet_Builder>)setPayloadWithJavaLangByteArray:(IOSByteArray *)payload;
- (id<PlaynCoreNet_Builder>)setPayloadWithJavaLangByteArray:(IOSByteArray *)payload
                                               withNSString:(NSString *)contentType;
- (id<PlaynCoreNet_Builder>)addHeaderWithNSString:(NSString *)name
                                     withNSString:(NSString *)value;
- (void)executeWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)callback;
@end

@interface PlaynCoreNetImpl_ResponseImpl : NSObject < PlaynCoreNet_Response > {
 @public
  int responseCode__;
  id<JavaUtilMap> headersMap_;
}

@property (nonatomic, assign) int responseCode_;
@property (nonatomic, strong) id<JavaUtilMap> headersMap;

- (id)initWithPlaynCoreNetImpl:(PlaynCoreNetImpl *)outer$
                       withInt:(int)responseCode;
- (int)responseCode;
- (id<JavaLangIterable>)headerNames;
- (NSString *)headerWithNSString:(NSString *)name;
- (id<JavaUtilList>)headersWithNSString:(NSString *)name;
- (id<JavaUtilMap>)headers;
- (id<JavaUtilMap>)extractHeaders;
- (IOSByteArray *)payload;
- (NSString *)payloadString;
@end

@interface PlaynCoreNetImpl_StringResponse : PlaynCoreNetImpl_ResponseImpl {
 @public
  NSString *payload__;
}

@property (nonatomic, copy) NSString *payload_;

- (id)initWithPlaynCoreNetImpl:(PlaynCoreNetImpl *)outer$
                       withInt:(int)responseCode
                  withNSString:(NSString *)payload;
- (NSString *)payloadString;
- (IOSByteArray *)payload;
@end

@interface PlaynCoreNetImpl_BinaryResponse : PlaynCoreNetImpl_ResponseImpl {
 @public
  IOSByteArray *payload__;
  NSString *encoding_;
}

@property (nonatomic, strong) IOSByteArray *payload_;
@property (nonatomic, copy) NSString *encoding;

- (id)initWithPlaynCoreNetImpl:(PlaynCoreNetImpl *)outer$
                       withInt:(int)responseCode
         withJavaLangByteArray:(IOSByteArray *)payload
                  withNSString:(NSString *)encoding;
- (NSString *)payloadString;
- (IOSByteArray *)payload;
@end

@interface PlaynCoreNetImpl_$1 : PlaynCoreUtilCallback_Chain {
 @public
  id<PlaynCoreUtilCallback> val$callback_;
}

@property (nonatomic, strong) id<PlaynCoreUtilCallback> val$callback;

- (void)onSuccessWithId:(id<PlaynCoreNet_Response>)rsp;
- (id)initWithPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)arg$0
          withPlaynCoreUtilCallback:(id<PlaynCoreUtilCallback>)capture$0;
@end