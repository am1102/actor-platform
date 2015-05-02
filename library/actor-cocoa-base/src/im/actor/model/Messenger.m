//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/Messenger.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/Messenger.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/AuthState.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/CryptoProvider.h"
#include "im/actor/model/DispatcherProvider.h"
#include "im/actor/model/LogProvider.h"
#include "im/actor/model/MainThreadProvider.h"
#include "im/actor/model/Messenger.h"
#include "im/actor/model/ThreadingProvider.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/crypto/CryptoUtils.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Environment.h"
#include "im/actor/model/droidkit/engine/ListEngine.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/files/FileSystemReference.h"
#include "im/actor/model/i18n/I18nEngine.h"
#include "im/actor/model/log/Log.h"
#include "im/actor/model/modules/AppStateModule.h"
#include "im/actor/model/modules/Auth.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Groups.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/Presence.h"
#include "im/actor/model/modules/Profile.h"
#include "im/actor/model/modules/Pushes.h"
#include "im/actor/model/modules/Security.h"
#include "im/actor/model/modules/Settings.h"
#include "im/actor/model/modules/Typing.h"
#include "im/actor/model/modules/Updates.h"
#include "im/actor/model/modules/Users.h"
#include "im/actor/model/mvvm/MVVMCollection.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/util/ActorTrace.h"
#include "im/actor/model/util/Timing.h"
#include "im/actor/model/viewmodel/AppStateVM.h"
#include "im/actor/model/viewmodel/FileCallback.h"
#include "im/actor/model/viewmodel/FileVM.h"
#include "im/actor/model/viewmodel/FileVMCallback.h"
#include "im/actor/model/viewmodel/GroupAvatarVM.h"
#include "im/actor/model/viewmodel/GroupTypingVM.h"
#include "im/actor/model/viewmodel/OwnAvatarVM.h"
#include "im/actor/model/viewmodel/UploadFileCallback.h"
#include "im/actor/model/viewmodel/UploadFileVM.h"
#include "im/actor/model/viewmodel/UploadFileVMCallback.h"
#include "im/actor/model/viewmodel/UserTypingVM.h"


#line 43
@implementation AMMessenger


#line 52
- (instancetype)initWithAMConfiguration:(AMConfiguration *)configuration {
  AMMessenger_initWithAMConfiguration_(self, configuration);
  return self;
}


#line 97
- (AMAuthStateEnum *)getAuthState {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) getAuthState];
}


#line 106
- (jboolean)isLoggedIn {
  return [self getAuthState] == AMAuthStateEnum_get_LOGGED_IN();
}


#line 116
- (id<AMCommand>)requestSmsWithLong:(jlong)phone {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) requestSmsWithLong:phone];
}


#line 126
- (id<AMCommand>)sendCodeWithInt:(jint)code {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) sendCodeWithInt:code];
}


#line 138
- (id<AMCommand>)signUpWithNSString:(NSString *)name
                       withNSString:(NSString *)avatarPath
                        withBoolean:(jboolean)isSilent {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) signUpWithNSString:name withNSString:avatarPath withBoolean:isSilent];
}


#line 148
- (jlong)getAuthPhone {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) getPhone];
}


#line 155
- (void)resetAuth {
  [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) resetAuth];
}


#line 168
- (AMAppStateVM *)getAppState {
  return [((ImActorModelModulesAppStateModule *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAppStateModule])) getAppStateVM];
}


#line 177
- (jint)myUid {
  return [((ImActorModelModulesAuth *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getAuthModule])) myUid];
}


#line 191
- (AMMVVMCollection *)getUsers {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getUsersModule] == nil) {
    return nil;
  }
  return [((ImActorModelModulesUsers *) nil_chk([modules_ getUsersModule])) getUsersCollection];
}


#line 203
- (AMMVVMCollection *)getGroups {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule] == nil) {
    return nil;
  }
  return [((ImActorModelModulesGroups *) nil_chk([modules_ getGroupsModule])) getGroupsCollection];
}


#line 216
- (AMValueModel *)getTypingWithInt:(jint)uid {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getTypingModule] == nil) {
    return nil;
  }
  return [((AMUserTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([modules_ getTypingModule])) getTypingWithInt:uid])) getTyping];
}


#line 229
- (AMValueModel *)getGroupTypingWithInt:(jint)gid {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getTypingModule] == nil) {
    return nil;
  }
  return [((AMGroupTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([modules_ getTypingModule])) getGroupTypingWithInt:gid])) getActive];
}


#line 242
- (AMOwnAvatarVM *)getOwnAvatarVM {
  return [((ImActorModelModulesProfile *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getProfile])) getOwnAvatarVM];
}


#line 253
- (AMGroupAvatarVM *)getGroupAvatarVMWithInt:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) getAvatarVMWithInt:gid];
}


#line 265
- (void)onAppVisible {
  [((ImActorModelModulesModules *) nil_chk(modules_)) onAppVisible];
}


#line 272
- (void)onAppHidden {
  [((ImActorModelModulesModules *) nil_chk(modules_)) onAppHidden];
}


#line 279
- (void)onDialogsOpen {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getNotifications] != nil) {
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onDialogsOpen];
  }
}


#line 288
- (void)onDialogsClosed {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getNotifications] != nil) {
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onDialogsClosed];
  }
}


#line 299
- (void)onConversationOpen:(AMPeer *)peer {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getPresenceModule] != nil) {
    [((ImActorModelModulesPresence *) nil_chk([modules_ getPresenceModule])) subscribeWithAMPeer:peer];
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onConversationOpenWithAMPeer:peer];
    [((ImActorModelModulesMessages *) nil_chk([modules_ getMessagesModule])) onConversationOpenWithAMPeer:peer];
  }
}


#line 312
- (void)onConversationClosed:(AMPeer *)peer {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getPresenceModule] != nil) {
    [((ImActorModelModulesNotifications *) nil_chk([modules_ getNotifications])) onConversationCloseWithAMPeer:peer];
  }
}


#line 323
- (void)onProfileOpen:(jint)uid {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getPresenceModule] != nil) {
    [((ImActorModelModulesPresence *) nil_chk([modules_ getPresenceModule])) subscribeWithAMPeer:AMPeer_userWithInt_(uid)];
  }
}


#line 334
- (void)onProfileClosed:(jint)uid {
}


#line 344
- (void)onTyping:(AMPeer *)peer {
  [((ImActorModelModulesTyping *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getTypingModule])) onTypingWithAMPeer:peer];
}


#line 356
- (void)onPhoneBookChanged {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule] != nil) {
    [((ImActorModelModulesContacts *) nil_chk([modules_ getContactsModule])) onPhoneBookChanged];
  }
}


#line 365
- (void)onNetworkChanged {
}


#line 374
- (void)onPushReceivedWithInt:(jint)seq {
  if ([((ImActorModelModulesModules *) nil_chk(modules_)) getUpdatesModule] != nil) {
    [((ImActorModelModulesUpdates *) nil_chk([modules_ getUpdatesModule])) onPushReceivedWithInt:seq];
  }
}


#line 390
- (void)sendMessage:(AMPeer *)peer
           withText:(NSString *)text {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendMessageWithAMPeer:peer withNSString:text];
}


#line 404
- (void)sendPhotoWithAMPeer:(AMPeer *)peer
               withNSString:(NSString *)fileName
                    withInt:(jint)w
                    withInt:(jint)h
            withAMFastThumb:(AMFastThumb *)fastThumb
  withAMFileSystemReference:(id<AMFileSystemReference>)fileSystemReference {
  
#line 407
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendPhotoWithAMPeer:peer withNSString:fileName withInt:w withInt:h withAMFastThumb:fastThumb withAMFileSystemReference:fileSystemReference];
}


#line 421
- (void)sendVideoWithAMPeer:(AMPeer *)peer
               withNSString:(NSString *)fileName
                    withInt:(jint)w
                    withInt:(jint)h
                    withInt:(jint)duration
            withAMFastThumb:(AMFastThumb *)fastThumb
  withAMFileSystemReference:(id<AMFileSystemReference>)fileSystemReference {
  
#line 423
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendVideoWithAMPeer:peer withNSString:fileName withInt:w withInt:h withInt:duration withAMFastThumb:fastThumb withAMFileSystemReference:fileSystemReference];
}


#line 434
- (void)sendDocumentWithAMPeer:(AMPeer *)peer
                  withNSString:(NSString *)fileName
                  withNSString:(NSString *)mimeType
     withAMFileSystemReference:(id<AMFileSystemReference>)fileSystemReference {
  [self sendDocumentWithAMPeer:peer withNSString:fileName withNSString:mimeType withAMFileSystemReference:fileSystemReference withAMFastThumb:nil];
}


#line 447
- (void)sendDocumentWithAMPeer:(AMPeer *)peer
                  withNSString:(NSString *)fileName
                  withNSString:(NSString *)mimeType
     withAMFileSystemReference:(id<AMFileSystemReference>)fileSystemReference
               withAMFastThumb:(AMFastThumb *)fastThumb {
  
#line 449
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) sendDocumentWithAMPeer:peer withNSString:fileName withNSString:mimeType withAMFastThumb:fastThumb withAMFileSystemReference:fileSystemReference];
}


#line 452
- (id<DKListEngine>)getMediaWithAMPeer:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) getMediaEngineWithAMPeer:peer];
}


#line 462
- (void)deleteMessagesWithAMPeer:(AMPeer *)peer
                   withLongArray:(IOSLongArray *)rids {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) deleteMessagesWithAMPeer:peer withLongArray:rids];
}


#line 472
- (id<AMCommand>)deleteChatWithAMPeer:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) deleteChatWithAMPeer:peer];
}


#line 482
- (id<AMCommand>)clearChatWithAMPeer:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) clearChatWithAMPeer:peer];
}


#line 492
- (void)saveDraft:(AMPeer *)peer
         withText:(NSString *)draft {
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) saveDraftWithAMPeer:peer withNSString:draft];
}


#line 502
- (NSString *)loadDraft:(AMPeer *)peer {
  return [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getMessagesModule])) loadDraftWithAMPeer:peer];
}


#line 517
- (id<AMCommand>)editMyNameWithNSString:(NSString *)newName {
  return [((ImActorModelModulesUsers *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getUsersModule])) editMyNameWithNSString:newName];
}


#line 526
- (void)changeAvatarWithNSString:(NSString *)descriptor {
  [((ImActorModelModulesProfile *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getProfile])) changeAvatarWithNSString:descriptor];
}


#line 533
- (void)removeAvatar {
  [((ImActorModelModulesProfile *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getProfile])) removeAvatar];
}


#line 544
- (id<AMCommand>)editNameWithInt:(jint)uid
                    withNSString:(NSString *)name {
  return [((ImActorModelModulesUsers *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getUsersModule])) editNameWithInt:uid withNSString:name];
}


#line 555
- (id<AMCommand>)editGroupTitleWithInt:(jint)gid
                          withNSString:(NSString *)title {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) editTitleWithInt:gid withNSString:title];
}


#line 565
- (void)changeGroupAvatarWithInt:(jint)gid
                    withNSString:(NSString *)descriptor {
  [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) changeAvatarWithInt:gid withNSString:descriptor];
}


#line 574
- (void)removeGroupAvatarWithInt:(jint)gid {
  [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) removeAvatarWithInt:gid];
}


#line 591
- (id<AMCommand>)createGroupWithNSString:(NSString *)title
                            withNSString:(NSString *)avatarDescriptor
                            withIntArray:(IOSIntArray *)uids {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) createGroupWithNSString:title withNSString:avatarDescriptor withIntArray:uids];
}


#line 602
- (id<AMCommand>)leaveGroupWithInt:(jint)gid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) leaveGroupWithInt:gid];
}


#line 613
- (id<AMCommand>)addMemberToGroupWithInt:(jint)gid
                                 withInt:(jint)uid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) addMemberToGroupWithInt:gid withInt:uid];
}


#line 624
- (id<AMCommand>)kickMemberWithInt:(jint)gid
                           withInt:(jint)uid {
  return [((ImActorModelModulesGroups *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getGroupsModule])) kickMemberWithInt:gid withInt:uid];
}


#line 638
- (id<AMCommand>)removeContactWithInt:(jint)uid {
  return [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule])) removeContactWithInt:uid];
}


#line 648
- (id<AMCommand>)addContactWithInt:(jint)uid {
  return [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule])) addContactWithInt:uid];
}


#line 658
- (id<AMCommand>)findUsersWithNSString:(NSString *)query {
  return [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getContactsModule])) findUsersWithNSString:query];
}


#line 671
- (AMFileVM *)bindFileWithAMFileReference:(AMFileReference *)fileReference
                              withBoolean:(jboolean)isAutoStart
                     withAMFileVMCallback:(id<AMFileVMCallback>)callback {
  return new_AMFileVM_initWithAMFileReference_withBoolean_withImActorModelModulesModules_withAMFileVMCallback_(fileReference, isAutoStart, modules_, callback);
}


#line 682
- (AMUploadFileVM *)bindUploadWithLong:(jlong)rid
            withAMUploadFileVMCallback:(id<AMUploadFileVMCallback>)callback {
  return new_AMUploadFileVM_initWithLong_withAMUploadFileVMCallback_withImActorModelModulesModules_(rid, callback, modules_);
}


#line 693
- (void)bindRawFileWith:(AMFileReference *)fileReference
          withAutoStart:(jboolean)isAutoStart
           withCallback:(id<AMFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) bindFileWithAMFileReference:fileReference withBoolean:isAutoStart withAMFileCallback:callback];
}


#line 704
- (void)unbindRawFile:(jlong)fileId
       withAutoCancel:(jboolean)isAutoCancel
         withCallback:(id<AMFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) unbindFileWithLong:fileId withAMFileCallback:callback withBoolean:isAutoCancel];
}


#line 714
- (void)bindRawUploadFile:(jlong)rid
             withCallback:(id<AMUploadFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) bindUploadFileWithLong:rid withAMUploadFileCallback:callback];
}


#line 724
- (void)unbindRawUploadFile:(jlong)rid
               withCallback:(id<AMUploadFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) unbindUploadFileWithLong:rid withAMUploadFileCallback:callback];
}


#line 734
- (void)requestStateWithLong:(jlong)fileId
          withAMFileCallback:(id<AMFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) requestStateWithLong:fileId withAMFileCallback:callback];
}


#line 744
- (void)requestUploadStateWithLong:(jlong)rid
          withAMUploadFileCallback:(id<AMUploadFileCallback>)callback {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) requestUploadStateWithLong:rid withAMUploadFileCallback:callback];
}


#line 753
- (void)cancelDownloadingWithLong:(jlong)fileId {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) cancelDownloadingWithLong:fileId];
}


#line 762
- (void)startDownloadingWithAMFileReference:(AMFileReference *)location {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) startDownloadingWithAMFileReference:location];
}


#line 771
- (void)resumeUploadWithLong:(jlong)rid {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) resumeUploadWithLong:rid];
}


#line 780
- (void)pauseUploadWithLong:(jlong)rid {
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) pauseUploadWithLong:rid];
}


#line 791
- (NSString *)getDownloadedDescriptorWithLong:(jlong)fileId {
  return [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) getDownloadedDescriptorWithLong:fileId];
}


#line 804
- (jboolean)isConversationTonesEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isConversationTonesEnabled];
}


#line 813
- (void)changeConversationTonesEnabledWithBoolean:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeConversationTonesEnabledWithBoolean:val];
}


#line 822
- (jboolean)isNotificationSoundEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isNotificationSoundEnabled];
}


#line 831
- (void)changeNotificationSoundEnabledWithBoolean:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationSoundEnabledWithBoolean:val];
}


#line 840
- (jboolean)isNotificationVibrationEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isVibrationEnabled];
}


#line 849
- (void)changeNotificationVibrationEnabledWithBoolean:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationVibrationEnabledWithBoolean:val];
}


#line 858
- (jboolean)isShowNotificationsText {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isShowNotificationsText];
}


#line 867
- (void)changeShowNotificationTextEnabledWithBoolean:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeShowNotificationTextEnabledWithBoolean:val];
}


#line 876
- (jboolean)isSendByEnterEnabled {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isSendByEnterEnabled];
}


#line 885
- (void)changeSendByEnterWithBoolean:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeSendByEnterWithBoolean:val];
}


#line 895
- (jboolean)isNotificationsEnabledWithAMPeer:(AMPeer *)peer {
  return [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) isNotificationsEnabledWithAMPeer:peer];
}


#line 905
- (void)changeNotificationsEnabledWithAMPeer:(AMPeer *)peer
                                 withBoolean:(jboolean)val {
  [((ImActorModelModulesSettings *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSettings])) changeNotificationsEnabledWithAMPeer:peer withBoolean:val];
}


#line 918
- (id<AMCommand>)loadSessions {
  return [((ImActorModelModulesSecurity *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSecurity])) loadSessions];
}


#line 927
- (id<AMCommand>)terminateAllSessions {
  return [((ImActorModelModulesSecurity *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSecurity])) terminateAllSessions];
}


#line 937
- (id<AMCommand>)terminateSessionWithInt:(jint)id_ {
  return [((ImActorModelModulesSecurity *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getSecurity])) terminateSessionWithInt:id_];
}


#line 950
- (AMI18nEngine *)getFormatter {
  return [((ImActorModelModulesModules *) nil_chk(modules_)) getI18nEngine];
}


#line 960
- (void)registerGooglePushWithLong:(jlong)projectId
                      withNSString:(NSString *)token {
  [((ImActorModelModulesPushes *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getPushes])) registerGooglePushWithLong:projectId withNSString:token];
}


#line 970
- (void)registerApplePushWithInt:(jint)apnsId
                    withNSString:(NSString *)token {
  [((ImActorModelModulesPushes *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getPushes])) registerApplePushWithInt:apnsId withNSString:token];
}


#line 979
- (id<DKPreferencesStorage>)getPreferences {
  return [((ImActorModelModulesModules *) nil_chk(modules_)) getPreferences];
}

@end


#line 52
void AMMessenger_initWithAMConfiguration_(AMMessenger *self, AMConfiguration *configuration) {
  (void) NSObject_init(self);
  
#line 57
  AMLog_setLogWithAMLogProvider_([((AMConfiguration *) nil_chk(configuration)) getLog]);
  
#line 59
  DKEnvironment_setThreadingProviderWithAMThreadingProvider_([configuration getThreadingProvider]);
  DKEnvironment_setDispatcherProviderWithAMDispatcherProvider_([configuration getDispatcherProvider]);
  
#line 64
  AMTiming *timing = new_AMTiming_initWithNSString_(@"MESSENGER_INIT");
  
#line 67
  [timing sectionWithNSString:@"Crypto"];
  AMCryptoUtils_init__WithAMCryptoProvider_([configuration getCryptoProvider]);
  
#line 71
  [timing sectionWithNSString:@"MVVM"];
  AMMVVMEngine_init__WithAMMainThreadProvider_([configuration getMainThreadProvider]);
  
#line 75
  [timing sectionWithNSString:@"Actors"];
  [((DKActorSystem *) nil_chk(DKActorSystem_system())) setTraceInterfaceWithDKTraceInterface:new_AMActorTrace_init()];
  [((DKActorSystem *) nil_chk(DKActorSystem_system())) addDispatcherWithNSString:@"db" withInt:1];
  
#line 79
  [timing sectionWithNSString:@"Modules:Create"];
  self->modules_ = new_ImActorModelModulesModules_initWithAMMessenger_withAMConfiguration_(self, configuration);
  
#line 82
  [timing sectionWithNSString:@"Modules:Run"];
  [self->modules_ run];
  
#line 85
  [timing end];
}


#line 52
AMMessenger *new_AMMessenger_initWithAMConfiguration_(AMConfiguration *configuration) {
  AMMessenger *self = [AMMessenger alloc];
  AMMessenger_initWithAMConfiguration_(self, configuration);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMMessenger)
