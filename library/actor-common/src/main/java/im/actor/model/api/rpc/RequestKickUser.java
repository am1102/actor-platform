/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class RequestKickUser extends Request<ResponseSeqDate> {

    public static final int HEADER = 0x47;
    public static RequestKickUser fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestKickUser(), data);
    }

    private GroupOutPeer groupPeer;
    private long rid;
    private UserOutPeer user;

    public RequestKickUser(GroupOutPeer groupPeer, long rid, UserOutPeer user) {
        this.groupPeer = groupPeer;
        this.rid = rid;
        this.user = user;
    }

    public RequestKickUser() {

    }

    public GroupOutPeer getGroupPeer() {
        return this.groupPeer;
    }

    public long getRid() {
        return this.rid;
    }

    public UserOutPeer getUser() {
        return this.user;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.groupPeer = values.getObj(1, new GroupOutPeer());
        this.rid = values.getLong(4);
        this.user = values.getObj(3, new UserOutPeer());
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.groupPeer == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.groupPeer);
        writer.writeLong(4, this.rid);
        if (this.user == null) {
            throw new IOException();
        }
        writer.writeObject(3, this.user);
    }

    @Override
    public String toString() {
        String res = "rpc KickUser{";
        res += "groupPeer=" + this.groupPeer;
        res += ", rid=" + this.rid;
        res += ", user=" + this.user;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
