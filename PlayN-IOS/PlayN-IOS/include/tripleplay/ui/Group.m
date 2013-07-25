//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Group.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "tripleplay/ui/Element.h"
#include "tripleplay/ui/Group.h"
#include "tripleplay/ui/Layout.h"
#include "tripleplay/ui/Style.h"
#include "tripleplay/ui/Styles.h"

@implementation TripleplayUiGroup

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout
          withTripleplayUiStyles:(TripleplayUiStyles *)styles {
  if ((self = [super initWithTripleplayUiLayout:layout])) {
    (void) [self setStylesWithTripleplayUiStyles:styles];
  }
  return self;
}

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout
withTripleplayUiStyle_BindingArray:(IOSObjectArray *)styles {
  if ((self = [super initWithTripleplayUiLayout:layout])) {
    (void) [self setStylesWithTripleplayUiStyle_BindingArray:styles];
  }
  return self;
}

- (id)initWithTripleplayUiLayout:(TripleplayUiLayout *)layout {
  return [super initWithTripleplayUiLayout:layout];
}

- (IOSClass *)getStyleClass {
  return [IOSClass classWithClass:[TripleplayUiGroup class]];
}

@end
