//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/InchWalker.java
//
//  Created by Thomas on 7/25/13.
//

#ifndef _TuxkidsTuxblocksCoreDefenseWalkerInchWalker_H_
#define _TuxkidsTuxblocksCoreDefenseWalkerInchWalker_H_

@class TuxkidsTuxblocksCoreDefenseWalkerWalker;

#import "JreEmulation.h"
#include "tuxkids/tuxblocks/core/defense/walker/BasicWalker.h"

@interface TuxkidsTuxblocksCoreDefenseWalkerInchWalker : TuxkidsTuxblocksCoreDefenseWalkerBasicWalker {
}

- (id)initWithInt:(int)maxHp
          withInt:(int)walkCellTime;
- (void)updateMovementWithFloat:(float)perc;
- (TuxkidsTuxblocksCoreDefenseWalkerWalker *)copy__ OBJC_METHOD_FAMILY_NONE;
@end

#endif // _TuxkidsTuxblocksCoreDefenseWalkerInchWalker_H_
