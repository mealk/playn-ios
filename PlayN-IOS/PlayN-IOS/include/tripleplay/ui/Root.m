//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Root.java
//
//  Created by Thomas on 7/10/13.
//

#import "IOSClass.h"
#import "pythagoras/f/Dimension.h"
#import "pythagoras/f/IDimension.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Elements.h"
#import "tripleplay/ui/Interface.h"
#import "tripleplay/ui/Layout.h"
#import "tripleplay/ui/MenuHost.h"
#import "tripleplay/ui/Root.h"
#import "tripleplay/ui/Stylesheet.h"

@implementation TripleplayUiRoot

@synthesize _iface = _iface_;
@synthesize _valid = _valid_;
@synthesize _active = _active_;
@synthesize _menuHost = _menuHost_;

- (id)initWithTripleplayUiInterface:(TripleplayUiInterface *)iface
             withTripleplayUiLayout:(TripleplayUiLayout *)layout
         withTripleplayUiStylesheet:(TripleplayUiStylesheet *)sheet {
  if ((self = [super initWithTripleplayUiLayout:layout])) {
    _iface_ = iface;
    (void) [self setStylesheetWithTripleplayUiStylesheet:sheet];
    [self setWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum HIT_ABSORB] withBOOL:[self absorbsClicks]];
  }
  return self;
}

- (TripleplayUiInterface *)iface {
  return _iface_;
}

- (TripleplayUiRoot *)pack {
  return [self packWithFloat:0 withFloat:0];
}

- (TripleplayUiRoot *)packWithFloat:(float)widthHint
                          withFloat:(float)heightHint {
  id<PythagorasFIDimension> psize = [self preferredSizeWithFloat:widthHint withFloat:heightHint];
  (void) [self setSizeWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height]];
  return self;
}

- (TripleplayUiRoot *)packToWidthWithFloat:(float)width {
  id<PythagorasFIDimension> psize = [self preferredSizeWithFloat:width withFloat:0];
  (void) [self setSizeWithFloat:width withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height]];
  return self;
}

- (TripleplayUiRoot *)packToHeightWithFloat:(float)height {
  id<PythagorasFIDimension> psize = [self preferredSizeWithFloat:0 withFloat:height];
  (void) [self setSizeWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width] withFloat:height];
  return self;
}

- (TripleplayUiRoot *)setSizeWithFloat:(float)width
                             withFloat:(float)height {
  [((PythagorasFDimension *) NIL_CHK(_size_)) setSizeWithFloat:width withFloat:height];
  [self invalidate];
  return self;
}

- (TripleplayUiRoot *)setBoundsWithFloat:(float)x
                               withFloat:(float)y
                               withFloat:(float)width
                               withFloat:(float)height {
  (void) [self setSizeWithFloat:width withFloat:height];
  [self setLocationWithFloat:x withFloat:y];
  return self;
}

- (void)destroy {
  [((TripleplayUiInterface *) NIL_CHK(_iface_)) destroyRootWithTripleplayUiRoot:self];
}

- (id<PythagorasFIDimension>)preferredSizeWithFloat:(float)hintX
                                          withFloat:(float)hintY {
  return (id<PythagorasFIDimension>) [super preferredSizeWithFloat:hintX withFloat:hintY];
}

- (void)validate {
  [super validate];
}

- (IOSClass *)getStyleClass {
  return [IOSClass classWithClass:[TripleplayUiRoot class]];
}

- (BOOL)isShowing {
  return [self isVisible];
}

- (TripleplayUiRoot *)root {
  return self;
}

- (TripleplayUiRoot *)setAbsorbsClicksWithBOOL:(BOOL)absorbsClicks {
  [self setWithTripleplayUiElement_FlagEnum:[TripleplayUiElement_FlagEnum HIT_ABSORB] withBOOL:absorbsClicks];
  return self;
}

- (TripleplayUiMenuHost *)getMenuHost {
  if (_menuHost_ == nil) {
    _menuHost_ = [[TripleplayUiMenuHost alloc] initWithTripleplayUiInterface:_iface_ withTripleplayUiElements:self];
  }
  return _menuHost_;
}

- (BOOL)absorbsClicks {
  return YES;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiRoot *typedCopy = (TripleplayUiRoot *) copy;
  typedCopy._iface = _iface_;
  typedCopy._valid = _valid_;
  typedCopy._active = _active_;
  typedCopy._menuHost = _menuHost_;
}

@end