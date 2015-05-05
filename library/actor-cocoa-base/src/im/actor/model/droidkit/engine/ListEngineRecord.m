//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/ListEngineRecord.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/ListEngineRecord.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/engine/ListEngineRecord.h"

@interface DKListEngineRecord () {
 @public
  jlong key_;
  jlong order_;
  NSString *query_;
  IOSByteArray *data_;
}

@end

J2OBJC_FIELD_SETTER(DKListEngineRecord, query_, NSString *)
J2OBJC_FIELD_SETTER(DKListEngineRecord, data_, IOSByteArray *)


#line 7
@implementation DKListEngineRecord


#line 14
- (instancetype)initWithLong:(jlong)key
                    withLong:(jlong)order
                withNSString:(NSString *)query
               withByteArray:(IOSByteArray *)data {
  DKListEngineRecord_initWithLong_withLong_withNSString_withByteArray_(self, key, order, query, data);
  return self;
}


#line 21
- (jlong)getKey {
  return key_;
}

- (jlong)getOrder {
  return order_;
}

- (NSString *)getQuery {
  return query_;
}

- (IOSByteArray *)getData {
  return data_;
}

@end


#line 14
void DKListEngineRecord_initWithLong_withLong_withNSString_withByteArray_(DKListEngineRecord *self, jlong key, jlong order, NSString *query, IOSByteArray *data) {
  (void) NSObject_init(self);
  
#line 15
  self->key_ = key;
  self->order_ = order;
  self->query_ = query;
  self->data_ = data;
}


#line 14
DKListEngineRecord *new_DKListEngineRecord_initWithLong_withLong_withNSString_withByteArray_(jlong key, jlong order, NSString *query, IOSByteArray *data) {
  DKListEngineRecord *self = [DKListEngineRecord alloc];
  DKListEngineRecord_initWithLong_withLong_withNSString_withByteArray_(self, key, order, query, data);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKListEngineRecord)
