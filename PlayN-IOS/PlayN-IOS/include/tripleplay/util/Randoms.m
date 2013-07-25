//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/util/Randoms.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSObjectArray.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Iterable.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/ListIterator.h"
#include "java/util/Map.h"
#include "java/util/Random.h"
#include "java/util/RandomAccess.h"
#include "java/util/Set.h"
#include "tripleplay/util/Randoms.h"

@implementation TripleplayUtilRandoms

@synthesize _r = _r_;

+ (TripleplayUtilRandoms *)withWithJavaUtilRandom:(JavaUtilRandom *)rand {
  return [[TripleplayUtilRandoms alloc] initWithJavaUtilRandom:rand];
}

- (int)getIntWithInt:(int)high {
  return [((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:high];
}

- (int)getInRangeWithInt:(int)low
                 withInt:(int)high {
  return low + [((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:high - low];
}

- (float)getFloatWithFloat:(float)high {
  return [((JavaUtilRandom *) nil_chk(_r_)) nextFloat] * high;
}

- (float)getInRangeWithFloat:(float)low
                   withFloat:(float)high {
  return low + ([((JavaUtilRandom *) nil_chk(_r_)) nextFloat] * (high - low));
}

- (BOOL)getChanceWithInt:(int)n {
  return (0 == [((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:n]);
}

- (BOOL)getProbabilityWithFloat:(float)p {
  return [((JavaUtilRandom *) nil_chk(_r_)) nextFloat] < p;
}

- (BOOL)getBoolean {
  return [((JavaUtilRandom *) nil_chk(_r_)) nextBoolean];
}

- (float)getNormalWithFloat:(float)mean
                  withFloat:(float)dev {
  return (float) [((JavaUtilRandom *) nil_chk(_r_)) nextGaussian] * dev + mean;
}

- (void)shuffleWithJavaUtilList:(id<JavaUtilList>)list {
  int size = [((id<JavaUtilList>) nil_chk(list)) size];
  if ([(id) list conformsToProtocol: @protocol(JavaUtilRandomAccess)]) {
    for (int ii = size; ii > 1; ii--) {
      [TripleplayUtilRandoms swapWithJavaUtilList:list withInt:ii - 1 withInt:[((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:ii]];
    }
  }
  else {
    IOSObjectArray *array = [((id<JavaUtilList>) nil_chk(list)) toArray];
    for (int ii = size; ii > 1; ii--) {
      [TripleplayUtilRandoms swapWithNSObjectArray:array withInt:ii - 1 withInt:[((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:ii]];
    }
    id<JavaUtilListIterator> it = [((id<JavaUtilList>) nil_chk(list)) listIterator];
    for (int ii = 0; ii < size; ii++) {
      (void) [((id<JavaUtilListIterator>) nil_chk(it)) next];
      id elem = (id) [((IOSObjectArray *) nil_chk(array)) objectAtIndex:ii];
      [((id<JavaUtilListIterator>) nil_chk(it)) setWithId:elem];
    }
  }
}

- (id)pickWithJavaUtilIterator:(id<JavaUtilIterator>)iterator
                        withId:(id)ifEmpty {
  if (![((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
    return ifEmpty;
  }
  id pick = [((id<JavaUtilIterator>) nil_chk(iterator)) next];
  for (int count = 2; [((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]; count++) {
    id next = [((id<JavaUtilIterator>) nil_chk(iterator)) next];
    if (0 == [((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:count]) {
      pick = next;
    }
  }
  return pick;
}

- (id)pickWithJavaLangIterable:(id<JavaLangIterable>)iterable
                        withId:(id)ifEmpty {
  return [self pickPluckWithJavaLangIterable:iterable withId:ifEmpty withBOOL:NO];
}

- (id)pickWithJavaUtilMap:(id<JavaUtilMap>)weightMap
                   withId:(id)ifEmpty {
  id pick = ifEmpty;
  double total = 0.0;
  {
    id<JavaUtilIterator> iter__ = [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(weightMap)) entrySet])) iterator];
    while ([((id<JavaUtilIterator>) nil_chk(iter__)) hasNext]) {
      id<JavaUtilMap_Entry> entry = [((id<JavaUtilIterator>) nil_chk(iter__)) next];
      double weight = [((NSNumber *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(entry)) getValue])) doubleValue];
      if (weight > 0.0) {
        total += weight;
        if ((total == weight) || (([((JavaUtilRandom *) nil_chk(_r_)) nextDouble] * total) < weight)) {
          pick = [((id<JavaUtilMap_Entry>) nil_chk(entry)) getKey];
        }
      }
      else if (weight < 0.0) {
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"Weight less than 0: %@", entry]];
      }
    }
  }
  return pick;
}

- (id)pluckWithJavaLangIterable:(id<JavaLangIterable>)iterable
                         withId:(id)ifEmpty {
  return [self pickPluckWithJavaLangIterable:iterable withId:ifEmpty withBOOL:YES];
}

- (id)initWithJavaUtilRandom:(JavaUtilRandom *)rand {
  if ((self = [super init])) {
    _r_ = rand;
  }
  return self;
}

- (id)pickPluckWithJavaLangIterable:(id<JavaLangIterable>)iterable
                             withId:(id)ifEmpty
                           withBOOL:(BOOL)remove {
  if ([(id) iterable conformsToProtocol: @protocol(JavaUtilCollection)]) {
    id<JavaUtilCollection> coll = (id<JavaUtilCollection>) iterable;
    int size = [((id<JavaUtilCollection>) nil_chk(coll)) size];
    if (size == 0) {
      return ifEmpty;
    }
    if ([(id) coll conformsToProtocol: @protocol(JavaUtilList)]) {
      id<JavaUtilList> list = (id<JavaUtilList>) coll;
      int idx = [((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:size];
      if (remove) {
        return [((id<JavaUtilList>) nil_chk(list)) removeWithInt:idx];
      }
      return [((id<JavaUtilList>) nil_chk(list)) getWithInt:idx];
    }
    id<JavaUtilIterator> it = [((id<JavaUtilCollection>) nil_chk(coll)) iterator];
    for (int idx = [((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:size]; idx > 0; idx--) {
      (void) [((id<JavaUtilIterator>) nil_chk(it)) next];
    }
    @try {
      return [((id<JavaUtilIterator>) nil_chk(it)) next];
    }
    @finally {
      if (remove) {
        [((id<JavaUtilIterator>) nil_chk(it)) remove];
      }
    }
  }
  if (!remove) {
    return [self pickWithJavaUtilIterator:[((id<JavaLangIterable>) nil_chk(iterable)) iterator] withId:ifEmpty];
  }
  id<JavaUtilIterator> it = [((id<JavaLangIterable>) nil_chk(iterable)) iterator];
  if (![((id<JavaUtilIterator>) nil_chk(it)) hasNext]) {
    return ifEmpty;
  }
  id<JavaUtilIterator> lagIt = [((id<JavaLangIterable>) nil_chk(iterable)) iterator];
  id pick = [((id<JavaUtilIterator>) nil_chk(it)) next];
  (void) [((id<JavaUtilIterator>) nil_chk(lagIt)) next];
  for (int count = 2, lag = 1; [((id<JavaUtilIterator>) nil_chk(it)) hasNext]; count++, lag++) {
    id next = [((id<JavaUtilIterator>) nil_chk(it)) next];
    if (0 == [((JavaUtilRandom *) nil_chk(_r_)) nextIntWithInt:count]) {
      pick = next;
      for (; lag > 0; lag--) {
        (void) [((id<JavaUtilIterator>) nil_chk(lagIt)) next];
      }
    }
  }
  [((id<JavaUtilIterator>) nil_chk(lagIt)) remove];
  return pick;
}

+ (void)swapWithJavaUtilList:(id<JavaUtilList>)list
                     withInt:(int)ii
                     withInt:(int)jj {
  (void) [((id<JavaUtilList>) nil_chk(list)) setWithInt:ii withId:[((id<JavaUtilList>) nil_chk(list)) setWithInt:jj withId:[((id<JavaUtilList>) nil_chk(list)) getWithInt:ii]]];
}

+ (void)swapWithNSObjectArray:(IOSObjectArray *)array
                      withInt:(int)ii
                      withInt:(int)jj {
  id tmp = [((IOSObjectArray *) nil_chk(array)) objectAtIndex:ii];
  (void) [((IOSObjectArray *) nil_chk(array)) replaceObjectAtIndex:ii withObject:[((IOSObjectArray *) nil_chk(array)) objectAtIndex:jj]];
  (void) [((IOSObjectArray *) nil_chk(array)) replaceObjectAtIndex:jj withObject:tmp];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUtilRandoms *typedCopy = (TripleplayUtilRandoms *) copy;
  typedCopy._r = _r_;
}

@end
