package im.actor.core.api.parser;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import im.actor.core.api.updates.*;

public class UpdatesParser extends BaseParser<Update> {
    @Override
    public Update read(int type, byte[] payload) throws IOException {
        switch(type) {
            case 16: return UpdateUserAvatarChanged.fromBytes(payload);
            case 32: return UpdateUserNameChanged.fromBytes(payload);
            case 51: return UpdateUserLocalNameChanged.fromBytes(payload);
            case 134: return UpdateUserContactsChanged.fromBytes(payload);
            case 209: return UpdateUserNickChanged.fromBytes(payload);
            case 210: return UpdateUserAboutChanged.fromBytes(payload);
            case 212: return UpdateUserPreferredLanguagesChanged.fromBytes(payload);
            case 216: return UpdateUserTimeZoneChanged.fromBytes(payload);
            case 5: return UpdateContactRegistered.fromBytes(payload);
            case 40: return UpdateContactsAdded.fromBytes(payload);
            case 41: return UpdateContactsRemoved.fromBytes(payload);
            case 55: return UpdateMessage.fromBytes(payload);
            case 162: return UpdateMessageContentChanged.fromBytes(payload);
            case 163: return UpdateMessageDateChanged.fromBytes(payload);
            case 4: return UpdateMessageSent.fromBytes(payload);
            case 54: return UpdateMessageReceived.fromBytes(payload);
            case 19: return UpdateMessageRead.fromBytes(payload);
            case 50: return UpdateMessageReadByMe.fromBytes(payload);
            case 46: return UpdateMessageDelete.fromBytes(payload);
            case 47: return UpdateChatClear.fromBytes(payload);
            case 48: return UpdateChatDelete.fromBytes(payload);
            case 1: return UpdateChatGroupsChanged.fromBytes(payload);
            case 222: return UpdateReactionsUpdate.fromBytes(payload);
            case 36: return UpdateGroupInvite.fromBytes(payload);
            case 21: return UpdateGroupUserInvited.fromBytes(payload);
            case 23: return UpdateGroupUserLeave.fromBytes(payload);
            case 24: return UpdateGroupUserKick.fromBytes(payload);
            case 44: return UpdateGroupMembersUpdate.fromBytes(payload);
            case 38: return UpdateGroupTitleChanged.fromBytes(payload);
            case 213: return UpdateGroupTopicChanged.fromBytes(payload);
            case 214: return UpdateGroupAboutChanged.fromBytes(payload);
            case 39: return UpdateGroupAvatarChanged.fromBytes(payload);
            case 161: return UpdateOwnStickersChanged.fromBytes(payload);
            case 164: return UpdateStickerCollectionsChanged.fromBytes(payload);
            case 165: return UpdateOwnTeamsChanged.fromBytes(payload);
            case 6: return UpdateTyping.fromBytes(payload);
            case 81: return UpdateTypingStop.fromBytes(payload);
            case 7: return UpdateUserOnline.fromBytes(payload);
            case 8: return UpdateUserOffline.fromBytes(payload);
            case 9: return UpdateUserLastSeen.fromBytes(payload);
            case 33: return UpdateGroupOnline.fromBytes(payload);
            case 131: return UpdateParameterChanged.fromBytes(payload);
            case 80: return UpdateRawUpdate.fromBytes(payload);
            case 215: return UpdateCountersChanged.fromBytes(payload);
            case 42: return UpdateConfig.fromBytes(payload);
        }
        throw new IOException();
    }
}
