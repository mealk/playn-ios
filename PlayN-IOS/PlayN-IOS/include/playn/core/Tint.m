//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: playn/core/Tint.java
//
//  Created by Thomas on 7/10/13.
//

#import "playn/core/Tint.h"

@implementation PlaynCoreTint

+ (int)NOOP_TINT {
  return PlaynCoreTint_NOOP_TINT;
}

+ (int)combineWithInt:(int)curTint
              withInt:(int)tint {
  int newA = ((((curTint >> 24) & (int) 0xFF) * (((tint >> 24) & (int) 0xFF) + 1)) & (int) 0xFF00) << 16;
  if ((tint & (int) 0xFFFFFF) == (int) 0xFFFFFF) {
    return newA | (curTint & (int) 0xFFFFFF);
  }
  int newR = ((((curTint >> 16) & (int) 0xFF) * (((tint >> 16) & (int) 0xFF) + 1)) & (int) 0xFF00) << 8;
  int newG = (((curTint >> 8) & (int) 0xFF) * (((tint >> 8) & (int) 0xFF) + 1)) & (int) 0xFF00;
  int newB = (((curTint & (int) 0xFF) * ((tint & (int) 0xFF) + 1)) >> 8) & (int) 0xFF;
  return newA | newR | newG | newB;
}

- (id)init {
  return [super init];
}

@end
