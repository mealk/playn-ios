//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: pythagoras/d/Box.java
//
//  Created by Thomas on 7/25/13.
//

#include "IOSObjectArray.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "pythagoras/d/Box.h"
#include "pythagoras/d/IBox.h"
#include "pythagoras/d/IMatrix4.h"
#include "pythagoras/d/IRay3.h"
#include "pythagoras/d/IVector3.h"
#include "pythagoras/d/MathUtil.h"
#include "pythagoras/d/Vector3.h"

@implementation PythagorasDBox

static PythagorasDBox * PythagorasDBox_UNIT_;
static PythagorasDBox * PythagorasDBox_ZERO_;
static PythagorasDBox * PythagorasDBox_EMPTY_;
static PythagorasDBox * PythagorasDBox_MAX_VALUE_;

@synthesize _minExtent = _minExtent_;
@synthesize _maxExtent = _maxExtent_;

+ (PythagorasDBox *)UNIT {
  return PythagorasDBox_UNIT_;
}

+ (PythagorasDBox *)ZERO {
  return PythagorasDBox_ZERO_;
}

+ (PythagorasDBox *)EMPTY {
  return PythagorasDBox_EMPTY_;
}

+ (PythagorasDBox *)MAX_VALUE {
  return PythagorasDBox_MAX_VALUE_;
}

- (id)initWithPythagorasDIVector3:(id<PythagorasDIVector3>)minExtent
          withPythagorasDIVector3:(id<PythagorasDIVector3>)maxExtent {
  if ((self = [super init])) {
    _minExtent_ = [[PythagorasDVector3 alloc] init];
    _maxExtent_ = [[PythagorasDVector3 alloc] init];
    (void) [self setWithPythagorasDIVector3:minExtent withPythagorasDIVector3:maxExtent];
  }
  return self;
}

- (id)initWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  if ((self = [super init])) {
    _minExtent_ = [[PythagorasDVector3 alloc] init];
    _maxExtent_ = [[PythagorasDVector3 alloc] init];
    (void) [self setWithPythagorasDIBox:other];
  }
  return self;
}

- (id)init {
  if ((self = [super init])) {
    _minExtent_ = [[PythagorasDVector3 alloc] init];
    _maxExtent_ = [[PythagorasDVector3 alloc] init];
    (void) [self setToEmpty];
  }
  return self;
}

- (PythagorasDBox *)setToEmpty {
  return [self setWithPythagorasDIVector3:[PythagorasDVector3 MAX_VALUE] withPythagorasDIVector3:[PythagorasDVector3 MIN_VALUE]];
}

- (PythagorasDBox *)setWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  return [self setWithPythagorasDIVector3:[((id<PythagorasDIBox>) nil_chk(other)) minimumExtent] withPythagorasDIVector3:[((id<PythagorasDIBox>) nil_chk(other)) maximumExtent]];
}

- (PythagorasDBox *)setWithPythagorasDIVector3:(id<PythagorasDIVector3>)minExtent
                       withPythagorasDIVector3:(id<PythagorasDIVector3>)maxExtent {
  (void) [((PythagorasDVector3 *) nil_chk(_minExtent_)) setWithPythagorasDIVector3:minExtent];
  (void) [((PythagorasDVector3 *) nil_chk(_maxExtent_)) setWithPythagorasDIVector3:maxExtent];
  return self;
}

- (PythagorasDBox *)fromPointsWithPythagorasDIVector3Array:(IOSObjectArray *)points {
  (void) [self setToEmpty];
  {
    IOSObjectArray *a__ = points;
    int n__ = (int) [((IOSObjectArray *) nil_chk(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      id<PythagorasDIVector3> point = [((IOSObjectArray *) nil_chk(a__)) objectAtIndex:i__];
      (void) [self addLocalWithPythagorasDIVector3:point];
    }
  }
  return self;
}

- (PythagorasDBox *)addLocalWithPythagorasDIVector3:(id<PythagorasDIVector3>)point {
  return [self addWithPythagorasDIVector3:point withPythagorasDBox:self];
}

- (PythagorasDBox *)addLocalWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  return [self addWithPythagorasDIBox:other withPythagorasDBox:self];
}

- (PythagorasDBox *)intersectLocalWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  return [self intersectWithPythagorasDIBox:other withPythagorasDBox:self];
}

- (PythagorasDBox *)projectLocalWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix {
  return [self projectWithPythagorasDIMatrix4:matrix withPythagorasDBox:self];
}

- (PythagorasDBox *)expandLocalWithDouble:(double)x
                               withDouble:(double)y
                               withDouble:(double)z {
  return [self expandWithDouble:x withDouble:y withDouble:z withPythagorasDBox:self];
}

- (id<PythagorasDIVector3>)minimumExtent {
  return _minExtent_;
}

- (id<PythagorasDIVector3>)maximumExtent {
  return _maxExtent_;
}

- (PythagorasDVector3 *)center {
  return [self centerWithPythagorasDVector3:[[PythagorasDVector3 alloc] init]];
}

- (PythagorasDVector3 *)centerWithPythagorasDVector3:(PythagorasDVector3 *)result {
  return [((PythagorasDVector3 *) nil_chk([((PythagorasDVector3 *) nil_chk(_minExtent_)) addWithPythagorasDIVector3:_maxExtent_ withPythagorasDVector3:result])) multLocalWithDouble:0.5f];
}

- (double)diagonalLength {
  return [((PythagorasDVector3 *) nil_chk(_minExtent_)) distanceWithPythagorasDIVector3:_maxExtent_];
}

- (double)longestEdge {
  return [JavaLangMath maxWithDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ - ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ - ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_] withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_ - ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_];
}

- (BOOL)isEmpty {
  return ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ > ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ || ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ > ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ || ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ > ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_;
}

- (PythagorasDBox *)addWithPythagorasDIVector3:(id<PythagorasDIVector3>)point {
  return [self addWithPythagorasDIVector3:point withPythagorasDBox:[[PythagorasDBox alloc] init]];
}

- (PythagorasDBox *)addWithPythagorasDIVector3:(id<PythagorasDIVector3>)point
                            withPythagorasDBox:(PythagorasDBox *)result {
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._minExtent)) setWithDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) x]] withDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) y]] withDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) z]]];
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._maxExtent)) setWithDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) x]] withDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) y]] withDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_ withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) z]]];
  return result;
}

- (PythagorasDBox *)addWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  return [self addWithPythagorasDIBox:other withPythagorasDBox:[[PythagorasDBox alloc] init]];
}

- (PythagorasDBox *)addWithPythagorasDIBox:(id<PythagorasDIBox>)other
                        withPythagorasDBox:(PythagorasDBox *)result {
  id<PythagorasDIVector3> omin = [((id<PythagorasDIBox>) nil_chk(other)) minimumExtent], omax = [((id<PythagorasDIBox>) nil_chk(other)) maximumExtent];
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._minExtent)) setWithDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omin)) x]] withDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omin)) y]] withDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omin)) z]]];
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._maxExtent)) setWithDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omax)) x]] withDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omax)) y]] withDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omax)) z]]];
  return result;
}

- (PythagorasDBox *)intersectWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  return [self intersectWithPythagorasDIBox:other withPythagorasDBox:[[PythagorasDBox alloc] init]];
}

- (PythagorasDBox *)intersectWithPythagorasDIBox:(id<PythagorasDIBox>)other
                              withPythagorasDBox:(PythagorasDBox *)result {
  id<PythagorasDIVector3> omin = [((id<PythagorasDIBox>) nil_chk(other)) minimumExtent], omax = [((id<PythagorasDIBox>) nil_chk(other)) maximumExtent];
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._minExtent)) setWithDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omin)) x]] withDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omin)) y]] withDouble:[JavaLangMath maxWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omin)) z]]];
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._maxExtent)) setWithDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omax)) x]] withDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omax)) y]] withDouble:[JavaLangMath minWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_ withDouble:[((id<PythagorasDIVector3>) nil_chk(omax)) z]]];
  return result;
}

- (PythagorasDBox *)projectWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix {
  return [self projectWithPythagorasDIMatrix4:matrix withPythagorasDBox:[[PythagorasDBox alloc] init]];
}

- (PythagorasDBox *)projectWithPythagorasDIMatrix4:(id<PythagorasDIMatrix4>)matrix
                                withPythagorasDBox:(PythagorasDBox *)result {
  double minx = +JavaLangFloat_MAX_VALUE, miny = +JavaLangFloat_MAX_VALUE, minz = +JavaLangFloat_MAX_VALUE;
  double maxx = -JavaLangFloat_MAX_VALUE, maxy = -JavaLangFloat_MAX_VALUE, maxz = -JavaLangFloat_MAX_VALUE;
  for (int ii = 0; ii < 8; ii++) {
    double x = ((ii & (1 << 2)) == 0) ? ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ : ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_;
    double y = ((ii & (1 << 1)) == 0) ? ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ : ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_;
    double z = ((ii & (1 << 0)) == 0) ? ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ : ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_;
    double rw = 1.0f / ([((id<PythagorasDIMatrix4>) nil_chk(matrix)) m03] * x + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m13] * y + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m23] * z + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m33]);
    double px = ([((id<PythagorasDIMatrix4>) nil_chk(matrix)) m00] * x + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m10] * y + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m20] * z + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m30]) * rw;
    double py = ([((id<PythagorasDIMatrix4>) nil_chk(matrix)) m01] * x + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m11] * y + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m21] * z + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m31]) * rw;
    double pz = ([((id<PythagorasDIMatrix4>) nil_chk(matrix)) m02] * x + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m12] * y + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m22] * z + [((id<PythagorasDIMatrix4>) nil_chk(matrix)) m32]) * rw;
    minx = [JavaLangMath minWithDouble:minx withDouble:px];
    miny = [JavaLangMath minWithDouble:miny withDouble:py];
    minz = [JavaLangMath minWithDouble:minz withDouble:pz];
    maxx = [JavaLangMath maxWithDouble:maxx withDouble:px];
    maxy = [JavaLangMath maxWithDouble:maxy withDouble:py];
    maxz = [JavaLangMath maxWithDouble:maxz withDouble:pz];
  }
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._minExtent)) setWithDouble:minx withDouble:miny withDouble:minz];
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._maxExtent)) setWithDouble:maxx withDouble:maxy withDouble:maxz];
  return result;
}

- (PythagorasDBox *)expandWithDouble:(double)x
                          withDouble:(double)y
                          withDouble:(double)z {
  return [self expandWithDouble:x withDouble:y withDouble:z withPythagorasDBox:[[PythagorasDBox alloc] init]];
}

- (PythagorasDBox *)expandWithDouble:(double)x
                          withDouble:(double)y
                          withDouble:(double)z
                  withPythagorasDBox:(PythagorasDBox *)result {
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._minExtent)) setWithDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ - x withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ - y withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ - z];
  (void) [((PythagorasDVector3 *) nil_chk(((PythagorasDBox *) nil_chk(result))._maxExtent)) setWithDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ + x withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ + y withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_ + z];
  return result;
}

- (PythagorasDVector3 *)vertexWithInt:(int)code
               withPythagorasDVector3:(PythagorasDVector3 *)result {
  return [((PythagorasDVector3 *) nil_chk(result)) setWithDouble:((code & (1 << 2)) == 0) ? ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ : ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ withDouble:((code & (1 << 1)) == 0) ? ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ : ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ withDouble:((code & (1 << 0)) == 0) ? ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ : ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_];
}

- (BOOL)containsWithPythagorasDIVector3:(id<PythagorasDIVector3>)point {
  return [self containsWithDouble:[((id<PythagorasDIVector3>) nil_chk(point)) x] withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) y] withDouble:[((id<PythagorasDIVector3>) nil_chk(point)) z]];
}

- (BOOL)containsWithDouble:(double)x
                withDouble:(double)y
                withDouble:(double)z {
  return (x >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ && x <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ && y >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ && y <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ && z >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ && z <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_);
}

- (double)extentDistanceWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  return [((id<PythagorasDIVector3>) nil_chk([((id<PythagorasDIBox>) nil_chk(other)) minimumExtent])) manhattanDistanceWithPythagorasDIVector3:_minExtent_] + [((id<PythagorasDIVector3>) nil_chk([((id<PythagorasDIBox>) nil_chk(other)) maximumExtent])) manhattanDistanceWithPythagorasDIVector3:_maxExtent_];
}

- (BOOL)containsWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  id<PythagorasDIVector3> omin = [((id<PythagorasDIBox>) nil_chk(other)) minimumExtent], omax = [((id<PythagorasDIBox>) nil_chk(other)) maximumExtent];
  return [((id<PythagorasDIVector3>) nil_chk(omin)) x] >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ && [((id<PythagorasDIVector3>) nil_chk(omax)) x] <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ && [((id<PythagorasDIVector3>) nil_chk(omin)) y] >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ && [((id<PythagorasDIVector3>) nil_chk(omax)) y] <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ && [((id<PythagorasDIVector3>) nil_chk(omin)) z] >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ && [((id<PythagorasDIVector3>) nil_chk(omax)) z] <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_;
}

- (BOOL)intersectsWithPythagorasDIBox:(id<PythagorasDIBox>)other {
  id<PythagorasDIVector3> omin = [((id<PythagorasDIBox>) nil_chk(other)) minimumExtent], omax = [((id<PythagorasDIBox>) nil_chk(other)) maximumExtent];
  return ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ >= [((id<PythagorasDIVector3>) nil_chk(omin)) x] && ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ <= [((id<PythagorasDIVector3>) nil_chk(omax)) x] && ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ >= [((id<PythagorasDIVector3>) nil_chk(omin)) y] && ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ <= [((id<PythagorasDIVector3>) nil_chk(omax)) y] && ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_ >= [((id<PythagorasDIVector3>) nil_chk(omin)) z] && ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ <= [((id<PythagorasDIVector3>) nil_chk(omax)) z];
}

- (BOOL)intersectsWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray {
  id<PythagorasDIVector3> dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  return ([JavaLangMath absWithDouble:[((id<PythagorasDIVector3>) nil_chk(dir)) x]] > PythagorasDMathUtil_EPSILON && ([self intersectsXWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).x_] || [self intersectsXWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_])) || ([JavaLangMath absWithDouble:[((id<PythagorasDIVector3>) nil_chk(dir)) y]] > PythagorasDMathUtil_EPSILON && ([self intersectsYWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).y_] || [self intersectsYWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_])) || ([JavaLangMath absWithDouble:[((id<PythagorasDIVector3>) nil_chk(dir)) z]] > PythagorasDMathUtil_EPSILON && ([self intersectsZWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).z_] || [self intersectsZWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_]));
}

- (BOOL)intersectionWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                  withPythagorasDVector3:(PythagorasDVector3 *)result {
  id<PythagorasDIVector3> origin = [((id<PythagorasDIRay3>) nil_chk(ray)) origin];
  if ([self containsWithPythagorasDIVector3:origin]) {
    (void) [((PythagorasDVector3 *) nil_chk(result)) setWithPythagorasDIVector3:origin];
    return YES;
  }
  id<PythagorasDIVector3> dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  double t = JavaLangFloat_MAX_VALUE;
  if ([JavaLangMath absWithDouble:[((id<PythagorasDIVector3>) nil_chk(dir)) x]] > PythagorasDMathUtil_EPSILON) {
    t = [JavaLangMath minWithDouble:t withDouble:[self intersectionXWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).x_]];
    t = [JavaLangMath minWithDouble:t withDouble:[self intersectionXWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_]];
  }
  if ([JavaLangMath absWithDouble:[((id<PythagorasDIVector3>) nil_chk(dir)) y]] > PythagorasDMathUtil_EPSILON) {
    t = [JavaLangMath minWithDouble:t withDouble:[self intersectionYWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).y_]];
    t = [JavaLangMath minWithDouble:t withDouble:[self intersectionYWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_]];
  }
  if ([JavaLangMath absWithDouble:[((id<PythagorasDIVector3>) nil_chk(dir)) z]] > PythagorasDMathUtil_EPSILON) {
    t = [JavaLangMath minWithDouble:t withDouble:[self intersectionZWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_minExtent_)).z_]];
    t = [JavaLangMath minWithDouble:t withDouble:[self intersectionZWithPythagorasDIRay3:ray withDouble:((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_]];
  }
  if (t == JavaLangFloat_MAX_VALUE) {
    return NO;
  }
  (void) [((id<PythagorasDIVector3>) nil_chk(origin)) addScaledWithPythagorasDIVector3:dir withDouble:t withPythagorasDVector3:result];
  return YES;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"[min=%@, max=%@]", _minExtent_, _maxExtent_];
}

- (NSUInteger)hash {
  return [((PythagorasDVector3 *) nil_chk(_minExtent_)) hash] + 31 * [((PythagorasDVector3 *) nil_chk(_maxExtent_)) hash];
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[PythagorasDBox class]])) {
    return NO;
  }
  PythagorasDBox *obox = (PythagorasDBox *) other;
  return [((PythagorasDVector3 *) nil_chk(_minExtent_)) isEqual:((PythagorasDBox *) nil_chk(obox))._minExtent] && [((PythagorasDVector3 *) nil_chk(_maxExtent_)) isEqual:((PythagorasDBox *) nil_chk(obox))._maxExtent];
}

- (BOOL)intersectsXWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                             withDouble:(double)x {
  id<PythagorasDIVector3> origin = [((id<PythagorasDIRay3>) nil_chk(ray)) origin], dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  double t = (x - [((id<PythagorasDIVector3>) nil_chk(origin)) x]) / [((id<PythagorasDIVector3>) nil_chk(dir)) x];
  if (t < 0.0f) {
    return NO;
  }
  double iy = [((id<PythagorasDIVector3>) nil_chk(origin)) y] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) y], iz = [((id<PythagorasDIVector3>) nil_chk(origin)) z] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) z];
  return iy >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ && iy <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ && iz >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ && iz <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_;
}

- (BOOL)intersectsYWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                             withDouble:(double)y {
  id<PythagorasDIVector3> origin = [((id<PythagorasDIRay3>) nil_chk(ray)) origin], dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  double t = (y - [((id<PythagorasDIVector3>) nil_chk(origin)) y]) / [((id<PythagorasDIVector3>) nil_chk(dir)) y];
  if (t < 0.0f) {
    return NO;
  }
  double ix = [((id<PythagorasDIVector3>) nil_chk(origin)) x] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) x], iz = [((id<PythagorasDIVector3>) nil_chk(origin)) z] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) z];
  return ix >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ && ix <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ && iz >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ && iz <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_;
}

- (BOOL)intersectsZWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                             withDouble:(double)z {
  id<PythagorasDIVector3> origin = [((id<PythagorasDIRay3>) nil_chk(ray)) origin], dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  double t = (z - [((id<PythagorasDIVector3>) nil_chk(origin)) z]) / [((id<PythagorasDIVector3>) nil_chk(dir)) z];
  if (t < 0.0f) {
    return NO;
  }
  double ix = [((id<PythagorasDIVector3>) nil_chk(origin)) x] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) x], iy = [((id<PythagorasDIVector3>) nil_chk(origin)) y] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) y];
  return ix >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ && ix <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ && iy >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ && iy <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_;
}

- (double)intersectionXWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                                 withDouble:(double)x {
  id<PythagorasDIVector3> origin = [((id<PythagorasDIRay3>) nil_chk(ray)) origin], dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  double t = (x - [((id<PythagorasDIVector3>) nil_chk(origin)) x]) / [((id<PythagorasDIVector3>) nil_chk(dir)) x];
  if (t < 0.0f) {
    return JavaLangFloat_MAX_VALUE;
  }
  double iy = [((id<PythagorasDIVector3>) nil_chk(origin)) y] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) y], iz = [((id<PythagorasDIVector3>) nil_chk(origin)) z] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) z];
  return (iy >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ && iy <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_ && iz >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ && iz <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_) ? t : JavaLangFloat_MAX_VALUE;
}

- (double)intersectionYWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                                 withDouble:(double)y {
  id<PythagorasDIVector3> origin = [((id<PythagorasDIRay3>) nil_chk(ray)) origin], dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  double t = (y - [((id<PythagorasDIVector3>) nil_chk(origin)) y]) / [((id<PythagorasDIVector3>) nil_chk(dir)) y];
  if (t < 0.0f) {
    return JavaLangFloat_MAX_VALUE;
  }
  double ix = [((id<PythagorasDIVector3>) nil_chk(origin)) x] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) x], iz = [((id<PythagorasDIVector3>) nil_chk(origin)) z] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) z];
  return (ix >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ && ix <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ && iz >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).z_ && iz <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).z_) ? t : JavaLangFloat_MAX_VALUE;
}

- (double)intersectionZWithPythagorasDIRay3:(id<PythagorasDIRay3>)ray
                                 withDouble:(double)z {
  id<PythagorasDIVector3> origin = [((id<PythagorasDIRay3>) nil_chk(ray)) origin], dir = [((id<PythagorasDIRay3>) nil_chk(ray)) direction];
  double t = (z - [((id<PythagorasDIVector3>) nil_chk(origin)) z]) / [((id<PythagorasDIVector3>) nil_chk(dir)) z];
  if (t < 0.0f) {
    return JavaLangFloat_MAX_VALUE;
  }
  double ix = [((id<PythagorasDIVector3>) nil_chk(origin)) x] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) x], iy = [((id<PythagorasDIVector3>) nil_chk(origin)) y] + t * [((id<PythagorasDIVector3>) nil_chk(dir)) y];
  return (ix >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).x_ && ix <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).x_ && iy >= ((PythagorasDVector3 *) nil_chk(_minExtent_)).y_ && iy <= ((PythagorasDVector3 *) nil_chk(_maxExtent_)).y_) ? t : JavaLangFloat_MAX_VALUE;
}

+ (void)initialize {
  if (self == [PythagorasDBox class]) {
    PythagorasDBox_UNIT_ = [[PythagorasDBox alloc] initWithPythagorasDIVector3:[((id<PythagorasDIVector3>) nil_chk([PythagorasDVector3 UNIT_XYZ])) negate] withPythagorasDIVector3:[PythagorasDVector3 UNIT_XYZ]];
    PythagorasDBox_ZERO_ = [[PythagorasDBox alloc] initWithPythagorasDIVector3:[PythagorasDVector3 ZERO] withPythagorasDIVector3:[PythagorasDVector3 ZERO]];
    PythagorasDBox_EMPTY_ = [[PythagorasDBox alloc] initWithPythagorasDIVector3:[PythagorasDVector3 MAX_VALUE] withPythagorasDIVector3:[PythagorasDVector3 MIN_VALUE]];
    PythagorasDBox_MAX_VALUE_ = [[PythagorasDBox alloc] initWithPythagorasDIVector3:[PythagorasDVector3 MIN_VALUE] withPythagorasDIVector3:[PythagorasDVector3 MAX_VALUE]];
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  PythagorasDBox *typedCopy = (PythagorasDBox *) copy;
  typedCopy._minExtent = _minExtent_;
  typedCopy._maxExtent = _maxExtent_;
}

@end
