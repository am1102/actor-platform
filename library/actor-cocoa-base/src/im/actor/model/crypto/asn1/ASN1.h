//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/crypto/asn1/ASN1.java
//

#ifndef _BCASN1_H_
#define _BCASN1_H_

#include "J2ObjC_header.h"

@class BCASN1Primitive;
@class BSDataInput;
@class IOSByteArray;

@interface BCASN1 : NSObject

#pragma mark Public

- (instancetype)init;

+ (BCASN1Primitive *)readObjectWithByteArray:(IOSByteArray *)sourceData;

+ (BCASN1Primitive *)readObjectWithByteArray:(IOSByteArray *)sourceData
                                     withInt:(jint)offset
                                     withInt:(jint)len;

+ (BCASN1Primitive *)readObjectWithBSDataInput:(BSDataInput *)dataInput;

@end

J2OBJC_EMPTY_STATIC_INIT(BCASN1)

FOUNDATION_EXPORT BCASN1Primitive *BCASN1_readObjectWithByteArray_(IOSByteArray *sourceData);

FOUNDATION_EXPORT BCASN1Primitive *BCASN1_readObjectWithByteArray_withInt_withInt_(IOSByteArray *sourceData, jint offset, jint len);

FOUNDATION_EXPORT BCASN1Primitive *BCASN1_readObjectWithBSDataInput_(BSDataInput *dataInput);

FOUNDATION_EXPORT void BCASN1_init(BCASN1 *self);

FOUNDATION_EXPORT BCASN1 *new_BCASN1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(BCASN1)

typedef BCASN1 ImActorModelCryptoAsn1ASN1;

#endif // _BCASN1_H_
