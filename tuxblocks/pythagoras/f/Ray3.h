//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/f/Ray3.java
//
//  Created by Thomas on 7/1/13.
//

@class PythagorasFVector3;

#import "JreEmulation.h"
#import "IRay3.h"

@interface PythagorasFRay3 : NSObject < PythagorasFIRay3 > {
 @public
  PythagorasFVector3 *origin__;
  PythagorasFVector3 *direction__;
}

@property (nonatomic, retain) PythagorasFVector3 *origin_;
@property (nonatomic, retain) PythagorasFVector3 *direction_;

- (id)initWithPythagorasFVector3:(PythagorasFVector3 *)origin
          withPythagorasFVector3:(PythagorasFVector3 *)direction;
- (id)initWithPythagorasFRay3:(PythagorasFRay3 *)other;
- (id)init;
- (PythagorasFRay3 *)setWithPythagorasFRay3:(PythagorasFRay3 *)other;
- (PythagorasFRay3 *)setWithPythagorasFVector3:(PythagorasFVector3 *)origin
                        withPythagorasFVector3:(PythagorasFVector3 *)direction;
- (PythagorasFVector3 *)origin;
- (PythagorasFVector3 *)direction;
- (NSString *)description;
@end
