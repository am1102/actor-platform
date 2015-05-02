//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Notification.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Notification.java"

#include "J2ObjC_source.h"
#include "im/actor/model/entity/ContentDescription.h"
#include "im/actor/model/entity/Notification.h"
#include "im/actor/model/entity/Peer.h"

@interface AMNotification () {
 @public
  AMPeer *peer_;
  jint sender_;
  AMContentDescription *contentDescription_;
}

@end

J2OBJC_FIELD_SETTER(AMNotification, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(AMNotification, contentDescription_, AMContentDescription *)


#line 6
@implementation AMNotification


#line 11
- (instancetype)initWithAMPeer:(AMPeer *)peer
                       withInt:(jint)sender
      withAMContentDescription:(AMContentDescription *)contentDescription {
  AMNotification_initWithAMPeer_withInt_withAMContentDescription_(self, peer, sender, contentDescription);
  return self;
}


#line 17
- (AMPeer *)getPeer {
  return peer_;
}

- (jint)getSender {
  return sender_;
}

- (AMContentDescription *)getContentDescription {
  return contentDescription_;
}

@end


#line 11
void AMNotification_initWithAMPeer_withInt_withAMContentDescription_(AMNotification *self, AMPeer *peer, jint sender, AMContentDescription *contentDescription) {
  (void) NSObject_init(self);
  
#line 12
  self->peer_ = peer;
  self->sender_ = sender;
  self->contentDescription_ = contentDescription;
}


#line 11
AMNotification *new_AMNotification_initWithAMPeer_withInt_withAMContentDescription_(AMPeer *peer, jint sender, AMContentDescription *contentDescription) {
  AMNotification *self = [AMNotification alloc];
  AMNotification_initWithAMPeer_withInt_withAMContentDescription_(self, peer, sender, contentDescription);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMNotification)
