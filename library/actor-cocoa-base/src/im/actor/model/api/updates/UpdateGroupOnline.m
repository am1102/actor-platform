//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateGroupOnline.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateGroupOnline.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateGroupOnline () {
 @public
  jint groupId_;
  jint count_;
}

@end

@implementation ImActorModelApiUpdatesUpdateGroupOnline


#line 27
+ (ImActorModelApiUpdatesUpdateGroupOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateGroupOnline_fromBytesWithByteArray_(data);
}


#line 34
- (instancetype)initWithInt:(jint)groupId
                    withInt:(jint)count {
  ImActorModelApiUpdatesUpdateGroupOnline_initWithInt_withInt_(self, groupId, count);
  return self;
}


#line 39
- (instancetype)init {
  ImActorModelApiUpdatesUpdateGroupOnline_init(self);
  return self;
}


#line 43
- (jint)getGroupId {
  return self->groupId_;
}

- (jint)getCount {
  return self->count_;
}


#line 52
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->count_ = [values getIntWithInt:2];
}


#line 58
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeIntWithInt:2 withInt:self->count_];
}


#line 64
- (NSString *)description {
  NSString *res = @"update GroupOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", count=", self->count_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 73
- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateGroupOnline_HEADER;
}

@end


#line 27
ImActorModelApiUpdatesUpdateGroupOnline *ImActorModelApiUpdatesUpdateGroupOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateGroupOnline_initialize();
  
#line 28
  return ((ImActorModelApiUpdatesUpdateGroupOnline *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiUpdatesUpdateGroupOnline_init(), data));
}

void ImActorModelApiUpdatesUpdateGroupOnline_initWithInt_withInt_(ImActorModelApiUpdatesUpdateGroupOnline *self, jint groupId, jint count) {
  (void) ImActorModelNetworkParserUpdate_init(self);
  
#line 35
  self->groupId_ = groupId;
  self->count_ = count;
}


#line 34
ImActorModelApiUpdatesUpdateGroupOnline *new_ImActorModelApiUpdatesUpdateGroupOnline_initWithInt_withInt_(jint groupId, jint count) {
  ImActorModelApiUpdatesUpdateGroupOnline *self = [ImActorModelApiUpdatesUpdateGroupOnline alloc];
  ImActorModelApiUpdatesUpdateGroupOnline_initWithInt_withInt_(self, groupId, count);
  return self;
}


#line 39
void ImActorModelApiUpdatesUpdateGroupOnline_init(ImActorModelApiUpdatesUpdateGroupOnline *self) {
  (void) ImActorModelNetworkParserUpdate_init(self);
}


#line 39
ImActorModelApiUpdatesUpdateGroupOnline *new_ImActorModelApiUpdatesUpdateGroupOnline_init() {
  ImActorModelApiUpdatesUpdateGroupOnline *self = [ImActorModelApiUpdatesUpdateGroupOnline alloc];
  ImActorModelApiUpdatesUpdateGroupOnline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateGroupOnline)
