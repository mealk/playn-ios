//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: core/src/main/java/tuxkids/tuxblocks/core/defense/walker/BasicWalker.java
//
//  Created by Thomas on 7/10/13.
//

#import "JreEmulation.h"
#import "tuxkids/tuxblocks/core/defense/walker/Walker.h"

@interface TuxkidsTuxblocksCoreDefenseWalkerBasicWalker : TuxkidsTuxblocksCoreDefenseWalkerWalker {
 @public
  int maxHp_, walkCellTime__;
}

@property (nonatomic, assign) int maxHp;
@property (nonatomic, assign) int walkCellTime_;

- (id)initWithInt:(int)maxHp
          withInt:(int)walkCellTime;
- (int)getMaxHp;
- (int)walkCellTime;
@end