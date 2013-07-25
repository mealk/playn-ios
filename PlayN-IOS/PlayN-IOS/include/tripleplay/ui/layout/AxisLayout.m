//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/layout/AxisLayout.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSClass.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/util/Iterator.h"
#include "pythagoras/f/Dimension.h"
#include "pythagoras/f/IDimension.h"
#include "tripleplay/ui/Element.h"
#include "tripleplay/ui/Elements.h"
#include "tripleplay/ui/Layout.h"
#include "tripleplay/ui/Style.h"
#include "tripleplay/ui/layout/AxisLayout.h"


static TripleplayUiLayoutAxisLayout_PolicyEnum *TripleplayUiLayoutAxisLayout_PolicyEnum_DEFAULT;
static TripleplayUiLayoutAxisLayout_PolicyEnum *TripleplayUiLayoutAxisLayout_PolicyEnum_STRETCH;
static TripleplayUiLayoutAxisLayout_PolicyEnum *TripleplayUiLayoutAxisLayout_PolicyEnum_EQUALIZE;
static TripleplayUiLayoutAxisLayout_PolicyEnum *TripleplayUiLayoutAxisLayout_PolicyEnum_CONSTRAIN;
IOSObjectArray *TripleplayUiLayoutAxisLayout_PolicyEnum_values;

@implementation TripleplayUiLayoutAxisLayout_PolicyEnum

+ (TripleplayUiLayoutAxisLayout_PolicyEnum *)DEFAULT {
  return TripleplayUiLayoutAxisLayout_PolicyEnum_DEFAULT;
}
+ (TripleplayUiLayoutAxisLayout_PolicyEnum *)STRETCH {
  return TripleplayUiLayoutAxisLayout_PolicyEnum_STRETCH;
}
+ (TripleplayUiLayoutAxisLayout_PolicyEnum *)EQUALIZE {
  return TripleplayUiLayoutAxisLayout_PolicyEnum_EQUALIZE;
}
+ (TripleplayUiLayoutAxisLayout_PolicyEnum *)CONSTRAIN {
  return TripleplayUiLayoutAxisLayout_PolicyEnum_CONSTRAIN;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (float)computeSizeWithFloat:(float)size
                    withFloat:(float)maxSize
                    withFloat:(float)extent {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

+ (void)initialize {
  if (self == [TripleplayUiLayoutAxisLayout_PolicyEnum class]) {
    TripleplayUiLayoutAxisLayout_PolicyEnum_DEFAULT = [[TripleplayUiLayoutAxisLayout_PolicyEnum_$1 alloc] initWithNSString:@"TripleplayUiLayoutAxisLayout_Policy_DEFAULT" withInt:0];
    TripleplayUiLayoutAxisLayout_PolicyEnum_STRETCH = [[TripleplayUiLayoutAxisLayout_PolicyEnum_$2 alloc] initWithNSString:@"TripleplayUiLayoutAxisLayout_Policy_STRETCH" withInt:1];
    TripleplayUiLayoutAxisLayout_PolicyEnum_EQUALIZE = [[TripleplayUiLayoutAxisLayout_PolicyEnum_$3 alloc] initWithNSString:@"TripleplayUiLayoutAxisLayout_Policy_EQUALIZE" withInt:2];
    TripleplayUiLayoutAxisLayout_PolicyEnum_CONSTRAIN = [[TripleplayUiLayoutAxisLayout_PolicyEnum_$4 alloc] initWithNSString:@"TripleplayUiLayoutAxisLayout_Policy_CONSTRAIN" withInt:3];
    TripleplayUiLayoutAxisLayout_PolicyEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ TripleplayUiLayoutAxisLayout_PolicyEnum_DEFAULT, TripleplayUiLayoutAxisLayout_PolicyEnum_STRETCH, TripleplayUiLayoutAxisLayout_PolicyEnum_EQUALIZE, TripleplayUiLayoutAxisLayout_PolicyEnum_CONSTRAIN, nil } count:4 type:[IOSClass classWithClass:[TripleplayUiLayoutAxisLayout_PolicyEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:TripleplayUiLayoutAxisLayout_PolicyEnum_values];
}

+ (TripleplayUiLayoutAxisLayout_PolicyEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [TripleplayUiLayoutAxisLayout_PolicyEnum_values count]; i++) {
    TripleplayUiLayoutAxisLayout_PolicyEnum *e = [TripleplayUiLayoutAxisLayout_PolicyEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

@end
@implementation TripleplayUiLayoutAxisLayout_PolicyEnum_$1

- (float)computeSizeWithFloat:(float)size
                    withFloat:(float)maxSize
                    withFloat:(float)extent {
  return [JavaLangMath minWithFloat:size withFloat:extent];
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

@end
@implementation TripleplayUiLayoutAxisLayout_PolicyEnum_$2

- (float)computeSizeWithFloat:(float)size
                    withFloat:(float)maxSize
                    withFloat:(float)extent {
  return extent;
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

@end
@implementation TripleplayUiLayoutAxisLayout_PolicyEnum_$3

- (float)computeSizeWithFloat:(float)size
                    withFloat:(float)maxSize
                    withFloat:(float)extent {
  return [JavaLangMath minWithFloat:maxSize withFloat:extent];
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

@end
@implementation TripleplayUiLayoutAxisLayout_PolicyEnum_$4

- (float)computeSizeWithFloat:(float)size
                    withFloat:(float)maxSize
                    withFloat:(float)extent {
  return [JavaLangMath minWithFloat:maxSize withFloat:size];
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return [super initWithNSString:name withInt:ordinal];
}

@end
@implementation TripleplayUiLayoutAxisLayout_Constraint

@synthesize stretch = stretch_;
@synthesize weight = weight_;

- (id)initWithBOOL:(BOOL)stretch
         withFloat:(float)weight {
  if ((self = [super init])) {
    self.stretch = stretch;
    self.weight = weight;
  }
  return self;
}

- (float)computeSizeWithFloat:(float)size
                    withFloat:(float)totalWeight
                    withFloat:(float)availSize {
  return stretch_ ? (availSize * weight_ / totalWeight) : size;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutAxisLayout_Constraint *typedCopy = (TripleplayUiLayoutAxisLayout_Constraint *) copy;
  typedCopy.stretch = stretch_;
  typedCopy.weight = weight_;
}

@end
@implementation TripleplayUiLayoutAxisLayout

static TripleplayUiLayoutAxisLayout_Constraint * TripleplayUiLayoutAxisLayout_UNSTRETCHED_;
static TripleplayUiLayoutAxisLayout_Constraint * TripleplayUiLayoutAxisLayout_UNIFORM_STRETCHED_;

@synthesize _gap = _gap_;
@synthesize _stretchByDefault = _stretchByDefault_;
@synthesize _offPolicy = _offPolicy_;

+ (TripleplayUiLayoutAxisLayout_Constraint *)UNSTRETCHED {
  return TripleplayUiLayoutAxisLayout_UNSTRETCHED_;
}

+ (TripleplayUiLayoutAxisLayout_Constraint *)UNIFORM_STRETCHED {
  return TripleplayUiLayoutAxisLayout_UNIFORM_STRETCHED_;
}

+ (TripleplayUiLayoutAxisLayout_Vertical *)vertical {
  return [[TripleplayUiLayoutAxisLayout_Vertical alloc] init];
}

+ (TripleplayUiLayoutAxisLayout_Horizontal *)horizontal {
  return [[TripleplayUiLayoutAxisLayout_Horizontal alloc] init];
}

+ (TripleplayUiLayoutAxisLayout_Constraint *)stretched {
  return TripleplayUiLayoutAxisLayout_UNIFORM_STRETCHED_;
}

+ (TripleplayUiLayoutAxisLayout_Constraint *)fixed {
  return TripleplayUiLayoutAxisLayout_UNSTRETCHED_;
}

+ (TripleplayUiLayoutAxisLayout_Constraint *)stretchedWithFloat:(float)weight {
  return [[TripleplayUiLayoutAxisLayout_Constraint alloc] initWithBOOL:YES withFloat:weight];
}

+ (id)stretchWithId:(TripleplayUiElement *)elem {
  return [((TripleplayUiElement *) nil_chk(elem)) setConstraintWithTripleplayUiLayout_Constraint:[TripleplayUiLayoutAxisLayout stretched]];
}

+ (id)stretchWithId:(TripleplayUiElement *)elem
          withFloat:(float)weight {
  return [((TripleplayUiElement *) nil_chk(elem)) setConstraintWithTripleplayUiLayout_Constraint:[TripleplayUiLayoutAxisLayout stretchedWithFloat:weight]];
}

- (TripleplayUiLayoutAxisLayout *)stretchByDefault {
  _stretchByDefault_ = YES;
  return self;
}

- (TripleplayUiLayoutAxisLayout *)offPolicyWithTripleplayUiLayoutAxisLayout_PolicyEnum:(TripleplayUiLayoutAxisLayout_PolicyEnum *)policy {
  _offPolicy_ = policy;
  return self;
}

- (TripleplayUiLayoutAxisLayout *)offStretch {
  return [self offPolicyWithTripleplayUiLayoutAxisLayout_PolicyEnum:[TripleplayUiLayoutAxisLayout_PolicyEnum STRETCH]];
}

- (TripleplayUiLayoutAxisLayout *)offEqualize {
  return [self offPolicyWithTripleplayUiLayoutAxisLayout_PolicyEnum:[TripleplayUiLayoutAxisLayout_PolicyEnum EQUALIZE]];
}

- (TripleplayUiLayoutAxisLayout *)offConstrain {
  return [self offPolicyWithTripleplayUiLayoutAxisLayout_PolicyEnum:[TripleplayUiLayoutAxisLayout_PolicyEnum CONSTRAIN]];
}

- (TripleplayUiLayoutAxisLayout *)gapWithInt:(int)gap {
  _gap_ = gap;
  return self;
}

- (TripleplayUiLayoutAxisLayout_Metrics *)computeMetricsWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                                       withFloat:(float)hintX
                                                                       withFloat:(float)hintY
                                                                        withBOOL:(BOOL)vert {
  TripleplayUiLayoutAxisLayout_Metrics *m = [[TripleplayUiLayoutAxisLayout_Metrics alloc] init];
  {
    id<JavaUtilIterator> iter__ = [((TripleplayUiElements *) nil_chk(elems)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TripleplayUiElement *elem = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (![((TripleplayUiElement *) nil_chk(elem)) isVisible]) continue;
      ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).count++;
      TripleplayUiLayoutAxisLayout_Constraint *c = [self constraintWithTripleplayUiElement:elem];
      if (!((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)).stretch) {
        id<PythagorasFIDimension> psize = [self preferredSizeWithTripleplayUiElement:elem withFloat:hintX withFloat:hintY];
        float pwidth = [((id<PythagorasFIDimension>) nil_chk(psize)) width], pheight = [((id<PythagorasFIDimension>) nil_chk(psize)) height];
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).prefWidth += pwidth;
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).prefHeight += pheight;
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxWidth = [JavaLangMath maxWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxWidth withFloat:pwidth];
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxHeight = [JavaLangMath maxWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxHeight withFloat:pheight];
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixWidth += pwidth;
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixHeight += pheight;
      }
      else {
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).stretchers++;
        ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).totalWeight += ((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)).weight;
      }
    }
  }
  {
    id<JavaUtilIterator> iter__ = [((TripleplayUiElements *) nil_chk(elems)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TripleplayUiElement *elem = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (![((TripleplayUiElement *) nil_chk(elem)) isVisible]) continue;
      TripleplayUiLayoutAxisLayout_Constraint *c = [self constraintWithTripleplayUiElement:elem];
      if (!((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)).stretch) continue;
      float availX = hintX - [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_], availY = hintY - [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_];
      float ehintX = vert ? availX : [((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)) computeSizeWithFloat:0 withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).totalWeight withFloat:availX - ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixWidth];
      float ehintY = vert ? [((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)) computeSizeWithFloat:0 withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).totalWeight withFloat:availY - ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixHeight] : availY;
      id<PythagorasFIDimension> psize = [self preferredSizeWithTripleplayUiElement:elem withFloat:ehintX withFloat:ehintY];
      float pwidth = [((id<PythagorasFIDimension>) nil_chk(psize)) width], pheight = [((id<PythagorasFIDimension>) nil_chk(psize)) height];
      ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).unitWidth = [JavaLangMath maxWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).unitWidth withFloat:pwidth / ((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)).weight];
      ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).unitHeight = [JavaLangMath maxWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).unitHeight withFloat:pheight / ((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)).weight];
      ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxWidth = [JavaLangMath maxWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxWidth withFloat:pwidth];
      ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxHeight = [JavaLangMath maxWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxHeight withFloat:pheight];
    }
  }
  ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).prefWidth += ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).stretchers * ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).unitWidth;
  ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).prefHeight += ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).stretchers * ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).unitHeight;
  return m;
}

- (TripleplayUiLayoutAxisLayout_Constraint *)constraintWithTripleplayUiElement:(TripleplayUiElement *)elem {
  TripleplayUiLayout_Constraint *c = [((TripleplayUiElement *) nil_chk(elem)) constraint];
  return ([c isKindOfClass:[TripleplayUiLayoutAxisLayout_Constraint class]]) ? (TripleplayUiLayoutAxisLayout_Constraint *) c : _stretchByDefault_ ? TripleplayUiLayoutAxisLayout_UNIFORM_STRETCHED_ : TripleplayUiLayoutAxisLayout_UNSTRETCHED_;
}

- (id)init {
  if ((self = [super init])) {
    _gap_ = 5;
    _offPolicy_ = [TripleplayUiLayoutAxisLayout_PolicyEnum DEFAULT];
  }
  return self;
}

+ (void)initialize {
  if (self == [TripleplayUiLayoutAxisLayout class]) {
    TripleplayUiLayoutAxisLayout_UNSTRETCHED_ = [[TripleplayUiLayoutAxisLayout_Constraint alloc] initWithBOOL:NO withFloat:1];
    TripleplayUiLayoutAxisLayout_UNIFORM_STRETCHED_ = [[TripleplayUiLayoutAxisLayout_Constraint alloc] initWithBOOL:YES withFloat:1];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutAxisLayout *typedCopy = (TripleplayUiLayoutAxisLayout *) copy;
  typedCopy._gap = _gap_;
  typedCopy._stretchByDefault = _stretchByDefault_;
  typedCopy._offPolicy = _offPolicy_;
}

@end
@implementation TripleplayUiLayoutAxisLayout_Vertical

- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY {
  TripleplayUiLayoutAxisLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:hintX withFloat:hintY withBOOL:YES];
  return [[PythagorasFDimension alloc] initWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxWidth withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).prefHeight + [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_]];
}

- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height {
  TripleplayUiStyle_HAlignEnum *halign = [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle HALIGN]];
  TripleplayUiStyle_VAlignEnum *valign = [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle VALIGN]];
  TripleplayUiLayoutAxisLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:width withFloat:height withBOOL:YES];
  float stretchHeight = [JavaLangMath maxWithFloat:0 withFloat:height - [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_] - ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixHeight];
  float y = top + ((((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).stretchers > 0) ? 0 : [((TripleplayUiStyle_VAlignEnum *) nil_chk(valign)) offsetWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixHeight + [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_] withFloat:height]);
  {
    id<JavaUtilIterator> iter__ = [((TripleplayUiElements *) nil_chk(elems)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TripleplayUiElement *elem = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (![((TripleplayUiElement *) nil_chk(elem)) isVisible]) continue;
      id<PythagorasFIDimension> psize = [self preferredSizeWithTripleplayUiElement:elem withFloat:width withFloat:height];
      TripleplayUiLayoutAxisLayout_Constraint *c = [self constraintWithTripleplayUiElement:elem];
      float ewidth = [((TripleplayUiLayoutAxisLayout_PolicyEnum *) nil_chk(_offPolicy_)) computeSizeWithFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) width] withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxWidth withFloat:width];
      float eheight = [((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)) computeSizeWithFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) height] withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).totalWeight withFloat:stretchHeight];
      [self setBoundsWithTripleplayUiElement:elem withFloat:left + [((TripleplayUiStyle_HAlignEnum *) nil_chk(halign)) offsetWithFloat:ewidth withFloat:width] withFloat:y withFloat:ewidth withFloat:eheight];
      y += (eheight + _gap_);
    }
  }
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiLayoutAxisLayout_Horizontal

- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY {
  TripleplayUiLayoutAxisLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:hintX withFloat:hintY withBOOL:NO];
  return [[PythagorasFDimension alloc] initWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).prefWidth + [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_] withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxHeight];
}

- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height {
  TripleplayUiStyle_HAlignEnum *halign = [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle HALIGN]];
  TripleplayUiStyle_VAlignEnum *valign = [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle VALIGN]];
  TripleplayUiLayoutAxisLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:width withFloat:height withBOOL:NO];
  float stretchWidth = [JavaLangMath maxWithFloat:0 withFloat:width - [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_] - ((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixWidth];
  float x = left + ((((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).stretchers > 0) ? 0 : [((TripleplayUiStyle_HAlignEnum *) nil_chk(halign)) offsetWithFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).fixWidth + [((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)) gapsWithFloat:_gap_] withFloat:width]);
  {
    id<JavaUtilIterator> iter__ = [((TripleplayUiElements *) nil_chk(elems)) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      TripleplayUiElement *elem = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      if (![((TripleplayUiElement *) nil_chk(elem)) isVisible]) continue;
      id<PythagorasFIDimension> psize = [self preferredSizeWithTripleplayUiElement:elem withFloat:width withFloat:height];
      TripleplayUiLayoutAxisLayout_Constraint *c = [self constraintWithTripleplayUiElement:elem];
      float ewidth = [((TripleplayUiLayoutAxisLayout_Constraint *) nil_chk(c)) computeSizeWithFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) width] withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).totalWeight withFloat:stretchWidth];
      float eheight = [((TripleplayUiLayoutAxisLayout_PolicyEnum *) nil_chk(_offPolicy_)) computeSizeWithFloat:[((id<PythagorasFIDimension>) nil_chk(psize)) height] withFloat:((TripleplayUiLayoutAxisLayout_Metrics *) nil_chk(m)).maxHeight withFloat:height];
      [self setBoundsWithTripleplayUiElement:elem withFloat:x withFloat:top + [((TripleplayUiStyle_VAlignEnum *) nil_chk(valign)) offsetWithFloat:eheight withFloat:height] withFloat:ewidth withFloat:eheight];
      x += (ewidth + _gap_);
    }
  }
}

- (id)init {
  return [super init];
}

@end
@implementation TripleplayUiLayoutAxisLayout_Metrics

@synthesize count = count_;
@synthesize prefWidth = prefWidth_;
@synthesize prefHeight = prefHeight_;
@synthesize maxWidth = maxWidth_;
@synthesize maxHeight = maxHeight_;
@synthesize fixWidth = fixWidth_;
@synthesize fixHeight = fixHeight_;
@synthesize unitWidth = unitWidth_;
@synthesize unitHeight = unitHeight_;
@synthesize stretchers = stretchers_;
@synthesize totalWeight = totalWeight_;

- (float)gapsWithFloat:(float)gap {
  return gap * (count_ - 1);
}

- (id)init {
  return [super init];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutAxisLayout_Metrics *typedCopy = (TripleplayUiLayoutAxisLayout_Metrics *) copy;
  typedCopy.count = count_;
  typedCopy.prefWidth = prefWidth_;
  typedCopy.prefHeight = prefHeight_;
  typedCopy.maxWidth = maxWidth_;
  typedCopy.maxHeight = maxHeight_;
  typedCopy.fixWidth = fixWidth_;
  typedCopy.fixHeight = fixHeight_;
  typedCopy.unitWidth = unitWidth_;
  typedCopy.unitHeight = unitHeight_;
  typedCopy.stretchers = stretchers_;
  typedCopy.totalWeight = totalWeight_;
}

@end
