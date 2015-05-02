//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/CryptoProvider.java
//

#ifndef _AMCryptoProvider_H_
#define _AMCryptoProvider_H_

#include "J2ObjC_header.h"

@class AMCryptoKeyPair;
@class IOSByteArray;
@protocol AMAesCipher;
@protocol AMRsaCipher;
@protocol AMRsaEncryptCipher;

@protocol AMCryptoProvider < NSObject, JavaObject >

- (AMCryptoKeyPair *)generateRSA1024KeyPair;

- (id<AMRsaEncryptCipher>)createRSAOAEPSHA1CipherWithByteArray:(IOSByteArray *)publicKey;

- (id<AMRsaCipher>)createRSAOAEPSHA1CipherWithByteArray:(IOSByteArray *)publicKey
                                          withByteArray:(IOSByteArray *)privateKey;

- (id<AMAesCipher>)createAESCBCPKS7CipherWithByteArray:(IOSByteArray *)key
                                         withByteArray:(IOSByteArray *)iv;

- (IOSByteArray *)MD5WithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)SHA256WithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)SHA512WithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)randomBytesWithInt:(jint)length;

- (jint)randomIntWithInt:(jint)maxValue;

@end

J2OBJC_EMPTY_STATIC_INIT(AMCryptoProvider)

J2OBJC_TYPE_LITERAL_HEADER(AMCryptoProvider)

#define ImActorModelCryptoProvider AMCryptoProvider

#endif // _AMCryptoProvider_H_
