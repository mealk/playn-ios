//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/EventObject.java
//
//  Created by tball on 6/22/13.
//

#import "JreEmulation.h"
#import "java/io/Serializable.h"

#define JavaUtilEventObject_serialVersionUID 5516075349620653480

@interface JavaUtilEventObject : NSObject < JavaIoSerializable > {
 @public
  id source_;
}

@property (nonatomic, retain) id source;

- (id)initWithId:(id)source;
- (id)getSource;
- (NSString *)description;
@end
