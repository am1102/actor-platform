//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/Email.java
//

#ifndef _ImActorModelApiEmail_H_
#define _ImActorModelApiEmail_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelApiEmail : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)email
               withNSString:(NSString *)emailTitle;

- (jlong)getAccessHash;

- (NSString *)getEmail;

- (NSString *)getEmailTitle;

- (jint)getId;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiEmail)

FOUNDATION_EXPORT void ImActorModelApiEmail_initWithInt_withLong_withNSString_withNSString_(ImActorModelApiEmail *self, jint id_, jlong accessHash, NSString *email, NSString *emailTitle);

FOUNDATION_EXPORT ImActorModelApiEmail *new_ImActorModelApiEmail_initWithInt_withLong_withNSString_withNSString_(jint id_, jlong accessHash, NSString *email, NSString *emailTitle) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiEmail_init(ImActorModelApiEmail *self);

FOUNDATION_EXPORT ImActorModelApiEmail *new_ImActorModelApiEmail_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiEmail)

#endif // _ImActorModelApiEmail_H_
