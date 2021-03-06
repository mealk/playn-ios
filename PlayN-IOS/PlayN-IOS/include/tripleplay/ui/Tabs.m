//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/Tabs.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "playn/core/Asserts.h"
#include "playn/core/GroupLayer.h"
#include "react/Connection.h"
#include "react/Value.h"
#include "tripleplay/ui/Element.h"
#include "tripleplay/ui/Elements.h"
#include "tripleplay/ui/Group.h"
#include "tripleplay/ui/Icon.h"
#include "tripleplay/ui/Selector.h"
#include "tripleplay/ui/Style.h"
#include "tripleplay/ui/Tabs.h"
#include "tripleplay/ui/ToggleButton.h"
#include "tripleplay/ui/layout/AxisLayout.h"
#include "tripleplay/ui/util/Supplier.h"

@implementation TripleplayUiTabs

static id<TripleplayUiTabs_Highlighter> TripleplayUiTabs_NOOP_HIGHLIGHTER_;
static TripleplayUiStyle * TripleplayUiTabs_HIGHLIGHTER_;

@synthesize buttons = buttons_;
@synthesize contentArea = contentArea_;
@synthesize selected = selected_;
@synthesize _tabs = _tabs_;
@synthesize _highlighter = _highlighter_;

+ (id<TripleplayUiTabs_Highlighter>)NOOP_HIGHLIGHTER {
  return TripleplayUiTabs_NOOP_HIGHLIGHTER_;
}

+ (void)setNOOP_HIGHLIGHTER:(id<TripleplayUiTabs_Highlighter>)NOOP_HIGHLIGHTER {
  TripleplayUiTabs_NOOP_HIGHLIGHTER_ = NOOP_HIGHLIGHTER;
}

+ (TripleplayUiStyle *)HIGHLIGHTER {
  return TripleplayUiTabs_HIGHLIGHTER_;
}

+ (void)setHIGHLIGHTER:(TripleplayUiStyle *)HIGHLIGHTER {
  TripleplayUiTabs_HIGHLIGHTER_ = HIGHLIGHTER;
}

+ (id<TripleplayUiTabs_Highlighter>)textColorHighlighterWithInt:(int)originalColor
                                                        withInt:(int)highlightColor {
  return [[TripleplayUiTabs_$2 alloc] initWithInt:highlightColor withInt:originalColor];
}

- (id)init {
  if ((self = [super initWithTripleplayUiLayout:[((TripleplayUiLayoutAxisLayout *) nil_chk([((TripleplayUiLayoutAxisLayout_Vertical *) nil_chk([TripleplayUiLayoutAxisLayout vertical])) gapWithInt:0])) offStretch]])) {
    buttons_ = [[TripleplayUiGroup alloc] initWithTripleplayUiLayout:[((TripleplayUiLayoutAxisLayout_Horizontal *) nil_chk([TripleplayUiLayoutAxisLayout horizontal])) gapWithInt:3]];
    contentArea_ = [[TripleplayUiGroup alloc] initWithTripleplayUiLayout:[((TripleplayUiLayoutAxisLayout *) nil_chk([((TripleplayUiLayoutAxisLayout_Horizontal *) nil_chk([TripleplayUiLayoutAxisLayout horizontal])) stretchByDefault])) offStretch]];
    selected_ = [ReactValue createWithId:nil];
    _tabs_ = [[JavaUtilArrayList alloc] init];
    (void) [self addWithTripleplayUiElementArray:[IOSObjectArray arrayWithObjects:(id[]){ buttons_, [((TripleplayUiGroup *) nil_chk(contentArea_)) setConstraintWithTripleplayUiLayout_Constraint:[TripleplayUiLayoutAxisLayout stretched]] } count:2 type:[IOSClass classWithClass:[TripleplayUiElement class]]]];
    TripleplayUiSelector *tabButtonSelector = [[TripleplayUiSelector alloc] initWithTripleplayUiElements:buttons_ withTripleplayUiElement:nil];
    (void) [((ReactValue *) nil_chk(((TripleplayUiSelector *) nil_chk(tabButtonSelector)).selected)) connectWithReactValueView_Listener:[[TripleplayUiTabs_$3 alloc] initWithTripleplayUiTabs:self]];
    (void) [((ReactValue *) nil_chk(selected_)) connectWithReactValueView_Listener:[[TripleplayUiTabs_$4 alloc] initWithTripleplayUiTabs:self withTripleplayUiSelector:tabButtonSelector]];
  }
  return self;
}

- (int)tabCount {
  return [((id<JavaUtilList>) nil_chk(_tabs_)) size];
}

- (TripleplayUiTabs_Tab *)tabAtWithInt:(int)index {
  return index >= 0 && index <= [((id<JavaUtilList>) nil_chk(_tabs_)) size] ? [((id<JavaUtilList>) nil_chk(_tabs_)) getWithInt:index] : nil;
}

- (TripleplayUiTabs_Tab *)addWithNSString:(NSString *)label
             withTripleplayUiUtilSupplier:(TripleplayUiUtilSupplier *)supplier {
  return [self addWithNSString:label withTripleplayUiIcon:nil withTripleplayUiUtilSupplier:supplier];
}

- (TripleplayUiTabs_Tab *)addWithNSString:(NSString *)label
                  withTripleplayUiElement:(TripleplayUiElement *)panel {
  return [self addWithNSString:label withTripleplayUiUtilSupplier:[TripleplayUiUtilSupplier auto__WithTripleplayUiElement:panel]];
}

- (TripleplayUiTabs_Tab *)addWithNSString:(NSString *)label
                     withTripleplayUiIcon:(id<TripleplayUiIcon>)icon
             withTripleplayUiUtilSupplier:(TripleplayUiUtilSupplier *)supplier {
  TripleplayUiTabs_Tab *tab = [[TripleplayUiTabs_Tab alloc] initWithTripleplayUiTabs:self withTripleplayUiToggleButton:[[TripleplayUiToggleButton alloc] initWithNSString:label withTripleplayUiIcon:icon] withTripleplayUiUtilSupplier:supplier];
  ((TripleplayUiTabs_Tab *) nil_chk(tab))._index = [((id<JavaUtilList>) nil_chk(_tabs_)) size];
  [((id<JavaUtilList>) nil_chk(_tabs_)) addWithId:tab];
  (void) [((TripleplayUiGroup *) nil_chk(buttons_)) addWithTripleplayUiElementArray:[IOSObjectArray arrayWithObjects:(id[]){ ((TripleplayUiTabs_Tab *) nil_chk(tab)).button } count:1 type:[IOSClass classWithClass:[TripleplayUiElement class]]]];
  return tab;
}

- (TripleplayUiTabs_Tab *)addWithNSString:(NSString *)label
                     withTripleplayUiIcon:(id<TripleplayUiIcon>)icon
                  withTripleplayUiElement:(TripleplayUiElement *)panel {
  return [self addWithNSString:label withTripleplayUiIcon:icon withTripleplayUiUtilSupplier:[TripleplayUiUtilSupplier auto__WithTripleplayUiElement:panel]];
}

- (void)repositionTabWithTripleplayUiTabs_Tab:(TripleplayUiTabs_Tab *)tab
                                      withInt:(int)position {
  int prev = [((TripleplayUiTabs_Tab *) nil_chk(tab)) index];
  [PlaynCoreAsserts checkArgumentWithBOOL:prev != -1];
  [PlaynCoreAsserts checkArgumentWithBOOL:position >= 0 && position < [((id<JavaUtilList>) nil_chk(_tabs_)) size]];
  if (prev == position) return;
  (void) [((id<JavaUtilList>) nil_chk(_tabs_)) removeWithInt:prev];
  [((TripleplayUiGroup *) nil_chk(buttons_)) removeWithTripleplayUiElement:((TripleplayUiTabs_Tab *) nil_chk(tab)).button];
  [((id<JavaUtilList>) nil_chk(_tabs_)) addWithInt:position withId:tab];
  (void) [((TripleplayUiGroup *) nil_chk(buttons_)) addWithInt:position withTripleplayUiElement:((TripleplayUiTabs_Tab *) nil_chk(tab)).button];
  [self resetIndices];
}

- (void)destroyTabWithTripleplayUiTabs_Tab:(TripleplayUiTabs_Tab *)tab {
  [PlaynCoreAsserts checkArgumentWithBOOL:[((id<JavaUtilList>) nil_chk(_tabs_)) containsWithId:tab] withId:@"Tab isn't ours"];
  if (tab == [((ReactValue *) nil_chk(selected_)) get]) (void) [((ReactValue *) nil_chk(selected_)) updateWithId:nil];
  (void) [((id<JavaUtilList>) nil_chk(_tabs_)) removeWithInt:[((TripleplayUiTabs_Tab *) nil_chk(tab)) index]];
  [((TripleplayUiGroup *) nil_chk(buttons_)) destroyWithTripleplayUiElement:((TripleplayUiTabs_Tab *) nil_chk(tab)).button];
  if (((TripleplayUiTabs_Tab *) nil_chk(tab))._content != nil) [((TripleplayUiGroup *) nil_chk(contentArea_)) destroyWithTripleplayUiElement:((TripleplayUiTabs_Tab *) nil_chk(tab))._content];
  [((TripleplayUiUtilSupplier *) nil_chk(((TripleplayUiTabs_Tab *) nil_chk(tab))._generator)) destroy];
  ((TripleplayUiTabs_Tab *) nil_chk(tab))._index = -1;
  [self resetIndices];
  return;
}

- (id<TripleplayUiTabs_Highlighter>)highlighter {
  if (_highlighter_ == nil) _highlighter_ = [self resolveStyleWithTripleplayUiStyle:TripleplayUiTabs_HIGHLIGHTER_];
  return _highlighter_;
}

- (void)clearLayoutData {
  [super clearLayoutData];
  _highlighter_ = nil;
}

- (IOSClass *)getStyleClass {
  return [IOSClass classWithClass:[TripleplayUiTabs class]];
}

- (void)wasAdded {
  [super wasAdded];
  if ([((ReactValue *) nil_chk(selected_)) get] == nil && [self tabCount] > 0) {
    (void) [((ReactValue *) nil_chk(selected_)) updateWithId:[self tabAtWithInt:0]];
  }
}

- (void)wasRemoved {
  if ([self willDestroy]) {
    {
      id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(_tabs_)) iterator];
      while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
        TripleplayUiTabs_Tab *tab = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
        [((TripleplayUiUtilSupplier *) nil_chk(((TripleplayUiTabs_Tab *) nil_chk(tab))._generator)) destroy];
      }
    }
    {
      id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(_tabs_)) iterator];
      while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
        TripleplayUiTabs_Tab *tab = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
        if (((TripleplayUiTabs_Tab *) nil_chk(tab))._content != nil && [((TripleplayUiElement *) nil_chk(((TripleplayUiTabs_Tab *) nil_chk(tab))._content)) parent] == nil) {
          [((id<PlaynCoreGroupLayer>) nil_chk(((TripleplayUiElement *) nil_chk(((TripleplayUiTabs_Tab *) nil_chk(tab))._content)).layer)) destroy];
          ((TripleplayUiTabs_Tab *) nil_chk(tab))._content = nil;
        }
      }
    }
  }
  [super wasRemoved];
}

- (void)resetIndices {
  for (int ii = 0; ii < [((id<JavaUtilList>) nil_chk(_tabs_)) size]; ++ii) {
    ((TripleplayUiTabs_Tab *) nil_chk([((id<JavaUtilList>) nil_chk(_tabs_)) getWithInt:ii]))._index = ii;
  }
}

- (TripleplayUiTabs_Tab *)forWidgetWithTripleplayUiElement:(TripleplayUiElement *)widget {
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilList>) nil_chk(_tabs_)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TripleplayUiTabs_Tab *tab = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (((TripleplayUiTabs_Tab *) nil_chk(tab)).button == widget) {
        return tab;
      }
    }
  }
  return nil;
}

+ (void)initialize {
  if (self == [TripleplayUiTabs class]) {
    TripleplayUiTabs_NOOP_HIGHLIGHTER_ = [[TripleplayUiTabs_$1 alloc] init];
    TripleplayUiTabs_HIGHLIGHTER_ = [TripleplayUiStyle newStyleWithBOOL:YES withId:TripleplayUiTabs_NOOP_HIGHLIGHTER_];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTabs *typedCopy = (TripleplayUiTabs *) copy;
  typedCopy.buttons = buttons_;
  typedCopy.contentArea = contentArea_;
  typedCopy.selected = selected_;
  typedCopy._tabs = _tabs_;
  typedCopy._highlighter = _highlighter_;
}

@end
@implementation TripleplayUiTabs_Tab

@synthesize this$0 = this$0_;
@synthesize button = button_;
@synthesize _index = _index_;
@synthesize _generator = _generator_;
@synthesize _content = _content_;

- (id)initWithTripleplayUiTabs:(TripleplayUiTabs *)outer$
  withTripleplayUiToggleButton:(TripleplayUiToggleButton *)button
  withTripleplayUiUtilSupplier:(TripleplayUiUtilSupplier *)generator {
  if ((self = [super init])) {
    this$0_ = outer$;
    _index_ = -1;
    self.button = button;
    _generator_ = generator;
  }
  return self;
}

- (void)select {
  (void) [((ReactValue *) nil_chk(this$0_.selected)) updateWithId:self];
}

- (TripleplayUiElement *)content {
  if (_content_ == nil) _content_ = [((TripleplayUiUtilSupplier *) nil_chk(_generator_)) get];
  return _content_;
}

- (int)index {
  return _index_;
}

- (void)setVisibleWithBOOL:(BOOL)visible {
  if (!visible && [((ReactValue *) nil_chk(this$0_.selected)) get] == self) (void) [((ReactValue *) nil_chk(this$0_.selected)) updateWithId:nil];
  (void) [((TripleplayUiToggleButton *) nil_chk(button_)) setVisibleWithBOOL:visible];
}

- (TripleplayUiTabs *)parent {
  return this$0_;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTabs_Tab *typedCopy = (TripleplayUiTabs_Tab *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.button = button_;
  typedCopy._index = _index_;
  typedCopy._generator = _generator_;
  typedCopy._content = _content_;
}

@end
@implementation TripleplayUiTabs_$1

- (void)highlightWithTripleplayUiTabs_Tab:(TripleplayUiTabs_Tab *)tab
                                 withBOOL:(BOOL)highlight {
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiTabs_$2

@synthesize val$highlightColor = val$highlightColor_;
@synthesize val$originalColor = val$originalColor_;

- (void)highlightWithTripleplayUiTabs_Tab:(TripleplayUiTabs_Tab *)tab
                                 withBOOL:(BOOL)highlight {
  if ([((TripleplayUiToggleButton *) nil_chk(((TripleplayUiTabs_Tab *) nil_chk(tab)).button)) isSelected] && highlight) return;
  (void) [((TripleplayUiToggleButton *) nil_chk(((TripleplayUiTabs_Tab *) nil_chk(tab)).button)) addStylesWithTripleplayUiStyle_BindingArray:[IOSObjectArray arrayWithObjects:(id[]){ [((TripleplayUiStyle *) nil_chk([TripleplayUiStyle COLOR])) isWithId:[JavaLangInteger valueOfWithInt:highlight ? val$highlightColor_ : val$originalColor_]] } count:1 type:[IOSClass classWithClass:[TripleplayUiStyle_Binding class]]]];
}

- (id)initWithInt:(int)capture$0
          withInt:(int)capture$1 {
  if ((self = [super init])) {
    val$highlightColor_ = capture$0;
    val$originalColor_ = capture$1;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTabs_$2 *typedCopy = (TripleplayUiTabs_$2 *) copy;
  typedCopy.val$highlightColor = val$highlightColor_;
  typedCopy.val$originalColor = val$originalColor_;
}

@end
@implementation TripleplayUiTabs_$3

@synthesize this$0 = this$0_;

- (void)onEmitWithId:(TripleplayUiElement *)button {
  (void) [((ReactValue *) nil_chk(this$0_.selected)) updateWithId:[this$0_ forWidgetWithTripleplayUiElement:button]];
}

- (id)initWithTripleplayUiTabs:(TripleplayUiTabs *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTabs_$3 *typedCopy = (TripleplayUiTabs_$3 *) copy;
  typedCopy.this$0 = this$0_;
}

@end
@implementation TripleplayUiTabs_$4

@synthesize this$0 = this$0_;
@synthesize val$tabButtonSelector = val$tabButtonSelector_;

- (void)onChangeWithId:(TripleplayUiTabs_Tab *)selected
                withId:(TripleplayUiTabs_Tab *)deselected {
  if (deselected != nil) [((TripleplayUiGroup *) nil_chk(this$0_.contentArea)) removeWithTripleplayUiElement:[deselected content]];
  if (selected != nil) {
    if ([((TripleplayUiElement *) nil_chk([selected content])) parent] != this$0_.contentArea) (void) [((TripleplayUiGroup *) nil_chk(this$0_.contentArea)) addWithTripleplayUiElementArray:[IOSObjectArray arrayWithObjects:(id[]){ [selected content] } count:1 type:[IOSClass classWithClass:[TripleplayUiElement class]]]];
    [((id<TripleplayUiTabs_Highlighter>) nil_chk([this$0_ highlighter])) highlightWithTripleplayUiTabs_Tab:selected withBOOL:NO];
  }
  (void) [((ReactValue *) nil_chk(((TripleplayUiSelector *) nil_chk(val$tabButtonSelector_)).selected)) updateWithId:selected != nil ? ((TripleplayUiTabs_Tab *) nil_chk(selected)).button : nil];
}

- (id)initWithTripleplayUiTabs:(TripleplayUiTabs *)outer$
      withTripleplayUiSelector:(TripleplayUiSelector *)capture$0 {
  if ((self = [super init])) {
    this$0_ = outer$;
    val$tabButtonSelector_ = capture$0;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiTabs_$4 *typedCopy = (TripleplayUiTabs_$4 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$tabButtonSelector = val$tabButtonSelector_;
}

@end
