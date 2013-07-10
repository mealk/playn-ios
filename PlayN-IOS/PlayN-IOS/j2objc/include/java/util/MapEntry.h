//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/MapEntry.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"
#import "java/util/Map.h"

@interface JavaUtilMapEntry : NSObject < JavaUtilMap_Entry, NSCopying > {
 @public
  id key_;
  id value_;
}

@property (nonatomic, retain) id key;
@property (nonatomic, retain) id value;

- (id)initWithId:(id)theKey;
- (id)initWithId:(id)theKey
          withId:(id)theValue;
- (id)clone;
- (BOOL)isEqual:(id)object;
- (id)getKey;
- (id)getValue;
- (NSUInteger)hash;
- (id)setValueWithId:(id)object;
- (NSString *)description;
- (id)copyWithZone:(NSZone *)zone;
@end

@protocol JavaUtilMapEntry_Type < NSObject >
- (id)getWithJavaUtilMapEntry:(JavaUtilMapEntry *)entry;
@end
