//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/bgs/SolidBackground.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "playn/core/Layer.h"
#include "pythagoras/f/IDimension.h"
#include "tripleplay/ui/Background.h"
#include "tripleplay/ui/bgs/SolidBackground.h"

@implementation TripleplayUiBgsSolidBackground

@synthesize _color = _color_;

- (id)initWithInt:(int)color {
  if ((self = [super init])) {
    _color_ = color;
  }
  return self;
}

- (TripleplayUiBackground_Instance *)instantiateWithPythagorasFIDimension:(id<PythagorasFIDimension>)size {
  return [[TripleplayUiBackground_LayerInstance alloc] initWithTripleplayUiBackground:self withPythagorasFIDimension:size withPlaynCoreLayerArray:[IOSObjectArray arrayWithObjects:(id[]){ [self createSolidLayerWithInt:_color_ withFloat:[((id<PythagorasFIDimension>) nil_chk(size)) width] withFloat:[((id<PythagorasFIDimension>) nil_chk(size)) height]] } count:1 type:[IOSClass classWithProtocol:@protocol(PlaynCoreLayer)]]];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiBgsSolidBackground *typedCopy = (TripleplayUiBgsSolidBackground *) copy;
  typedCopy._color = _color_;
}

@end
