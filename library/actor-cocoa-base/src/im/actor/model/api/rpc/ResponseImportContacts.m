//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseImportContacts.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/ResponseImportContacts.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseImportContacts.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcResponseImportContacts () {
 @public
  id<JavaUtilList> users_;
  jint seq_;
  IOSByteArray *state_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseImportContacts, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcResponseImportContacts, state_, IOSByteArray *)


#line 20
@implementation ImActorModelApiRpcResponseImportContacts


#line 23
+ (ImActorModelApiRpcResponseImportContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcResponseImportContacts_fromBytesWithByteArray_(data);
}


#line 31
- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                             withInt:(jint)seq
                       withByteArray:(IOSByteArray *)state {
  ImActorModelApiRpcResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(self, users, seq, state);
  return self;
}


#line 37
- (instancetype)init {
  ImActorModelApiRpcResponseImportContacts_init(self);
  return self;
}


#line 41
- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (jint)getSeq {
  return self->seq_;
}

- (IOSByteArray *)getState {
  return self->state_;
}


#line 54
- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_users addWithId:new_ImActorModelApiUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_users];
  self->seq_ = [values getIntWithInt:2];
  self->state_ = [values getBytesWithInt:3];
}


#line 65
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
  [writer writeIntWithInt:2 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:3 withByteArray:self->state_];
}


#line 75
- (NSString *)description {
  NSString *res = @"tuple ImportContacts{";
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 82
- (jint)getHeaderKey {
  return ImActorModelApiRpcResponseImportContacts_HEADER;
}

@end


#line 23
ImActorModelApiRpcResponseImportContacts *ImActorModelApiRpcResponseImportContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcResponseImportContacts_initialize();
  
#line 24
  return ((ImActorModelApiRpcResponseImportContacts *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcResponseImportContacts_init(), data));
}


#line 31
void ImActorModelApiRpcResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(ImActorModelApiRpcResponseImportContacts *self, id<JavaUtilList> users, jint seq, IOSByteArray *state) {
  (void) ImActorModelNetworkParserResponse_init(self);
  
#line 32
  self->users_ = users;
  self->seq_ = seq;
  self->state_ = state;
}


#line 31
ImActorModelApiRpcResponseImportContacts *new_ImActorModelApiRpcResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(id<JavaUtilList> users, jint seq, IOSByteArray *state) {
  ImActorModelApiRpcResponseImportContacts *self = [ImActorModelApiRpcResponseImportContacts alloc];
  ImActorModelApiRpcResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(self, users, seq, state);
  return self;
}

void ImActorModelApiRpcResponseImportContacts_init(ImActorModelApiRpcResponseImportContacts *self) {
  (void) ImActorModelNetworkParserResponse_init(self);
}


#line 37
ImActorModelApiRpcResponseImportContacts *new_ImActorModelApiRpcResponseImportContacts_init() {
  ImActorModelApiRpcResponseImportContacts *self = [ImActorModelApiRpcResponseImportContacts alloc];
  ImActorModelApiRpcResponseImportContacts_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcResponseImportContacts)
