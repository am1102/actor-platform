//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/crypto/asn1/ASN1Null.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/crypto/asn1/ASN1Null.java"

#include "J2ObjC_source.h"
#include "im/actor/model/crypto/asn1/ASN1Null.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"


#line 8
@implementation BCASN1Null

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput {
  [((BSDataOutput *) nil_chk(dataOutput)) writeByteWithInt:BCASN1Primitive_TAG_NULL];
  [dataOutput writeByteWithInt:0];
}

- (instancetype)init {
  BCASN1Null_init(self);
  return self;
}

@end

void BCASN1Null_init(BCASN1Null *self) {
  (void) BCASN1Primitive_init(self);
}

BCASN1Null *new_BCASN1Null_init() {
  BCASN1Null *self = [BCASN1Null alloc];
  BCASN1Null_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BCASN1Null)
