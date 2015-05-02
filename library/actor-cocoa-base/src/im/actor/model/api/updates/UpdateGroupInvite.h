//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateGroupInvite.java
//

#ifndef _ImActorModelApiUpdatesUpdateGroupInvite_H_
#define _ImActorModelApiUpdatesUpdateGroupInvite_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define ImActorModelApiUpdatesUpdateGroupInvite_HEADER 36

@interface ImActorModelApiUpdatesUpdateGroupInvite : ImActorModelNetworkParserUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)inviteUid
                   withLong:(jlong)date;

+ (ImActorModelApiUpdatesUpdateGroupInvite *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getGroupId;

- (jint)getHeaderKey;

- (jint)getInviteUid;

- (jlong)getRid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateGroupInvite)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateGroupInvite, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateGroupInvite *ImActorModelApiUpdatesUpdateGroupInvite_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiUpdatesUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(ImActorModelApiUpdatesUpdateGroupInvite *self, jint groupId, jlong rid, jint inviteUid, jlong date);

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateGroupInvite *new_ImActorModelApiUpdatesUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(jint groupId, jlong rid, jint inviteUid, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiUpdatesUpdateGroupInvite_init(ImActorModelApiUpdatesUpdateGroupInvite *self);

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateGroupInvite *new_ImActorModelApiUpdatesUpdateGroupInvite_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateGroupInvite)

#endif // _ImActorModelApiUpdatesUpdateGroupInvite_H_
